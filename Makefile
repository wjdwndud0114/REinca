.SUFFIXES: .java .class
.java.class:
	javac -cp ./jars/commons-lang3-3.7.jar:./jars/commons-text-1.2.jar:. $<

decDir: decryptDir.class
	echo 'java -cp ./jars/commons-lang3-3.7.jar:./jars/commons-text-1.2.jar:. decryptDir $$*' > decDir
	chmod ug+rx decDir

decFile: decryptFile.class
	echo 'java -cp ./jars/commons-lang3-3.7.jar:./jars/commons-text-1.2.jar:. decryptFile $$*' > decFile
	chmod ug+rx decFile

decString: decryptString.class
	echo 'java -cp ./jars/commons-lang3-3.7.jar:./jars/commons-text-1.2.jar:. decryptString $$*' > decString
	chmod ug+rx decString

decryptDir.class: decryptFile.class
decryptFile.class: decryptString.class

clean:
	rm -f *.class
	rm -f decFile
	rm -f decString
	rm -f decDir
