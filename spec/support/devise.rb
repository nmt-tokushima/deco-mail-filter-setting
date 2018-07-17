RSpec.configure do |config|
  config.include Devise::Test::ControllerHelpers, type: :controller
end
# ref. https://github.com/plataformatec/devise/wiki/How-To:-Test-controllers-with-Rails-3-and-4-%28and-RSpec%29#controller-specs
