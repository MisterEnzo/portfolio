class Project < ApplicationRecord
  validates_presence_of :title, :body, :main_image, :thumb_image

  after_initialize :set_defaults

  def set_defaults
    self.main_image ||= "http://placehold.it/600x450"
    self.thumb_image ||= "http://placehold.it/400x300"
  end
end
