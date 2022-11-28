class CreateExercises < ActiveRecord::Migration[7.0]
  def change
    create_table :exercises, id: :uuid do |t|
      t.string :title
      t.string :slug
      t.belongs_to :user, null: false, foreign_key: true, type: :uuid
      t.belongs_to :course, null: false, foreign_key: true, type: :uuid

      t.timestamps
    end
  end
end
