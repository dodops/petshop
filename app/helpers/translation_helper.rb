module TranslationHelper
  def translate_attribute(model, attribute, count = 1)
    model.human_attribute_name attribute, count: count
  end

  alias ta translate_attribute

  def human_enum(model, enum_name, enum_value)
    model_name = model.model_name
    I18n.t("activerecord.attributes.#{model_name.i18n_key}.#{enum_name.to_s.pluralize}.#{enum_value}")
  end

  def translate_boolean(value=true)
    value ? I18n.t('true') : I18n.t('false')
  end

  alias tb translate_boolean
end
