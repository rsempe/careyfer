# -*- encoding : utf-8 -*-
class ApplicationController < ActionController::Base
  helper :all
  protect_from_forgery

  ###############
  ### Filters ###
  ###############

  before_filter :set_title
  before_filter :authenticate

  #######################
  ### Private methods ###
  #######################

  private

  def set_title
    @title = "CareyFer - Ferronerie de Jean Paul Carey"
  end

  def authenticate
    if Rails.env.production?
      authenticate_or_request_with_http_basic do |username, password|
        username == "careyfer" && password == "badaboum"
      end
    end
  end
end
