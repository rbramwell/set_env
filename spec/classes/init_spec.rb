require 'spec_helper'
describe 'set_env' do

  context 'with defaults for all parameters' do
    it { should contain_class('set_env') }
  end
end
