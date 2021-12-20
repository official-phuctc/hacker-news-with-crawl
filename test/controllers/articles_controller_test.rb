require 'test_helper'

class ArticlesControllerTest < ActionDispatch::IntegrationTest
  test "should get articles" do
    get articles_path
    assert_response :success

    articles = assigns(:articles)
    assert_not_equal 0, articles.length
  end

  test "should load more articles" do
    get '/articles/load-more?page=2'
    assert_response :success

    response = JSON.parse(@response.body)
    assert_equal 200, response['status']
    assert_not_equal 0, response['articles'].length
  end
end
