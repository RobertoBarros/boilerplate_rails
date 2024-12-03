require_relative "tailwind_form_preview"
class TailwindForm::SelectComponentPreview < TailwindForm::Preview
  def default
    options = 30.times.map { |i| ["Option #{i + 1}", i + 1] }
    render TailwindForm::SelectComponent.new(form_builder, nil, nil, options, include_blank: "Pesquisar...")
  end
end
