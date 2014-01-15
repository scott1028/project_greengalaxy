class MainController < ApplicationController
  def index
    @siteMessages=SiteMessage.order('created_at desc').limit(10)
  end

  def about
    render :text=>'this is about', :layout => "application"
  end

  def production
    render :text=>'this is production', :layout => "application"
  end

  def contact
    render :text=>'this is contact', :layout => "application"
  end

  def getSiteMessageByID
    @siteMessage=SiteMessage.where(:id=>params[:id])
    render :json=>{:data=>@siteMessage}
  end
end
