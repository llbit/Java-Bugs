# Java Bug Demo

To reproduce the bug:

* with Gradle: `gradle run`
* or, run `JAVA_HOME=somepath ./bug.sh`
* or compile manually and run the class `javabugs.Bug1`.

Reproduced with

* Compiler: `javac 1.8.0_101`, runtime: `java 1.8.0_101-b13`
* Compiler: `javac 9-ea`, runtime: `java 9-ea+151`


## Output

Here is the output when reproducing the bug:

```
Exception in thread "main" java.lang.BootstrapMethodError: java.lang.IllegalAccessError: tried to access class org.extendj.ast.Variable from class javabugs.Bug1
        at javabugs.Bug1.main(Bug1.java:10)
Caused by: java.lang.IllegalAccessError: tried to access class org.extendj.ast.Variable from class javabugs.Bug1
        ... 1 more
```

