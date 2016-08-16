class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  validates_presence_of :name, :message => "Null Post title not allowed"
  validates_length_of :name, :in => 10..100,  :message => "Title length must be 10 to 100 characters."

end
