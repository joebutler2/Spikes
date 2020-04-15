require 'rspec'
require 'dry-auto_inject'
require 'dry-container'

class CustomLogger
  def warn(message)
    "WARN: #{message}"
  end
end

class MainContainer
  extend Dry::Container::Mixin
  register "logger", -> { CustomLogger.new }
end

Import = Dry::AutoInject(MainContainer)

class PlainModel
  include Import['logger']

  def business_logic
    logger.warn("I really shouldn't have to depend on a heavyweight logger.")
  end
end

describe 'Dependency Injection' do
  it 'should be able to automatically load a dependency' do
    model = PlainModel.new
    results = model.business_logic
    expect(results).to include('WARN:')
    expect(results).to include('depend on a heavyweight logger')
  end
end
