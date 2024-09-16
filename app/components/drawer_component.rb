# frozen_string_literal: true

class DrawerComponent < ViewComponent::Base
  def initialize(title:, button_text:)
    @title = title
    @button_text = button_text
  end
end
