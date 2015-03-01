class Recipe < ActiveRecord::Base
	  has_attached_file :image, :styles => { :croppable => 'x400', :medium => "400x400#" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
