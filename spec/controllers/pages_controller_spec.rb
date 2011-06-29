require 'spec_helper'

describe PagesController do
  render_views

  def check_title(expected)
    response.should have_selector("title", content: "Rails Tutorial App | #{expected}")
  end

  @@pages = [
             ['home',    'Home'],
             ['contact', 'Contact'],
             ['about',   'About'],
            ]
  
  @@pages.each do |action, title|
    describe "GET '#{action}'" do
      it "should be successful" do
        get action
        response.should be_success
      end
      it "should have the right title" do
        get action
        check_title(title)
      end
    end
  end

end
