require File.dirname(__FILE__) + '/../spec_helper'
 
describe 'TwitterSearchTags' do
  dataset :pages
 
  describe '<r:twitter search="twitter" />' do
    
    it 'should render something' do
      tag = '<r:twitter search="twitter" />'
      expected = 'nothing'
      pages(:home).should render(tag).as(expected)
    end 
    
  end
end