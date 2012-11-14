class Image < ActiveRecord::Base
  attr_accessible :url

  attr_accessible :data

  attr_accessible :tags_string

  has_attached_file :data,
    :path => ":rails_root/public/system/:attachment/:id/:style/:filename",
    :url => "/system/:attachment/:id/:style/:filename"
  acts_as_taggable

end
