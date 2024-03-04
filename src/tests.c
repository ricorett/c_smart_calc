#include "check.h"
#include "s21_calc.h"

#define NUMBER_OF_FUNCS 5

START_TEST(test_s21_calc_1)
    {
        char *input = "2+2";
        char *expected = "2 2 +";
        // char *actual = s21_calc(input);
        // ck_assert_str_eq(expected, actual);
        // free(actual);
    }
END_TEST

Suite *s21_caclulate(void){
    Suite *s;
    TCase *tc_core;

    s = suite_create("s21_calc");
    tc_core = tcase_create("Core");

    tcase_add_test(tc_core, test_s21_calc_1);
    
    return s;
}

int main(void) {
  int no_failed = 0;
  Suite *s;
  SRunner *runner;

  typedef Suite *(*func)(void);
  func funcs[NUMBER_OF_FUNCS] = {
    //   &s21_create_matrix_test,    &s21_eq_matrix_test,
    //   &s21_sum_matrix_test,       &s21_sub_matrix_test,
    //   &s21_mult_number_test,      &s21_mult_matrix_test,
    //   &s21_transpose_test,        &s21_determinant_test,
    //   &s21_calc_complements_test, &s21_inverse_matrix_test
    &s21_caclulate};

  for (int i = 0; i < NUMBER_OF_FUNCS; i++) {
    s = funcs[i]();
    runner = srunner_create(s);
    srunner_run_all(runner, CK_NORMAL);
    no_failed += srunner_ntests_failed(runner);
    srunner_free(runner);
  }

  return (no_failed == 0) ? EXIT_SUCCESS : EXIT_FAILURE;
}