# -*- encoding : utf-8 -*-
module PublicHelper
  def is_active?(page_name)
    "active" if params[:action] == page_name
  end

  def project_pictures
    pictures = Dir.foreach("public/images/projects").inject([]) { |sum, picture| sum << picture }
    pictures.delete_if { |file| File.directory?(file) }
  end
end
