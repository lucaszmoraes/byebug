require 'test_helper'

module Byebug
  #
  # Tests that the old "debugger" kernel method still works. It will be
  # eventually removed.
  #
  class DebuggerAliasTestCase < Minitest::Test
    def test_aliases_debugger_to_byebug
      assert_equal Kernel.method(:byebug), Kernel.method(:debugger)
    end
  end
end
