module ProjectsHelper
  def image_generator(height:, width:)
    "http://placehold.it/#{height}x#{width}"
  end

  def portfolio_image img, type
    if img
      img
    elsif type == "thumb"
      image_generator(height: '200', width: '150')
    else
      image_generator(height: '600', width: '450')
    end
  end
end
