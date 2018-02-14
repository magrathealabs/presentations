require 'ffi'
require 'benchmark'

class GoLib
  extend FFI::Library
  ffi_lib './go_lib.so'
  attach_function :MyAdd, [:int, :int], :int
  attach_function :MyFib, [:int], :int
end

class RubyLib
  class << self
    def MyAdd(a, b)
      a + b
    end

    def MyFib(n)
      return 0 if n <= 0
      return 1 if n <= 1

      return MyFib(n - 1) + MyFib(n - 2)
    end
  end
end

Benchmark.bm do |x|
  x.report('n+1') do
    5_000_000.times do |n|
      GoLib.MyAdd(1, n)
    end
  end

  x.report('fib') do
    GoLib.MyFib(40)
  end
end


Benchmark.bm do |x|
  x.report('n+1') do
    5_000_000.times do |n|
      RubyLib.MyAdd(1, n)
    end
  end

  x.report('fib') do
    RubyLib.MyFib(40)
  end
end
