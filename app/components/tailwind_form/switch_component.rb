# frozen_string_literal: true

class TailwindForm::SwitchComponent < ViewComponent::Form::CheckBoxComponent
  def initialize(form, object_name, method_name, checked_value, unchecked_value, options = {})
    options[:data] = {
      action: "switch#toggle",
      switch_target: "checkbox"
    }.merge(options[:data] || {})
    super
  end

  def html_class
    "sr-only"
  end
end
