module Boolify
  module Basic
    module Object
      def boolify
        true
      end
    end

    module String
      REGEX = /\A(?:1|t(?:rue)?|y(?:es|y*a+r+)?|aye)\Z/i
      def boolify
        !!(self =~ REGEX)
      end
    end

    module Symbol
      def boolify
        to_s.boolify
      end
    end

    module Numeric
      def boolify
        !(self == 0)
      end
    end

    module NilClass
      def boolify
        false
      end
    end

    module TrueClass
      def boolify
        self
      end
    end

    module FalseClass
      def boolify
        self
      end
    end
  end

  module Enumerable
    def boolify
      !empty?
    end
  end

  def self.apply_modules base, names=nil
    (names||base.constants).each do |name|
      begin
        if klass = Kernel.const_get(name)
          modu = base.const_get(name)
          klass.send(:include, modu)
        end
      rescue NameError
      end
    end
  end
end

Boolify.apply_modules(Boolify::Basic)
[Array,Set,Hash].each {|klass| klass.send(:include, Boolify::Enumerable)}
