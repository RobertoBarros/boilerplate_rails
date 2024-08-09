# frozen_string_literal: true

class PagyComponent < ViewComponent::Base
  include Pagy::Frontend

  def initialize(pagy:)
    @pagy = pagy
  end
end
