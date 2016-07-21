# -*- coding: utf-8 -*-
require 'test/unit'
require_relative '../src/directory'
# コードを追加

class DirectoryTest < Test::Unit::TestCase
  def test_constructor
    dir_generator = Directory.new("Ex01")
    assert_equal "Ex01", dir_generator.name
    end
end
