module ApplicationHelper
  def translate_attribute(model, attribute, count = 1)
    model.human_attribute_name attribute, count: count
  end

  alias ta translate_attribute
end
