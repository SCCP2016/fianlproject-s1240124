# -*- coding: utf-8 -*-
require 'test/unit'
require_relative '../src/dir-repository'
require_relative '../src/directory'
# コードを追加


class DirRepositoryTest < Test::Unit::TestCase
  def test_constructor
    # コードを追加
    dir_generator = DirRepository.new("Prog0", "Ex", 1, 13)
    assert_equal "Prog0", dir_generator.dir_name
    assert_equal "Ex", dir_generator.header
    # コードを追加(他のテスト項目)
    assert_equal 1, dir_generator.format
    assert_equal 13, dir_generator.max

  end

  def test_create_repository
    [1..@max].map{|n| Drectory.new(@header)}
  end

end
