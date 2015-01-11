require 'spec_helper'
describe 'headphones' do

  context 'with defaults for all parameters' do
    it { should contain_class('headphones') }
  end
end
