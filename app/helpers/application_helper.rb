module ApplicationHelper
  #Return a title per page basis
  def title
    base_title = "Ruby on Rails Tutorial Sample App"
    if @title.nil?
      base_titile
    else
      "#{base_title} | #{@title}"
    end
  end 
end
