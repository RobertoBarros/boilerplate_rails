require_relative "tailwind_form_preview"
class TailwindForm::FlatpickrComponentPreview < TailwindForm::Preview
  def default
    render TailwindForm::FlatpickrComponent.new(form_builder, nil, nil)
  end
end
