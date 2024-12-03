require_relative "tailwind_form_preview"

class TailwindForm::TextAreaComponentPreview < TailwindForm::Preview
  def default
    render TailwindForm::TextAreaComponent.new(form_builder, nil, nil)
  end

  def with_text
    render TailwindForm::TextAreaComponent.new(form_builder, nil, nil, value: "teste 123 " * 20)
  end
end
