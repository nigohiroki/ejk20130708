class Fib
  def general
    for i in 5..100
      if (fib(i).to_f/fib(i-1).to_f) == (fib(i-1).to_f/fib(i-2).to_f)
        return (fib(i).to_f/fib(i-1).to_f).round(10)
      end
    end
  end

  def fib(n=-1)
    return false if n < 0
    x = Array.new([0,1])
    for i in 2..n
      x[i] = x[i-1] + x[i-2]
    end
    return x[n]
  end
end
