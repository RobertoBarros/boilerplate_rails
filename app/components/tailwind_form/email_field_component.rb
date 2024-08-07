# frozen_string_literal: true

class TailwindForm::EmailFieldComponent < ViewComponent::Form::EmailFieldComponent
  def html_class
    base_classes = "block w-full rounded-md border-0 py-1.5 ring-1 ring-inset sm:text-sm sm:leading-6"

    if method_errors?
      "#{base_classes} pr-10 text-red-900 ring-red-300 placeholder:text-red-300 focus:ring-2 focus:ring-red-500"
    else
      "#{base_classes} text-gray-900 shadow-sm ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-indigo-600"
    end
  end
end
