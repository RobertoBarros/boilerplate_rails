require_relative "tailwind_form_preview"
class TailwindForm::EmailFieldComponentPreview < TailwindForm::Preview
  def default
    render TailwindForm::EmailFieldComponent.new(form_builder, nil, nil, value: "teste@teste.com")
  end
end
