require 'spec_helper'

describe ContiamoEvent do
  ContiamoEvent.configure do |config|
    config.token = '9qKhLWfr6ULiilyrOC6A'
  end

  context 'users' do
    it { expect(ContiamoEvent.user(uid: 123, properties: { name: 'test' })).to eq([200, '']) }
  end
end
