# frozen_string_literal: true

class DrawerComponent < ViewComponent::Base
  include Turbo::FramesHelper # https://github.com/ViewComponent/view_component/issues/1099#issuecomment-996862141

  def initialize(title:, animate: true)
    @title = title
    @animate = animate
  end
end
