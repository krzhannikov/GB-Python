# Подсчитать, сколько было выделено памяти под переменные в ранее разработанных программах в рамках первых трех уроков.
# Проанализировать результат и определить программы с наиболее эффективным использованием памяти.
#
# ОС - Windows 10 Pro 20H2 x64, Python 3.8
import random
import sys
import numpy as np


# Определим функцию, которая будет подсчитывать суммарную затраченную память
def memsize(*args):
    memsum = 0
    for el in args:
        memsum += sys.getsizeof(el)
        if not isinstance(el, (str, int, float, complex, bool, type(None), np.int64)):
            for i in range(len(el)):
                memsum += sys.getsizeof(el[i])
        print(memsum)
    return memsum


# Выберем для анализа задачу 3 из урока 3:
# В массиве случайных целых чисел поменять местами минимальный и максимальный элементы.
SIZE = 20
MIN_ITEM = -100
MAX_ITEM = 100
array = [random.randint(MIN_ITEM, MAX_ITEM) for _ in range(SIZE)]
print(array)

# Вариант 1 - реализация из домашнего задания:
for count, value in enumerate(array):
    if value < MAX_ITEM:
        MAX_ITEM = value
        min_ind = count
    if value > MIN_ITEM:
        MIN_ITEM = value
        max_ind = count

array[min_ind], array[max_ind] = array[max_ind], array[min_ind]
print(array)
print(f'Суммарная затраченная память: {memsize(SIZE, MIN_ITEM, MAX_ITEM, array, min_ind, max_ind)} байт')
# Суммарная затраченная память: 956 байт

# Вариант 2 - используем min и max:
min_ind = array.index(min(array))
max_ind = array.index(max(array))
array[min_ind], array[max_ind] = array[max_ind], array[min_ind]
print(array)
print(f'Суммарная затраченная память: {memsize(SIZE, MIN_ITEM, MAX_ITEM, array, min_ind, max_ind)} байт')
# Суммарная затраченная память: 956 байт

# Вариант 3 - используем numpy:
min_ind = np.argmin(array)
max_ind = np.argmax(array)
array[min_ind], array[max_ind] = array[max_ind], array[min_ind]
print(array)
print(f'Суммарная затраченная память: {memsize(SIZE, MIN_ITEM, MAX_ITEM, array, min_ind, max_ind)} байт')
# Суммарная затраченная память: 960 байт

# Вывод. Не очень подходящая задача для анализа затраченной памяти, точнее её реализации. Ведь в них используется
# один и тот же набор аргументов. И затраченная память оказалась практически одинакова. Только методы numpy используют
# немного больше памяти.
