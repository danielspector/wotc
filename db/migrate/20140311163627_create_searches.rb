class CreateSearches < ActiveRecord::Migration
  def change
    create_table :searches do |t|
      t.text :url
      t.text :query1
      t.text :query2

      t.timestamps
    end
  end
end
