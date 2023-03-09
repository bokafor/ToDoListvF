# == Schema Information
#
# Table name: tasks
#
#  id         :integer          not null, primary key
#  done       :boolean          default(FALSE)
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  todo_id    :integer
#
# Indexes
#
#  index_tasks_on_todo_id  (todo_id)
#
# Foreign Keys
#
#  todo_id  (todo_id => todos.id)
#
class Task < ApplicationRecord
  belongs_to :todo
end
