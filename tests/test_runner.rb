require 'minitest/autorun'
Dir.glob('tests/*_test.rb').each { |file| require_relative "../#{file}" }
