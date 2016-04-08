class OptionController < ApplicationController
    before_create :default_option_weight

  def to_s
    return self.text
  end

  def correct?
    return (self.correct == true)
  end

  private

  def default_option_weight
    self.weight = 1 if correct? && self.weight == 0
  end

end
