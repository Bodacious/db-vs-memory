class UsersController < ApplicationController
  def memory
    lh_users = users_scope.select(&:left_handed?)
    rh_users = users_scope.select(&:right_handed?)
    render template: "users/index", locals: { lh_users:, rh_users: }
  end

  def db
    lh_users = users_scope.left_handed
    rh_users = users_scope.right_handed
    render template: "users/index", locals: { lh_users:, rh_users: }
  end

  private

  def users_scope
    @users_scope ||= User.order('random()')
  end
end
