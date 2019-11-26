class Survey::Answer < ActiveRecord::Base
  self.table_name = "survey_answers"

  belongs_to :attempt
  belongs_to :option
  belongs_to :question

  validates :option_id, :question_id, presence: true
  validates :option_id, uniqueness: { scope: [:attempt_id, :question_id] }

  after_create :characterize_answer

  def value
    points = (self.option.nil? ? Survey::Option.find(option_id) : self.option).weight
    correct?? points : - points
  end

  def correct?
    self.correct ||= self.option.correct?
  end

  private

  def characterize_answer
    update_attribute(:correct, option.correct?)
  end
end
