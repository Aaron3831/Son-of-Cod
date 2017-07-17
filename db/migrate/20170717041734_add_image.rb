class AddImage < ActiveRecord::Migration[5.1]
  def change
    add_attachment :products, :product_img
  end
end
