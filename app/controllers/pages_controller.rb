class PagesController < ApplicationController
  def home
    @foo = 'bar'
    @title = 'Home'
  end

  def contact
    @title = 'Contact'
  end

  def about
    @title = 'About'
  end

end
