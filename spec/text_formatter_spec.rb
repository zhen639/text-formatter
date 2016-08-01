require_relative '../src/text_formatter'
require 'spec_helper'

RSpec.describe TextFormatter do
  describe '#soft_return' do
    it 'should break down text into lines by width' do
      result = TextFormatter.soft_return(text, 10)
      expect(result).to eq("These is\nan apple I\nwant to\neat!\n")

      result = TextFormatter.soft_return(text, 5)
      expect(result).to eq("These\nis an\napple\nI\nwant\nto\neat!\n")
    end
  end

  let(:text) { 'These is an apple I want to eat!'}
end