require_relative '../../lib/class/class_methods.rb'

describe ClassMethods do
  context "attr_class_reader method" do
    it "creates class method for reader" do
      class A
        extend ClassMethods
        attr_class_reader :x
        def initialize
          @@x += 1
        end
      end
      
      A.new
      A.new
      expect(A.x).to be 2
    end
  end
end
