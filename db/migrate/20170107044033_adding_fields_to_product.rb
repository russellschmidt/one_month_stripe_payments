class AddingFieldsToProduct < ActiveRecord::Migration[5.0]
  def change
  	add_column :products, :length, :string
  	add_column :products, :author_image_name, :string
  	add_column :products, :author_description, :text
  end
end
