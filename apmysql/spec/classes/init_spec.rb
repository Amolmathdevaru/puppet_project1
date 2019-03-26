require 'spec_helper'
describe 'apmysql' do
  context 'with default values for all parameters' do
    it { should contain_class('apmysql') }
  end
end
