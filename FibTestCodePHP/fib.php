<?php

class fibClass
{
  public function general()
  {
    return $this->fib(30)/$this->fib(29);
  }

  public function fib($n=-1)
  {
    if ($n <= 0) {
      return null;
    }
    $f[0] = 0;
    $f[1] = 1;
    for($i=2; $i<= $n; $i++){
      $f[$i] = $f[$i-1] + $f[$i-2];
    }
    return $f[$n];
  }
}
