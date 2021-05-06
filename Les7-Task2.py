# Отсортируйте по возрастанию методом слияния одномерный вещественный массив, заданный случайными числами
# на промежутке [0; 50). Выведите на экран исходный и отсортированный массивы.

import random


SIZE = 10
MIN_ITEM = 0
MAX_ITEM = 50
my_array = [random.randint(MIN_ITEM, MAX_ITEM - 1) for _ in range(SIZE)]
print(my_array)


def merger_sort(array):
    ln = len(array)
    if ln == 1:
        return array
    array1 = array[:ln // 2]
    array2 = array[ln // 2:]
    merger_sort(array1)
    merger_sort(array2)
    sorted_array = []
    i, j = 0, 0
    while i < len(array1) and j < len(array2):
        if array1[i] <= array2[j]:
            sorted_array.append(array1[i])
            i += 1
        else:
            sorted_array.append(array2[j])
            j += 1
    while i < len(array1):
        sorted_array.append(array1[i])
        i += 1
    while j < len(array2):
        sorted_array.append(array2[j])
        j += 1
    for k in range(ln):
        array[k] = sorted_array[k]


merger_sort(my_array)
print(my_array)
