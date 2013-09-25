class Question < ActiveRecord::Base
  belongs_to :survey
  attr_accessible :content, :choices_attributes

  has_many :choices
  accepts_nested_attributes_for :choices
end
