import React from 'react';

const Comp = ({ foo }) => {
  return (
    <div id="foo">
      Foo
      {/* Comment */}
      <MyComp className={"my-cls"}></MyComp>
    </div>
  )
}

