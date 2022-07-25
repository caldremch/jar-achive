
#指定java版本
export JAVA_HOME="$(/usr/libexec/java_home -v 11)"
export javac=$JAVA_HOME/bin/javac
export jar=$JAVA_HOME/bin/jar
export java=$JAVA_HOME/bin/java

rm -rf build
mkdir build
javac -d ./build module-info.java Main.java --add-exports=java.base/sun.security.x509=mysign
pushd build
touch Manifest.txt
echo "Main-Class: Main" >> Manifest.txt
jar cfm my.jar Manifest.txt *.class
java -jar my.jar
popd