import React from 'react';

var a = 0.1
let n = 0.1
let t = false
const f = true
const F = true
const s = "foo"
const s2 = `one : ${one}`
const s3 = s

let m = 1 + 2 * 4 / 6 - 4
m++

const n: Foo = null
const u: Foo = undefined

const b = () => {}
const B = () => {}
const c = (param) => {}

// TODO Comment
const Comp = ({ foo }) => {
  return <div>Foo</div>
}

class Foo extends Bar {
  static foo() {}

  private bar()

  foo(): string {
    if (this.bar == 'bar') {
      this.bar = "foo"
    }

    if (a === 1 || a !== 2 && b % 3 === 0 && !!foo) {}

    while (true) {}

    return this.n < 0 ? 0 : this.n
  }

  constructor() {
    return super()
  }
}

/**
 * @param foo
 */
function foo() {

}

foo()
foo.call()
foo.apply()

let f = new Foo()

export const struct = {
  foo0: "hello",
  foo1: () => {},
  foo2: function() {},
  foo2: function Name() {},
  foo3() {},
}

export default Foo
