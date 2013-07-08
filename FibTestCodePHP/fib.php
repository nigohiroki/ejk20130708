<?php

class fibClass
{
  public function general()
  {
    return $this->fib(50)/$this->fib(49);
  }

  public function fib($n)
  {
    $f[0] = 0;
    $f[1] = 1;
    for($i=2; $i<= $n; $i++){
      $f[$i] = $f[$i-1] + $f[$i-2];
    }
    return $f[$n];
  }
}
