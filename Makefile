.POSIX:
.SUFFIXES:
.SUFFIXES: .cpp .o

MY_CXX = $$(if [ '$(CXX)' ]; then printf '%s' '$(CXX)'; else printf 'c++'; fi)
MY_CXXFLAGS = $(CXXFLAGS) $$(pkg-config --cflags curlcpp)
MY_LDFLAGS = $(LDFLAGS) $$(pkg-config --libs curlcpp)

.cpp:
	$(MY_CXX) $(MY_CXXFLAGS) -o $@ $< $(MY_LDFLAGS)
.cpp.o:
	$(MY_CXX) $(MY_CXXFLAGS) -c $<

all: curlcpp-pc-test

clean:
	rm -f curlcpp-pc-test curlcpp-pc-test.o

curlcpp-pc-test: curlcpp-pc-test.cpp
