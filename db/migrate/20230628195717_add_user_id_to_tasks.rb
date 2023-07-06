class AddUserIdToTasks < ActiveRecord::Migration[6.1]
  def change
    add_belongs_to :tasks, :user
  end
end
