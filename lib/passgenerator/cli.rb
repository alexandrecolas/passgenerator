require "thor"

module Passgenerator
  class CLI < Thor

    desc "version", "print version number"
    def version
      puts "Passgenerator #{Passgenerator::VERSION}"
    end

  end
end
