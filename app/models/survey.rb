class Survey < ActiveRecord::Base
  attr_accessible :content, :title, :questions_attributes
  validates :content, :presence => true
  validates :title, :presence => true, :uniqueness => true
  validate :has_at_least_one_question?

  has_many :questions
  accepts_nested_attributes_for :questions

  def has_at_least_one_question?
    errors.add(:survey_id, "does not have any questions") unless !self.questions.first.nil?
  end

  # def questions_attributes=(attributes)

  # end
end
