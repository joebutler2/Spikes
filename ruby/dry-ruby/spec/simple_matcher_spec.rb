require 'rspec'
require 'dry-matcher'

success_case = Dry::Matcher::Case.new(
  match: ->(value) { value.first == :ok },
  resolve: ->(value) { value.last }
)

failure_case = Dry::Matcher::Case.new(
  match: lambda do |value, *pattern|
    if value.first == :error
      pattern.any? ? pattern.include?(value[1]) : true
    end
  end,
  resolve: ->(value) { value.last }
)

matcher = Dry::Matcher.new(success: success_case, failure: failure_case)

describe 'Simple Dry Matcher' do
  # Is this really worth it in Ruby?
  # In Elm (and maybe Haskell) you could do this succinctly with pattern
  # matching and the Result monad.
  # do_something result = 
  #   case result of
  #     Ok -> "It worked!"
  #     Error -> "It failed :/"
  describe 'success' do
    it 'invoke the success block' do
      a_success = [:ok, 'Record saved!']
      result = matcher.call(a_success) do |match|
        match.success do |value|
          %(You succeeded with "#{value}")
        end
        match.failure {}
      end

      expect(result).to eq('You succeeded with "Record saved!"')
    end
  end

  describe 'failure' do
    it 'invoke the failure block' do
      a_success = [:error, :not_found, 'Record not found!']
      result = matcher.call(a_success) do |match|
        match.success {}
        match.failure do |message|
          %(Failed because "#{message}")
        end
      end

      expect(result).to include('Failed because "Record not found!"')
    end

    it 'invokes a specific failure block' do
      a_failure = [:error, :not_found, 'Record not found!']
      result = matcher.call(a_failure) do |match|
        match.success {}
        match.failure :not_found do |message|
          %(Failed because "#{message}")
        end
        match.failure do |_message|
          %(Should not see)
        end
      end

      expect(result).to_not eq('Should not see')
      expect(result).to include('Failed because "Record not found!"')
    end
  end
end
