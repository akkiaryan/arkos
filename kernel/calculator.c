#include "calculator.h"
#include "../include/logging.h"

void init_calculator() {
    log_activity("Initializing calculator...");
    // Initialize calculator if needed
}

int add(int a, int b) {
    return a + b;
}

int subtract(int a, int b) {
    return a - b;
}

int multiply(int a, int b) {
    return a * b;
}

int divide(int a, int b) {
    return b != 0 ? a / b : 0;
}