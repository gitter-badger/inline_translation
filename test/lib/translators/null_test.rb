require 'test_helper'
require 'babbel/translators/base'
require 'babbel/translators/null'

class NullTest < UnitTest
  describe Babbel::Translators::Null do

    let(:translator) { Babbel::Translators::Null.new }

    it "returns ready as true" do
      assert translator.ready?
    end

    it "returns nil as a translation" do
      assert_nil translator.translate("anything")
    end

  end
end