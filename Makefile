CXXFLAGS?=
LDFLAGS?=
CXXFLAGS+=$(shell pkg-config fuse --cflags)
LDFLAGS+=$(shell pkg-config fuse --libs)

TARGET=adbfs

all:	$(TARGET)

$(TARGET): adbfs.cpp utils.h
	$(CXX) -o $@ $< $(CXXFLAGS) $(LDFLAGS)

.PHONY: clean

clean:
	rm -rf $(TARGET)
