class CreateVideolists < ActiveRecord::Migration
  def change
    create_table :videolists do |t|
      t.string :videoid
      t.string :videoURL
      t.boolean :flag
      t.string :title
      t.string :category
      t.string :author
      t.text :description
      t.datetime :uptime
      t.text :tag

      t.timestamps
    end
  end
end
