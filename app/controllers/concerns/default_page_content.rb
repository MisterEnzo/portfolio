module DefaultPageContent
  extend ActiveSupport::Concern

  included do
    before_action :set_page_defaults
  end

  def set_page_defaults
    @page_title = "Enzo's Portfolio Website"
    @seo_keywords = "Enzo Naguiat Portfolio"
  end
end
