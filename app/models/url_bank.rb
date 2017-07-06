class UrlBank < ActiveRecord::Base

  def generate
    self.short_url = "http://#{SecureRandom.urlsafe_base64(4)}"
    self.save
    return self  
  end

  def self.get_actual_url(short_url)
    actual_url_obj = where(short_url: short_url).first
    if actual_url_obj
      actual_url_obj.actual_url 
    else
      "Url does not exist."
    end
  end
end
