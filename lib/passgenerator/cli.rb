require "thor"

module Passgenerator
  class CLI < Thor

    desc "version", "print version number"
    def version
      puts "Passgenerator 0.1"
    end

    desc "generate", "generate a new password"
    method_option :size, :type => :numeric, :aliases => "-s", :default => 8
    def generate
      range = [*'0'..'9', *'a'..'z', *'A'..'Z']
      puts Array.new(options[:size]){range.sample}.join
    end

  end
end
