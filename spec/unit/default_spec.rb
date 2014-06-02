require 'unit/spec_helper'

describe 'sprout-hiremaga::default' do
  let(:runner) { ChefSpec::Runner.new }

  it 'converges' do
    runner.converge(described_recipe)
    expect(runner).to include_recipe('sprout-hiremaga')
  end
end
