class CreateJohntodos < ActiveRecord::Migration
  def change
    create_table :johntodos do |t|
      t.string :text
      t.boolean :done

      t.timestamps null: false
    end
  end
end
