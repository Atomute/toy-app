class CreateJusttries < ActiveRecord::Migration[7.0]
  def change
    create_table :justtries do |t|
      t.string :test
      t.string :trying

      t.timestamps
    end
  end
end
