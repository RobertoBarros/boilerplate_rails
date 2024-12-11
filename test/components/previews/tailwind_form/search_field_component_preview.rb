require_relative "tailwind_form_preview"
class TailwindForm::SearchFieldComponentPreview < TailwindForm::Preview
  def default
    render TailwindForm::SearchFieldComponent.new(form_builder, nil, nil)
  end

  def with_text
    render TailwindForm::SearchFieldComponent.new(form_builder, nil, nil, value: "teste 123")
  end
end
