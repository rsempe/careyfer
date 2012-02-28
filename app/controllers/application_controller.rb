# -*- encoding : utf-8 -*-
class ApplicationController < ActionController::Base
  helper :all
  protect_from_forgery

  before_filter :set_title

  private

  def set_title
    @title = "CareyFer - Ferronerie de Jean Paul Carey"
  end
end
