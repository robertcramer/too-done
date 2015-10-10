class ToDoLists < ActiveRecord::Migration
	def up
		create_table :lists do |t|
			t.belongs_to :user
			t.string :name, null: false
		end
	end
	def down
		drop_table :lists
	end
end