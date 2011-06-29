module ApplicationHelper

  def title
    base_title = 'Rails Tutorial App'
    @title.nil? ? base_title : "#{base_title} | #{@title}"
  end
  
end
