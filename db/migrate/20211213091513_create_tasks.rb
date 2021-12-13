class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.string :title
      t.datetime :completed_at
      t.belongs_to :project, null: false, foreign_key: true

      t.timestamps
    end
  end
end
