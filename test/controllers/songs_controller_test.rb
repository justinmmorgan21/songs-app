require "test_helper"

class SongsControllerTest < ActionDispatch::IntegrationTest
  test "index" do
    get "/songs.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Song.count, data.length

  end

  test "create" do
    assert_difference "Song.count", 1 do
      post "/songs.json", params: {name: "test", album: "test", artist: "test", year: 1999}
      assert_response 200
    end
  end

  test "show" do
    get "/songs/#{Song.first.id}.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal ["id", "title", "album", "artist", "year"], data.keys
  end

  test "update" do
    patch "/songs/#{Song.first.id}.json", params: {title: "new one"}
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Song.first.title, "new one"
  end

  test "destroy" do
    assert_difference "Song.count", -1 do
      delete "/songs/#{Song.first.id}.json"
      assert_response 200
    end
  end
end
