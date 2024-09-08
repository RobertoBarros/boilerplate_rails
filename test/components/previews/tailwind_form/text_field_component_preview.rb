require_relative "preview"

class TailwindForm::TextFieldComponentPreview < TailwindForm::Preview
  def default
    render TailwindForm::TextFieldComponent.new(form_builder, nil, nil)
  end

  def with_text
    render TailwindForm::TextFieldComponent.new(form_builder, nil, nil, value: "teste 123")
  end
end
