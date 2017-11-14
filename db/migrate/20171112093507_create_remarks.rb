class CreateRemarks < ActiveRecord::Migration[5.1]
  def change
    create_table :remarks do |t|
      t.string :name
      t.datetime :posted_at
      t.string :sentence

      t.timestamps
    end
  end
end
