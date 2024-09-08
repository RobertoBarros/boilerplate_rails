require_relative "preview"

class TailwindForm::SubmitComponentPreview < TailwindForm::Preview
  def basic
    render TailwindForm::SubmitComponent.new(form_builder, "Enviar")
  end
end
