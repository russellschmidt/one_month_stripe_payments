class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
    	t.string 	:title
    	t.string 	:subtitle
    	t.string 	:author
    	t.text 		:description
    	t.string	:sku
    	t.decimal	:price
      t.timestamps
    end
  end
end
