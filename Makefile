.SUFFIXES: .java .class
.java.class:
	javac -cp ./jars/commons-lang3-3.7.jar:./jars/commons-text-1.2.jar:. $<

decFile: decryptFile.class
	echo 'java -cp ./jars/commons-lang3-3.7.jar:./jars/commons-text-1.2.jar:. decryptFile $$*' > decFile
	chmod ug+rx decFile

decString: decryptString.class
	echo 'java -cp ./jars/commons-lang3-3.7.jar:./jars/commons-text-1.2.jar:. decryptString $$*' > decString
	chmod ug+rx decString

decryptFile.class: decryptString.class

clean:
	rm -f *.class
	rm -f decFile
	rm -f decString
