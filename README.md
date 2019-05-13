# jscodeshift-docs
A Reference Guide for writing JS Codemods

## babel-core

### Noop

#### From
```js
j.noop()
```

#### To
```js
```

### DoExpression

#### From
```js
j.doExpression([])
```

#### To
```js
do {
}
```

### Super

#### From
```js
j.super()
```

#### To
```js
super
```



### BindExpression

#### From
```js
j.bindExpression()
```

#### To
```js
```



### Decorator

#### From
```js
j.decorator()
```

#### To
```js
```



### Property

#### From
```js
j.property()
```

#### To
```js
```



### MethodDefinition

#### From
```js
j.methodDefinition()
```

#### To
```js
```



### MetaProperty

#### From
```js
j.metaProperty()
```

#### To
```js
```



### ParenthesizedExpression

#### From
```js
const parenExp = j.expressionStatement(
    j.parenthesizedExpression(j.callExpression(j.identifier("foo"), []))
);
```

#### To
```js
(foo());
```



### ImportSpecifier

#### From
```js
const j = api.jscodeshift;
const body = root.get().value.program.body;

const barImport = j.importDeclaration(
    [j.importSpecifier(j.identifier('foo'),j.identifier('bar'))],
    j.literal('lib')
    );

const fooImport = j.importDeclaration(
    [j.importSpecifier(j.identifier('foo'))],
    j.literal('lib')
    );

body.unshift(barImport);
body.unshift(fooImport);

```

#### To
```js
import { foo as bar } from "lib";
import { foo } from "lib";
```



### ImportDefaultSpecifier

#### From
```js
const j = api.jscodeshift;
const body = root.get().value.program.body;

const defaultImport = j.importDeclaration(
    [j.importDefaultSpecifier( j.identifier("foo"))],
    j.literal("foo")
);

body.unshift(defaultImport);
```

#### To
```js
import foo from "foo";
```



### ImportNamespaceSpecifier

#### From
```js
j.importNamespaceSpecifier()
```

#### To
```js
```



### ExportDefaultDeclaration

#### From
```js
j.exportDefaultDeclaration()
```

#### To
```js
```



### ExportNamedDeclaration

#### From
```js
j.exportNamedDeclaration()
```

#### To
```js
```



### ExportSpecifier

#### From
```js
j.exportSpecifier()
```

#### To
```js
```



### ExportNamespaceSpecifier

#### From
```js
j.exportNamespaceSpecifier()
```

#### To
```js
```



### ExportDefaultSpecifier

#### From
```js
j.exportDefaultSpecifier()
```

#### To
```js
```



### ExportAllDeclaration

#### From
```js
j.exportAllDeclaration()
```

#### To
```js
```



### CommentBlock

#### From
```js
j.commentBlock()
```

#### To
```js
```



### CommentLine

#### From
```js
j.commentLine()
```

#### To
```js
```



### Directive

#### From
```js
j.directive()
```

#### To
```js
```



### DirectiveLiteral

#### From
```js
j.directiveLiteral()
```

#### To
```js
```



### InterpreterDirective

#### From
```js
j.interpreterDirective()
```

#### To
```js
```



### BlockStatement

#### From
```js
j.blockStatement()
```

#### To
```js
```



### Program

#### From
```js
j.program()
```

#### To
```js
```



### StringLiteral

#### From
```js
j.stringLiteral()
```

#### To
```js
```



### NumericLiteral

#### From
```js
j.numericLiteral()
```

#### To
```js
```



### BigIntLiteral

#### From
```js
j.bigIntLiteral()
```

#### To
```js
```



### NullLiteral

#### From
```js
j.nullLiteral()
```

#### To
```js
null
```



### BooleanLiteral

#### From
```js
j.booleanLiteral(true)
j.booleanLiteral(false)
```

#### To
```js
true
false
```



### RegExpLiteral

#### From
```js
j.regExpLiteral()
```

#### To
```js
```



### ObjectExpression

#### From
```js
j.objectExpression()
```

#### To
```js
```



### ObjectMethod

#### From
```js
j.objectMethod()
```

#### To
```js
```



### ObjectProperty

#### From
```js
j.objectProperty()
```

#### To
```js
```



### ClassBody

#### From
```js
j.classBody()
```

#### To
```js
```



### ClassMethod

#### From
```js
j.classMethod()
```

#### To
```js
```



### ClassPrivateMethod

#### From
```js
j.classPrivateMethod()
```

#### To
```js
```



### ClassPrivateProperty

#### From
```js
j.classPrivateProperty()
```

#### To
```js
```



### PrivateName

#### From
```js
j.privateName()
```

#### To
```js
```



### ObjectPattern

#### From
```js
j.objectPattern()
```

#### To
```js
```



### SpreadProperty

#### From
```js
j.spreadProperty()
```

#### To
```js
```



### RestProperty

#### From
```js
j.restProperty()
```

#### To
```js
```



### ForAwaitStatement

#### From
```js
j.forAwaitStatement()
```

#### To
```js
```



### Import

#### From
```js
j.import()
```

#### To
```js
```


