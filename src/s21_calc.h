#include <stdio.h>
#include <stdlib.h>
#include <math.h> 
#include <string.h>
#include <check.h>
#include <ctype.h>

#define INIT_SIZE 10
#define MULTIPLIER 2

#define SUCCESS 1
#define FAILURE 0

#define ACCURACY 1e-7

#define STACK_OVERFLOW  -100
#define STACK_UNDERFLOW -101
#define OUT_OF_MEMORY   -102

typedef int T;
typedef struct S21_Stack_tag {
    T *data;
    size_t size;
    size_t top;
} S21_Stack_t;

typedef enum {
  OK,
  INVALID_OPERAND,
  CALC_ERROR,
} stat;


void push(S21_Stack_t *stack, const T value);
T pop(S21_Stack_t *stack);
T peek(const S21_Stack_t *stack);
S21_Stack_t* createStack();
void resize(S21_Stack_t *stack);
void deleteStack(S21_Stack_t **stack);
int isEmpty(S21_Stack_t *stack);
int isEmpty(S21_Stack_t *stack);
int isFull(S21_Stack_t *stack);
int s21_evaluateRPN(char *expression);

int add(int a, int b);
int subtract(int a, int b);
int multiply(int a, int b);
int divide(int a, int b);

int s21_power(int a, int b);

