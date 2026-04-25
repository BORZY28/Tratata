CXX := c++
CXXFLAGS := -std=c++17 -Wall -Wextra -pedantic

TEST_TARGET := test_matrix_gf2_new
TEST_SOURCES := test_matrix_gf2_new.cpp matrix_gf2.cpp gf2.cpp

.PHONY: all clean

all: $(TEST_TARGET)

$(TEST_TARGET): $(TEST_SOURCES)
	$(CXX) $(CXXFLAGS) $(TEST_SOURCES) -o $(TEST_TARGET)

clean:
	rm -f $(TEST_TARGET)
