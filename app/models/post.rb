class Post < ActiveRecord::Base
  attr_accessible :content, :name, :title, :email, :tags_attributes, :closed

  validates :name,  :presence => true
  validates :title, :presence => true,
                    :length => { :minimum => 5 }
  validates :email, :presence => true, :email => true

  has_many :comments, :dependent => :destroy
  has_many :tags
 
  accepts_nested_attributes_for :tags, :allow_destroy => :true,
    :reject_if => proc { |attrs| attrs.all? { |k, v| v.blank? } }

end
