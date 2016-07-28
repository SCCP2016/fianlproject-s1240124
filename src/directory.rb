# -*- coding: utf-8 -*-
class Directory
  # 仕様を見てコードを追加
  attr_reader :name

  # 仕様を見てコードを追加
  def initialize(name)
    @name = name
  end

  def ==(target)
    @name == target.name
  end

  # メソッドの中身のコードを追加
  def make
    Dir.mkdir(@name, 0700)
  end
end
