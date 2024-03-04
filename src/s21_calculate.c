#include "s21_calc.h"


void push(S21_Stack_t *stack, const T value) {
    stack->data[stack->size] = value;
    stack->size++;
}

T pop(S21_Stack_t *stack) {
    if (stack->size == 0) {
        exit(STACK_UNDERFLOW);
    }
    stack->size--;
    return stack->data[stack->size];
}

T peek(const S21_Stack_t *stack) {
    if (stack->size <= 0) {
        exit(STACK_UNDERFLOW);
    }
    return stack->data[stack->size - 1];
}

S21_Stack_t* createStack()
{
    S21_Stack_t *out = NULL;
    out = malloc(sizeof(S21_Stack_t));
    if (out == NULL)
    {
        exit(OUT_OF_MEMORY);
    }
    out->size = INIT_SIZE;
    out->data = malloc(out->size * sizeof(T));
    if (out->data == NULL)
    {
        free(out);
        exit(OUT_OF_MEMORY);
    }
    out->top = 0;
    return out;
}


void resize(S21_Stack_t *stack) {
    stack->size *= MULTIPLIER;
    stack->data = realloc(stack->data, stack->size * sizeof(T));
    if (stack->data == NULL) {
        exit(STACK_OVERFLOW);
    }
}
void deleteStack(S21_Stack_t **stack) {
    free((*stack)->data);
    free(*stack);
    *stack = NULL;
}


// Пока в исходной строке есть необработанные лексемы, считываем очередную:

// Если лексема:
// - Число - добавляем в строку вывода.
// - Функция или открывающая скобка - помещаем в стек.
// - Разделитель аргументов функции (например, запятая):         
//     - Перекладываем операторы из стека в выходную очередь пока лексемой на вершине стека не станет открывающая скобка. Если в стеке не окажется открывающей скобки - в выражении допущена ошибка.
// - Оператор (O1):
//     - Пока присутствует на вершине стека лексема-оператор (O2) чей приоритет выше приоритета O1, либо при равенстве приоритетов O1 является левоассоциативным:
//         - Перекладываем O2 из стека в выходную очередь.
//     - Помещаем O1 в стек.
// - Закрывающая скобка:
//     - Пока лексема на вершине стека не станет открывающей скобкой, перекладываем лексемы-операторы из стека в выходную очередь.
//     - Удаляем из стека открывающую скобку.
//     - Если лексема на вершине стека — функция, перекладываем её в выходную очередь.
//     - Если стек закончился до того, как была встречена открывающая скобка - в выражении содержится ошибка.

// Если во входной строке больше не осталось лексем:
// - Пока есть операторы в стеке:
//     - Если на вершине стека скобка - в выражении допущена ошибка.
//     - Перекладываем оператор из стека в выходную очередь.

// Конец.
