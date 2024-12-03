require_relative "tailwind_form_preview"
class TailwindForm::PasswordFieldComponentPreview < TailwindForm::Preview
  def default
    render TailwindForm::PasswordFieldComponent.new(form_builder, nil, nil, value: "123123")
  end
end
