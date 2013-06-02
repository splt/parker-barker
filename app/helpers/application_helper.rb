module ApplicationHelper
  def tag_creator(tag)
    raw tag.collect { |post| link_to post.name, post.name.downcase.tr(" ", "_") }.join(", ")
  end
end
