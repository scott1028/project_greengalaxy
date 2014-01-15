class HomeController < ApplicationController
  def index
    @siteMessage=SiteMessage.order('created_at desc').limit(10)
  end
end
