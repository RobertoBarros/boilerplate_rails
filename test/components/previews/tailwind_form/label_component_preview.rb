require_relative "tailwind_form_preview"
class TailwindForm::LabelComponentPreview < TailwindForm::Preview
  def basic
    render TailwindForm::LabelComponent.new(form_builder, nil, "teste")
  end
end
