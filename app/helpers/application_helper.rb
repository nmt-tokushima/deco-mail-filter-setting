module ApplicationHelper
  def nav_item name, path, html_options = {}
    "<li class=\"nav-item#{active? path}\">#{link_to name, path, html_options}</li>".html_safe
  end

  private

  def active? path
    if path == '/'
      if request.path == '/'
        " active"
      else
        ""
      end
    elsif /^#{path}/ =~ request.path
      " active"
    else
      ""
    end
  end
end
