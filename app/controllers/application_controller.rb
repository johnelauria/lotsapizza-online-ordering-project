class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :time_zone
  include SessionsHelper

  def time_zone
    Time.zone = "Beijing"
  end
end
