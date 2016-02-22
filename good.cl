class A {
};

Class BB__ inherits A {
};

class Main {
    foo(): Bar { 3 };
    foo(x: Bar): Bar { 3 };
    foo(x: Bar, y: Baz): Bar { 3 };
    
    foo: Bar;
    foo: Bar <- 3;
    
    main(): Bar {{
        a <- 3;
        
        foo.bar();
        foo@Baz.bar();
        
        foo.bar(a, b, if 3 then 4 else 5 fi);
        
        if 3 then 4 else 5 fi;
        
        while 7 loop 5 pool;
        
        let x: Bar <- 3 in 7;
        let x: Bar <- 3, y: Bar <- 4 in 5;
        let x: Bar in 1337;
        let x: Bar, y: Baz, z: Boo <- 4 in 1789;
        let x: Bar <- 3 in x + 1;
        
        case 1 of
            foo: Bar => 4;
            baz: Quux => 7;
        esac;
                
        new Foo;
        
        isvoid 5 + 6;
        
        1 + 2;
        1 - 3;
        3 * 5;
        5 / 3;
        ~0;
        1 < 2;
        1 <= 3;
        1 = 5;
        
        not 9001;
        
        (3);
        
        bazaar;
        1776;
        "hello, world!";
        true;
        false;
        
        3 * ~5 + 1 * (1 - 2) / 3;
        3 + 5 - 1;
    }};
};