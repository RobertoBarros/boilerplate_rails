require_relative "preview"

class TailwindForm::SwitchComponentPreview < TailwindForm::Preview
  def checked
    render TailwindForm::SwitchComponent.new(form_builder, nil, "switch", "true", "false", checked: true)
  end

  def unchecked
    render TailwindForm::SwitchComponent.new(form_builder, nil, "switch", "true", "false")
  end
end
