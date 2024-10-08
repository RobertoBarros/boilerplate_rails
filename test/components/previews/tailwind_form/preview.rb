require "view_component/form/test_helpers"

class TailwindForm::Preview < ViewComponent::Preview
  include ViewComponent::Form::TestHelpers

  protected

  def form_builder(object_name = nil, object = nil, options = {})
    TailwindBuilder.new(object_name, object, template, options)
  end

  def template
    lookup_context = ActionView::LookupContext.new(ActionController::Base.view_paths)

    ActionView::Base.new(lookup_context, {}, ActionController::Base.new)
  end
end
