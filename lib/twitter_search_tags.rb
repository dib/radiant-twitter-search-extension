require 'time'

module TwitterSearchTags
  include Radiant::Taggable
 
  desc "Prints out results from twitter search" 
  tag "twitter" do |tag|       
    puts tag.attributes["search"]
    ret = ""
    
    if tag.attributes["search"]
      Twitter::Search.new(tag.attributes["search"]).each do |tweet|
        ret << '<ul class="twitterSearchResult">'
        ret << "<li><img src=\"#{tweet["profile_image_url"]}\" /></li>"
        ret << "<li>#{Time.parse(tweet["created_at"])}</li>"
        ret << "<li><a href=\"http://twitter.com/#{tweet["from_user"]}\">#{tweet["from_user"]}</a></li>"
        ret << "<li>#{tweet["text"]}</li>"
        ret << "</ul>"
      end
    end 
    ret
  end
end