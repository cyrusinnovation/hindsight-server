class RetrospectiveController < ApplicationController
  def create
    Retrospective.create(:label => params[:label], :start => params[:start])
    render :json => {}
  end
end
