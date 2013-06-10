module ApplicationHelper
  def tag_creator(tag)
    raw tag.collect { |post| link_to post.name, post.name.downcase.tr(" ", "_") }.join(", ")
  end

  def url_slice(url_object)
  	url_object.url.sub('http://', '').sub('/', '')
  end
end
