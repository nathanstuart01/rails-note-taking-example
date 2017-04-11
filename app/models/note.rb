class Note < ApplicationRecord
  serialize :links, Array
  validates_presence_of :title
end
