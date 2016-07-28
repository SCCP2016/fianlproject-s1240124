# -*- coding: utf-8 -*-
require_relative 'command'
# コードを追加
class CommandParser
  attr_reader :argv
  def initialize(argv)
    @argv = argv
  end

  # コードを追加
  def parse
    options = @argv.drop(2)
    optios_hash = Hash[*options]
    Command.new(@argv[0], @argv[1], optios_hash["-h"].nil? ? "ex" : optios_hash["-h"], optios_hash["-f"].nil? ? 1 : optios_hash["-f"].to_i, optios_hash["-m"].nil? ? 13 : optios_hash["-m"].to_i)
  end
end
