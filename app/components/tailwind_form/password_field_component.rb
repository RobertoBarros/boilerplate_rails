# frozen_string_literal: true

class TailwindForm::PasswordFieldComponent < ViewComponent::Form::PasswordFieldComponent
  include TailwindForm::FieldModule

  erb_template TailwindForm::FieldModule.template
end
