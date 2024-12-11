# frozen_string_literal: true

class TailwindBuilder < ViewComponent::Form::Builder
  namespace "TailwindForm"

  # Não gerar divs com a classe field_with_errors
  ActionView::Base.field_error_proc = proc { |html_tag, instance| html_tag.html_safe }

  def switch_field(method, options = {})
    render_component(:switch, @object_name, method, true, false, objectify_options(options))
  end

  def flatpickr_field(method, options = {})
    render_component(:flatpickr, @object_name, method, objectify_options(options))
  end

  def search_field(method, options = {})
    render_component(:search_field, @object_name, method, objectify_options(options))
  end
end
