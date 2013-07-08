<?php

require_once('./fib.php');

class FibTest extends PHPUnit_Framework_TestCase
{
  public function testFib()
  {
    $fib = new fibClass;
    $r   = $fib->general();
    $this->assertEquals((1.0+sqrt(5))/2, $r);
  }

  public function testFib4()
  {
    $fib = new fibClass;
    $r   = $fib->fib(4);
    $this->assertEquals(3, $r);
  }
  public function testFib5()
  {
    $fib = new fibClass;
    $r   = $fib->fib(5);
    $this->assertEquals(5, $r);
  }
  public function testFib7()
  {
    $fib = new fibClass;
    $r   = $fib->fib(7);
    $this->assertEquals(13, $r);
  }
  public function testFibNull()
  {
    $fib = new fibClass;
    $r   = $fib->fib();
    $this->assertNull($r);
  }
  public function testFibMinus()
  {
    $fib = new fibClass;
    $r   = $fib->fib(-1);
    $this->assertNull($r);
  }
}
