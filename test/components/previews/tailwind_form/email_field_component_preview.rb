require_relative "preview"

class TailwindForm::EmailFieldComponentPreview < TailwindForm::Preview
  def default
    render TailwindForm::EmailFieldComponent.new(form_builder, nil, nil, value: "teste@teste.com")
  end
end
