require 'spec_helper'
describe 'dbserver' do
  context 'with default values for all parameters' do
    it { should contain_class('dbserver') }
  end
end
