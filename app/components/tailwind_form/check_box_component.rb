# frozen_string_literal: true

class TailwindForm::CheckBoxComponent < ViewComponent::Form::CheckBoxComponent
  def html_class
    "h-4 w-4 rounded border-gray-300 text-indigo-600 focus:ring-indigo-600"
  end
end
