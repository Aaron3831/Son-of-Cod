class Product < ActiveRecord::Base
  Paperclip.options[:command_path] = 'C:/Program Files/ImageMagick-6.8.5-Q16'
   has_many :reviews
   has_attached_file :product_img, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
   validates_attachment_content_type :product_img, content_type: /\Aimage\/.*\z/


   validates :name, :presence => true
   validates :price, :presence => true
   validates :description, :presence => true
end
