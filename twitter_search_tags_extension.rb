# Uncomment this if you reference any of your controllers in activate
# require_dependency 'application'

class TwitterSearchTagsExtension < Radiant::Extension
  version "1.0"
  description "Embed twitter searches within your pages"
  url "http://github.com/dib/radiant-twitter-search-extension"
  
  # define_routes do |map|
  #   map.namespace :admin, :member => { :remove => :get } do |admin|
  #     admin.resources :twitter_search
  #   end
  # end
  
  def activate
    # admin.tabs.add "Twitter Search", "/admin/twitter_search", :after => "Layouts", :visibility => [:all]
    Page.send :include, TwitterSearchTags
  end
  
  def deactivate
    # admin.tabs.remove "Twitter Search"
  end
  
end
