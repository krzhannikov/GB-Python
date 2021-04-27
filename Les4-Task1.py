# Для анализа алгоритмов выберем пятую задачу третьего урока:
# "В массиве найти максимальный отрицательный элемент. Вывести на экран его значение и позицию в массиве."

import random
import timeit
import cProfile
import sys


def array(size):
    min_item = -1000
    max_item = 1000
    my_array = [random.randint(min_item, max_item) for _ in range(size)]
    return my_array


array25 = array(25)
array50 = array(50)
array100 = array(100)
array200 = array(200)
array1000 = array(1000)
array2000 = array(2000)
sys.setrecursionlimit(2500)


# 1 - реализация с помощью цикла for:
def max_neg_for(array):
    my_min = float('-inf')
    for count, value in enumerate(array):
        if my_min < value < 0:
            my_min = value
            my_ind = count
    return [my_min, my_ind]


print(timeit.timeit('max_neg_for(array25)', number=1000, globals=globals()))    # 0.0020640000000000033
print(timeit.timeit('max_neg_for(array50)', number=1000, globals=globals()))    # 0.003751499999999998
print(timeit.timeit('max_neg_for(array100)', number=1000, globals=globals()))   # 0.006891399999999999
print(timeit.timeit('max_neg_for(array200)', number=1000, globals=globals()))   # 0.014370600000000004
print(timeit.timeit('max_neg_for(array1000)', number=1000, globals=globals()))  # 0.06458200000000001

cProfile.run('max_neg_for(array1000)')
# 4 function calls in 0.000 seconds
#
#    Ordered by: standard name
#
#    ncalls  tottime  percall  cumtime  percall filename:lineno(function)
#         1    0.000    0.000    0.000    0.000 <string>:1(<module>)
#         1    0.000    0.000    0.000    0.000 Les4-Task1.py:26(max_neg_for)
#         1    0.000    0.000    0.000    0.000 {built-in method builtins.exec}
#         1    0.000    0.000    0.000    0.000 {method 'disable' of '_lsprof.Profiler' objects}

# 2 - реализация с помощью рекурсии:
def max_neg(array, count=0, my_min=float('-inf'), my_ind=0):
    if count == len(array):
        return [my_min, my_ind]
    if my_min < array[count] < 0:
        my_min = array[count]
        my_ind = count
    count += 1
    return max_neg(array, count, my_min, my_ind)
# a = max_neg(array)
# print('Максимальный отрицательный элемент:', a[0])
# print('Его позиция в массиве:', a[1])


print(timeit.timeit('max_neg(array25)', number=1000, globals=globals()))    # 0.005699400000000007
print(timeit.timeit('max_neg(array50)', number=1000, globals=globals()))    # 0.011566199999999999
print(timeit.timeit('max_neg(array100)', number=1000, globals=globals()))   # 0.0229037
print(timeit.timeit('max_neg(array200)', number=1000, globals=globals()))   # 0.0532526
print(timeit.timeit('max_neg(array1000)', number=1000, globals=globals()))  # 0.3746264
print(timeit.timeit('max_neg(array2000)', number=1000, globals=globals()))  # 0.7474977

cProfile.run('max_neg(array1000)')
# 2005 function calls (1005 primitive calls) in 0.001 seconds
#
#    Ordered by: standard name
#
#    ncalls  tottime  percall  cumtime  percall filename:lineno(function)
#         1    0.000    0.000    0.001    0.001 <string>:1(<module>)
#    1001/1    0.001    0.000    0.001    0.001 Les4-Task1.py:44(max_neg)
#         1    0.000    0.000    0.001    0.001 {built-in method builtins.exec}
#      1001    0.000    0.000    0.000    0.000 {built-in method builtins.len}
#         1    0.000    0.000    0.000    0.000 {method 'disable' of '_lsprof.Profiler' objects}


# 3 - реализация с помощью цикла while:
def max_neg_while(array):
    count = 0
    my_min = float('-inf')
    while count < len(array):
        if 0 > array[count] > my_min:
            my_min = array[count]
            my_ind = count
        count += 1
    return [my_min, my_ind]


print(timeit.timeit('max_neg_while(array25)', number=1000, globals=globals()))    # 0.004133600000000015
print(timeit.timeit('max_neg_while(array50)', number=1000, globals=globals()))    # 0.007979299999999995
print(timeit.timeit('max_neg_while(array100)', number=1000, globals=globals()))   # 0.015683700000000023
print(timeit.timeit('max_neg_while(array200)', number=1000, globals=globals()))   # 0.0293707
print(timeit.timeit('max_neg_while(array1000)', number=1000, globals=globals()))  # 0.1512272

cProfile.run('max_neg_while(array1000)')
# 1005 function calls in 0.000 seconds
#
#    Ordered by: standard name
#
#    ncalls  tottime  percall  cumtime  percall filename:lineno(function)
#         1    0.000    0.000    0.000    0.000 <string>:1(<module>)
#         1    0.000    0.000    0.000    0.000 Les4-Task1.py:67(max_neg_while)
#         1    0.000    0.000    0.000    0.000 {built-in method builtins.exec}
#      1001    0.000    0.000    0.000    0.000 {built-in method builtins.len}
#         1    0.000    0.000    0.000    0.000 {method 'disable' of '_lsprof.Profiler' objects}


#  Вывод: по полученным измерениям мы видим, что все три алгоритма обладают линейной сложностью О(n),т.е.
#  при увеличении размера массива время исполнения алгоритма растёт пропорционально этому размеру. Также видим,
#  что самым быстрым оказался алгоритм с использованием цикла for. За ним идёт while - он выполняется примерно
#  в два раза дольше. И самый долгий - это вариант с рекурсией. Он в 3-4 раза дольше, чем for.
