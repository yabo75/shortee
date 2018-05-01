class CreateUrls < ActiveRecord::Migration[5.1]
  def self.up
    create_table :urls do |t|
      #cannot create an empty URL
      t.string :url, :null => false
	  t.timestamps
    end
  end
  def self.down
  	drop_table :urls
  end
end
