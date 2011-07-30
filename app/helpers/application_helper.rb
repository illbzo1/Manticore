module ApplicationHelper
  
  def link_to_unless_current(name, url, options = {})
    if request.request_uri != url
      link_to(name, url, options)
    else
      content_tag('b', name)
    end
  end
end
