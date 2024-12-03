# frozen_string_literal: true

class TailwindForm::TextAreaComponent < ViewComponent::Form::TextAreaComponent
  include TailwindForm::FieldModule

  erb_template TailwindForm::FieldModule.template
end
