class Cuberoot
  def root(n=0)
    return false if n <= 0
    x = Array.new([1])
    for i in 1..100000
      x[i] = x[i-1] - ((x[i-1]**(2) - (n/x[i-1]).to_f).to_f/((2*x[i-1]) + (n/(x[i-1]**(2))).to_f).to_f)
      return x[i].round(10) if x[i].round(10) == x[i-1].round(10)
    end
    return x[100000].round(10)
  end
end
