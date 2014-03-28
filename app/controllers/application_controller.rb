class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :load_business

  def load_business
    @business = Business.first
  end
end
