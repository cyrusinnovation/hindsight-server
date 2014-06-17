class CreateRetrospectives < ActiveRecord::Migration
  def change
    create_table :retrospectives do |t|
      t.string :label
      t.datetime :start

      t.timestamps
    end
  end
end
