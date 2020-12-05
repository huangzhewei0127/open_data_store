class Product < ApplicationRecord
  # mount_uploader :img, ImgUploader
  has_many :orders
  belongs_to :product_category

  def current_img
    if self[:img] =~ /http/
      self[:img]
    else
      'color.png'
    end
  end
end
