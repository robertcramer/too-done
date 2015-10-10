class CreateTasks < ActiveRecord::Migration
	 def up
    create_table :tasks do |t|
    	t.belongs_to :list
      t.string :name, null: false
      t.boolean :complete
      t.datetime :due_date
    end
  end

  def down
    drop_table :tasks
  end
end