# frozen_string_literal: true

class TailwindForm::LabelComponent < ViewComponent::Form::LabelComponent
  def html_class
    "block text-sm font-medium leading-6 text-gray-900"
  end
end
