class CreateBgimages < ActiveRecord::Migration[5.1]
  def change
    create_table :bgimages do |t|
    	t.string :imgname

    	t.timestamps
    end
  end
end
