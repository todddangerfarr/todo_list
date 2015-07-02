class TodoItem < ActiveRecord::Base
  belongs_to :todo_list

  #combining validations for presence & length
  validates :content, presence: true,
                      length: { minimum: 2 }

  #scopes so we can identify if something is complete or incomplete
  scope :complete, -> { where("completed_at is not null") }
  scope :incomplete, -> { where(completed_at: nil) }

  def completed?
    !completed_at.blank?
  end
end
