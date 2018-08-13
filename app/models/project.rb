class Project < ApplicationRecord
  validates_presence_of :title, :body, :main_image, :thumb_image
  include Placeholder

  after_initialize :set_defaults

  def set_defaults
    self.main_image ||= Placeholder.image_generator(height: '600', width: '400')
    self.thumb_image ||= Placeholder.image_generator(height: '400', width: '300')
  end
end
