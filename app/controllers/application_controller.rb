class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :set_user_language

  def hello
    render text: "hello,world!"
  end

  def set_user_language
    I18n.locale = 'es'
  end

end
