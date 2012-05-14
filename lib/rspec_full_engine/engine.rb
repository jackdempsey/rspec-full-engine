module RspecFullEngine
  class Engine < ::Rails::Engine
    # RSpec's default Rails test generators simply don't work with engines (they don't namespace stuff correctly and they don't
    # know how to handle engine route helpers).
    #
    # Nevertheless, you may want to enable them purely for the creation of the
    # correct files, which you can modify after generation to work correctly.
    config.generators do |g|                                                               
      g.test_framework :rspec
      g.integration_tool :rspec
    end
  end
end
