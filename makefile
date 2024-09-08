# SET JAVA_HOME PATH !!!
main=FunctionsJNI
c_filename=ExporterJNI
so_target_name=libfunctions

# Compilar usando o JNI(Java Native Interface).
run:
	# generated a header file by a java file
	javac -h . $(main).java

	# compiling code in c to .so
	gcc -fPIC -I"$(JAVA_HOME)/include" -I"$(JAVA_HOME)/include/linux" -shared -o $(so_target_name).so $(c_filename).c

	@echo "\nSaida do Código ::"
	java -Djava.library.path=. $(main)

clean:
	rm *.class
	rm *.so
	rm *.h
