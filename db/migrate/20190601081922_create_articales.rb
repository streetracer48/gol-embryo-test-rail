class CreateArticales < ActiveRecord::Migration[5.2]
  def change
    create_table :articales do |t|
      t.string :title
      t.text :despcription

      t.timestamps
    end
  end
end
