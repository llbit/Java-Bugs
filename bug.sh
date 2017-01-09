#!/bin/bash
mkdir -p build/classes/main
$JAVA_HOME/bin/javac -version
$JAVA_HOME/bin/javac -d build/classes/main -g \
	src/main/java/org/extendj/ast/Variable.java \
	src/main/java/org/extendj/ast/VarAccess.java \
	src/main/java/javabugs/Bug1.java
$JAVA_HOME/bin/java -version
$JAVA_HOME/bin/java -cp build/classes/main javabugs.Bug1
