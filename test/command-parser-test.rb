# -*- coding: utf-8 -*-
require 'test/unit'
require_relative '../src/command'
require_relative '../src/command-parser'
# コードを追加
class CommandParserTest < Test::Unit::TestCase
  def test_parse
    # コードを追加
    parser = CommandParser.new(["generate", "Prog0", "-h", "Ex", "-f", "2", "-m", "13"])
    expected = Command.new("generate", "Prog0", "Ex", 2, 13)
    assert_equal expected, parser.parse
  end
end
