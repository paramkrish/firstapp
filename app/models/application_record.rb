class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  validates_presence_of :name, :message => "Null Post title not allowed"
  validates_length_of :name, :in => 10..100,  :message => "{{count}} characters not in prescribed limit,  10 to 100 characters are allowed."

end
