class RetrospectiveController < ApplicationController
  skip_before_filter :verify_authenticity_token

  def create
    Retrospective.create(:label => params[:label], :start => params[:start])
    render :json => {}
  end

  def index
    @retrospectives = Retrospective.all.to_json
    render :json => @retrospectives
  end
end
