require "rubygems"
require "test/unit"
require "json"
require "haml"

class HamlTest < Test::Unit::TestCase
  contexts = JSON.parse(File.read(File.dirname(__FILE__) + "/tests.json"))
  contexts.each do |context|
    context[1].each do |name, test|
      define_method("test_spec: #{name} (#{context[0]})") do
        html             = test["html"]
        haml             = test["haml"]
        locals           = Hash[(test["locals"] || {}).map {|x, y| [x.to_sym, y]}]
        options          = Hash[(test["config"] || {}).map {|x, y| [x.to_sym, y]}]
        options[:format] = options[:format].to_sym if options.key?(:format)
        engine           = Haml::Engine.new(test["haml"], options)
        result           = engine.render(Object.new, locals)

        assert_equal html, result.strip
      end
    end
  end
end
