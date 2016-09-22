class Answer < ActiveRecord::Base
  belongs_to :question
  validates_presence_of :name
  validates_presence_of :description
end
