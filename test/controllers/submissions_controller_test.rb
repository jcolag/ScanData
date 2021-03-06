# Encoding: utf-8
require 'test_helper'

# Submission controller test
class SubmissionsControllerTest < ActionController::TestCase
  setup do
    @submission = submissions(:one)
  end

  test 'should get index' do
    get :index
    assert_response :success
    assert_not_nil assigns(:submissions)
  end

  test 'should get new' do
    get :new
    assert_response :success
  end

  test 'should create submission' do
    assert_difference('Submission.count') do
      post :create,
           submission: { folder: @submission.folder, hash: @submission.hash,
                         height: @submission.height,
                         imageError: @submission.imageError,
                         modified: @submission.modified,
                         name: @submission.name, page: @submission.page,
                         size: @submission.size,
                         submission_id: @submission.submission_id,
                         type: @submission.type,
                         user_id: @submission.user_id,
                         width: @submission.width }
    end

    assert_redirected_to submission_path(assigns(:submission))
  end

  test 'should show submission' do
    get :show, id: @submission
    assert_response :success
  end

  test 'should get edit' do
    get :edit, id: @submission
    assert_response :success
  end

  test 'should update submission' do
    patch :update,
          id: @submission,
          submission: { folder: @submission.folder, hash: @submission.hash,
                        height: @submission.height,
                        imageError: @submission.imageError,
                        modified: @submission.modified,
                        name: @submission.name, page: @submission.page,
                        size: @submission.size,
                        submission_id: @submission.submission_id,
                        type: @submission.type,
                        user_id: @submission.user_id,
                        width: @submission.width }
    assert_redirected_to submission_path(assigns(:submission))
  end

  test 'should destroy submission' do
    assert_difference('Submission.count', -1) do
      delete :destroy, id: @submission
    end

    assert_redirected_to submissions_path
  end
end
