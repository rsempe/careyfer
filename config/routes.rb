module ActionController
  module Resources
    class Resource #:nodoc:
      def path
        @path ||= path_segment.blank? ? path_prefix.to_s : "#{path_prefix}/#{path_segment}"
      end
    end
  end
end

ActionController::Routing::Routes.draw do |map|
  map.connect '/:action.:format', :controller => :public
  map.resources :public, :controller => :public, :as => '', :path_prefix => '',
    :collection => {
      :index => :get,
      :projects => :get,
      :news => :get,
      :workshop => :get
    }
end
