ActiveRecord::Schema.define do
  self.verbose = false

  create_table 'survey_answers', force: true do |t|
    t.integer  'attempt_id'
    t.integer  'question_id'
    t.integer  'option_id'
    t.boolean  'correct'
    t.datetime 'created_at',  null: false
    t.datetime 'updated_at',  null: false
  end

  create_table 'survey_attempts', force: true do |t|
    t.integer 'participant_id'
    t.string  'participant_type'
    t.integer 'survey_id'
    t.integer 'score'
  end

  create_table 'survey_options', force: true do |t|
    t.integer  'question_id'
    t.integer  'weight', default: 0
    t.string   'text'
    t.boolean  'correct'
    t.datetime 'created_at',                 null: false
    t.datetime 'updated_at',                 null: false
  end

  create_table 'survey_questions', force: true do |t|
    t.integer  'survey_id'
    t.string   'text'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'survey_surveys', force: true do |t|
    t.string   'name'
    t.text     'description'
    t.integer  'attempts_number', default: 0
    t.boolean  'finished',        default: false
    t.boolean  'active',          default: false
    t.datetime 'created_at',                         null: false
    t.datetime 'updated_at',                         null: false
  end

  create_table 'users', force: true do |t|
    t.string   'name'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end
end
