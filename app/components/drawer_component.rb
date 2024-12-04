# frozen_string_literal: true

class DrawerComponent < ViewComponent::Base
  def initialize(title:, animate: true)
    @title = title
    @animate = animate
  end
end
