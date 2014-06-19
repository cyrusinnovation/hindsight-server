require 'spec_helper'

describe RetrospectiveController do
  let(:label){"Team Retro"}
  let(:start_date){DateTime.tomorrow}

  describe "#create" do
    it "should create a retrospective using parameters" do
      expect{
        post :create, {label: label, start: start_date}
      }.to change(Retrospective, :count).by(1)

      retro = Retrospective.last
      retro.label.should eq(label)
      retro.start.should eq(start_date)
    end
  end

  describe "#index" do
    let!(:retro) {Retrospective.create(label: label, start: start_date)}

    it "should return a json array of retros with label and start date" do
      get :index
      response.should be_success
      body = JSON.parse(response.body)
      first_retro = body[0]
      first_retro["label"].should == label
      first_retro["start"].should == retro.start.strftime('%Y-%m-%d %H:%M:%S %z')
    end
  end


end