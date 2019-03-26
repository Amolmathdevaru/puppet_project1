require 'spec_helper'
describe 'project1' do
  context 'with default values for all parameters' do
    it { should contain_class('project1') }
  end
end
