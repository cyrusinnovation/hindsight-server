require 'spec_helper'

describe RetrospectiveController do
  it "should create a retrospective using parameters" do
    label = "Team Retro"
    start_date = Date.tomorrow
    expect{
      post :create, {label: label, start: start_date}
    }.to change(Retrospective, :count).by(1)

    retro = Retrospective.last
    retro.label.should eq(label)
    retro.start.should eq(start_date)

  end

end