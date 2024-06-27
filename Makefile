JAVAC = javac
JAVA = java
SOURCES = $(wildcard *.java)
CLASSES = $(SOURCES:.java=.class)
MAIN = Main

.PHONY: all run clean

all: $(CLASSES)

%.class: %.java
	$(JAVAC) $<

run: all
	$(JAVA) $(MAIN)

clean:
	rm -f *.class
