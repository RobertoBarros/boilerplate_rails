# frozen_string_literal: true

class TailwindForm::EmailFieldComponent < ViewComponent::Form::EmailFieldComponent
  include TailwindForm::FieldModule

  erb_template TailwindForm::FieldModule.template
end
