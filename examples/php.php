<?php
namespace Iways\TagBundle;

use Symfony\Component\HttpKernel\Bundle\Bundle;

class IwaysTagBundle extends Bundle
{
    public function bar($foo, string $bar) {
        global $variable;
        echo $bar.$variable.$foo;
    }
}

function foo() {
  echo "Foo ${foo}";

}


class Foo {

  public function bar() {

  }

}

  $b = false;
  $b = true;

  $n = 1;
  $n = 1.1;

