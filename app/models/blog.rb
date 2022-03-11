class Blog < ApplicationRecord
  belongs_to :category
  has_one_attached :image, :dependent => :destroy # trigger active storage 
end
