class CreateMinis < ActiveRecord::Migration
  def change
    create_table :minis do |t|
      t.text :content

      t.timestamps
    end
  end
end
