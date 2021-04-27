# Написать два алгоритма нахождения i-го по счёту простого числа. Функция нахождения простого числа должна
# принимать на вход натуральное и возвращать соответствующее простое число. Проанализировать скорость
# и сложность алгоритмов.
#
# Первый — с помощью алгоритма «Решето Эратосфена».
# Примечание. Алгоритм «Решето Эратосфена» разбирался на одном из прошлых уроков. Используйте этот код
# и попробуйте его улучшить/оптимизировать под задачу.
#
# Второй — без использования «Решета Эратосфена».

import timeit
import cProfile


# my_count = int(input("Введите, какое по счёту простое число вы хотите найти: "))


# Первый вариант — с помощью алгоритма «Решето Эратосфена»
def sieve_erat(count):
    hole = None
    n = count ** 2
    sieve = [i for i in range(n)]
    sieve[0] = hole
    sieve[1] = hole
    idx = 1
    for i in sieve:
        if i is not hole:
            j = i + i
            while j < n:
                sieve[j] = hole
                j += i
            idx += 1
        if idx == count:
            break
    return i
# print(sieve_erat(my_count))


print(timeit.timeit('sieve_erat(5)', number=1000, globals=globals()))   # 0.0036136999999999975
print(timeit.timeit('sieve_erat(10)', number=1000, globals=globals()))  # 0.015524999999999997
print(timeit.timeit('sieve_erat(20)', number=1000, globals=globals()))  # 0.0609946
print(timeit.timeit('sieve_erat(40)', number=1000, globals=globals()))  # 0.2693091
print(timeit.timeit('sieve_erat(80)', number=1000, globals=globals()))  # 1.1335968

cProfile.run('sieve_erat(500)')
#          5 function calls in 0.060 seconds
#
#    Ordered by: standard name
#
#    ncalls  tottime  percall  cumtime  percall filename:lineno(function)
#         1    0.002    0.002    0.060    0.060 <string>:1(<module>)
#         1    0.049    0.049    0.058    0.058 Les4-Task2.py:19(sieve_erat)
#         1    0.010    0.010    0.010    0.010 Les4-Task2.py:22(<listcomp>)
#         1    0.000    0.000    0.060    0.060 {built-in method builtins.exec}
#         1    0.000    0.000    0.000    0.000 {method 'disable' of '_lsprof.Profiler' objects}


# Второй вариант — без «Решета»
def prime(count):
    n = count ** 2
    idx = 1
    for i in range(2, n):
        div = 2
        while i % div != 0:
            div += 1
        if div == i:
            idx += 1
        if idx == count:
            break
    return i
# print(prime(my_count))


print(timeit.timeit('prime(5)', number=1000, globals=globals()))   # 0.001549100000000081
print(timeit.timeit('prime(10)', number=1000, globals=globals()))  # 0.006867199999999851
print(timeit.timeit('prime(20)', number=1000, globals=globals()))  # 0.034977499999999884
print(timeit.timeit('prime(40)', number=1000, globals=globals()))  # 0.16421249999999987
print(timeit.timeit('prime(80)', number=1000, globals=globals()))  # 0.7799929000000001

cProfile.run('prime(500)')
# 4 function calls in 0.053 seconds
#
#    Ordered by: standard name
#
#    ncalls  tottime  percall  cumtime  percall filename:lineno(function)
#         1    0.000    0.000    0.053    0.053 <string>:1(<module>)
#         1    0.053    0.053    0.053    0.053 Les4-Task2.py:59(prime)
#         1    0.000    0.000    0.053    0.053 {built-in method builtins.exec}
#         1    0.000    0.000    0.000    0.000 {method 'disable' of '_lsprof.Profiler' objects}

# Вывод: сложность этих алгоритмов уже не линейна, ведь при увеличении позиции искомого числа в 2 раза
# длительность выполнения алгоритма растёт в 2 ** 2 раза, т.е. имеем квадратичную сложность О(n2).
# Также заметно, что алгоритм "Решето Эратосфена" работает примерно в 2 раза медленнее.
