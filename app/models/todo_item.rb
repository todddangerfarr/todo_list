class TodoItem < ActiveRecord::Base
  belongs_to :todo_list

  #combining validations for presence & length 
  validates :content, presence: true,
                      length: { minimum: 2 }
end
