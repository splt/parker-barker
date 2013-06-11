module ApplicationHelper
  def tag_creator(tag)
    raw tag.collect { |post| post.name }.join(", ")
  end

  def url_slice(url_object)
  	url_object.url.sub('http://', '').sub('/', '')
  end
end
