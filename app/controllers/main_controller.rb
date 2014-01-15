class MainController < ApplicationController
  def index
    @siteMessages=SiteMessage.order('created_at desc').limit(10)
  end

  def getSiteMessageByID
    @siteMessage=SiteMessage.where(:id=>params[:id])
    render :json=>{:data=>@siteMessage}
  end
end
