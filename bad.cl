
(*
 *  execute "coolc bad.cl" to see the error messages that the coolc parser
 *  generates
 *
 *  execute "./myparser bad.cl" to see the error messages that your parser
 *  generates
 *)

-- Error: the assignments do not have an expression to the right of '<-'; try to
-- recover from bad features in a class.
class A {
    x: Bar <- ;
    y: Bax <- ;
    z: Bay <- ;
};

class B {
    foo(): Bar {
        case
    };
    
    bar(): Baz {
        case
    };
    
    x: Foo;
    
    -- Error: the assignments do not have an expression to the right of '<-'; try to
    -- recover from issues inside a block.
    main():Bar {{
        x <- ;
        y <- ;
        new Baz;
        x <- ;
        y <- ;
        new Foo;
    }};
};

(* error:  b is not a type identifier *)
Class b inherits A {
};

(* error:  a is not a type identifier *)
Class C inherits a {
};

(* error:  keyword inherits is misspelled *)
Class D inherts A {
};

-- Error: the assignments do not have an expression to the right of '<-'; try to recover
-- from issues inside a binding.
class Foo {
    bar(): Void {{
        let x: Bar <- , y: Bar <- , z: Baz <- in 3;
        let x: Bar <- 3, y: Baz <- , z: Bax <- 3, foo: Boo <- in z;
    }};
}