# encoding: utf-8

RAILS_GEM_VERSION = '2.3.11' unless defined? RAILS_GEM_VERSION

require File.join(File.dirname(__FILE__), 'boot')

Rails::Initializer.run do |config|
  CONF = {
    :description => 'Careyfer est un site vitrine promouvant le travail en
      ferronerie réalisé par Jean-Paul Carey',
    :keywords => %w(jean-paul carey ferronerie fer careyfer forge manuel)
  }

  config.time_zone = 'UTC'
end