class WebsitesController < ApplicationController
  require 'request_parser'

  inherit_resources

  def create
    @website = current_user.account.websites.new(params[:website])
    super
  end

  def external_call
    pars = RequestParser.perform(request)
    @website = current_user.account.websites.find(params[:id])
    @website.requests.create(pars)
    respond_to do |resp|
      resp.js{ render :js => "//ok" }
    end
  end

end
