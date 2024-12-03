require_relative "tailwind_form_preview"
class TailwindForm::CheckBoxComponentPreview < TailwindForm::Preview
  def checked
    render TailwindForm::CheckBoxComponent.new(form_builder, nil, nil, nil, nil, checked: true)
  end

  def unchecked
    render TailwindForm::CheckBoxComponent.new(form_builder, nil, nil, nil, nil)
  end
end
