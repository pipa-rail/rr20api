require 'test_helper'

class CourseResultControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get course_result_show_url
    assert_response :success
  end

  test "should get history" do
    get course_result_history_url
    assert_response :success
  end

end
