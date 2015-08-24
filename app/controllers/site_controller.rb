class SiteController < ApplicationController

  def index
    @title = "Rails 101"
  end

  def about
    @title = "About Rails 101"
  end

  def privacy
    @title = "Rails 101 - Privacy Notice"
  end

  def terms
    @title = "Rails 101 - Terms of Use"
  end

end
