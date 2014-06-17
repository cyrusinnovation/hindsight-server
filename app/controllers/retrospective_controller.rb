class RetrospectiveController < ApplicationController
  skip_before_filter :verify_authenticity_token

  def create
    Retrospective.create(:label => params[:label], :start => params[:start])
    render :json => {}
  end
end
