require 'spec_helper'

describe Retrospective do
  it "should require a label" do
    Retrospective.new.should have(1).error_on(:label)
  end

  it "should require a start" do
    Retrospective.new.should have(1).error_on(:start)
  end
end