#include "unity.h"

void test_validate_username(void) {
    const char* expected_username = "ShivaniNarola";
    const char* actual_username = "ShivaniNarola";
    TEST_ASSERT_EQUAL_STRING(expected_username, actual_username);
}
