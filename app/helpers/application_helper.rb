module ApplicationHelper
  def source_helper
    if session[:source]
      greeting = "Thanks for visiting me from #{session[:source]}"
      content_tag(:p, greeting, class: "source-greeting")
    end
  end

  def copyright_generator
    EnzViewTool::Renderer.copyright "Enzo Naguiat", "All Rights Reserved"
  end
end
