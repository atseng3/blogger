class Tag < ActiveRecord::Base
  
  has_many :taggings, :primary_key => :id, :foreign_key => :tag_id, :class_name => 'Tagging'
  has_many :articles, through: :taggings
  
end
