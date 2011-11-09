class ApplicationController < ActionController::Base
  protect_from_forgery

  respond_to :json, :html, :xml
  before_filter :change_locale

protected 
  def change_locale
    @locale = (params[:locale] || session[:locale] || :en)
    I18n.locale = session[:locale] = @locale
  end
end
