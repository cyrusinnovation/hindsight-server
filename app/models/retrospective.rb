class Retrospective < ActiveRecord::Base
  attr_accessible :label, :start
  validates_presence_of :label, :start
end
