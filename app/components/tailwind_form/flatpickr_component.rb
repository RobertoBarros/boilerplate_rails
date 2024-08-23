# frozen_string_literal: true

class TailwindForm::FlatpickrComponent < ViewComponent::Form::TextFieldComponent
  def initialize(form, object_name, method_name, options = {})
    options[:data] = {
      flatpickr_target: "input",
      input: ""
    }.merge(options[:data] || {})
    super
  end

  BASE_CLASSES = "block w-full rounded-none rounded-l-md border-0 py-1.5 ring-1 ring-inset sm:text-sm sm:leading-6"

  def html_class
    if method_errors?
      "#{BASE_CLASSES} pr-10 text-red-900 ring-red-300 placeholder:text-red-300 focus:ring-2 focus:ring-red-500"
    else
      "#{BASE_CLASSES} text-gray-900 shadow-sm ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-indigo-600"
    end
  end
end
