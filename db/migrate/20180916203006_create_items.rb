class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.text :description
      t.belongs_to :list
      t.timestamps
    end
  end
end
