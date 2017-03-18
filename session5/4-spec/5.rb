errors = Module.constants.grep(/error|exception/i)

RSpec.describe 'list_of_errors_and_exceptions' do
  it 'finds weird cased errors and exceptions' do

    %w(Lowercaseerror Lowercaseexception Errorerr Traffickcontrollerror
      Weirdexceptions Exceptionatstart ExceptionAtStart ExcEPtionf
      Abcexceptiondef ).each do |error_to_find|
      # changed between 1.8 and 1.9
      if Module.constants.first.kind_of? Symbol
        error_to_find = error_to_find.to_sym
      end

      Object.const_set error_to_find, Class.new(StandardError)

      expect(list_of_errors_and_exceptions).to include error_to_find
    end
  end

  it 'rejects constants that do not have error or exception in them' do

    %w(WeirdConstant Erroneous WindowsSucks MathIsCool ExeptionalMistake
      ERR0r NoInspirationLeft ).each do |error_not_to_find|

      if Module.constants.first.kind_of? Symbol
        error_not_to_find = error_not_to_find.to_sym
      end

      Object.const_set error_not_to_find, Class.new(StandardError)

      expect(list_of_errors_and_exceptions).not_to include error_not_to_find
    end
  end
end
