# frozen_string_literal: true

class TailwindForm::SearchFieldComponent < ViewComponent::Form::TextFieldComponent
  def html_class
    "block w-full p-4 ps-10 text-sm text-gray-900 border border-gray-300 rounded-lg bg-gray-50 focus:ring-indigo-500 focus:border-indigo-500 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-gray-500 dark:focus:border-indigo-500"
  end
end
