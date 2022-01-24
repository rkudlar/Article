class CreateLinks < ActiveRecord::Migration[6.1]
  def change
    create_table :links do |t|
      t.text :long_link
      t.string :short_link

      t.timestamps
    end
  end
end
