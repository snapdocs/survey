class Survey::Question < ActiveRecord::Base
  self.table_name = "survey_questions"

  belongs_to :survey
  has_many   :options, dependent: :destroy

  accepts_nested_attributes_for :options, allow_destroy: true

  validates :text, presence: true, allow_blank: false

  def correct_options
    return options.correct
  end

  def incorrect_options
    return options.incorrect
  end
end
