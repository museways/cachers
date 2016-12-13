require 'test_helper'

class RecordTest < ActiveSupport::TestCase

  test 'callbacks' do
    user = User.create(name: 'mike')
    user.cache
    key = "users/#{user.name}"
    assert_equal user.id, client.get(key).to_i

    user.update name: 'john'
    old_key = key
    key = "users/#{user.name}"
    user.recache
    assert_nil client.get(old_key)
    assert_equal user.id, client.get(key).to_i

    user.destroy
    user.uncache
    assert_nil client.get(old_key)
    assert_nil client.get(key)
  end

end
