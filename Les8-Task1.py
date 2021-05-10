# Определение количества различных подстрок с использованием хеш-функции. Пусть на вход функции дана строка.
# Требуется вернуть количество различных подстрок в этой строке.
# Примечание: в сумму не включаем пустую строку и строку целиком.
# Пример работы функции:
#
# func("papa")
# 6
# func("sova")
# 9


# фунция с использованием множества
def func_set(string):
    ln = len(string)
    my_set = set()
    for i in range(1, ln):
        for j in range(ln):
            my_set.add(string[j:j+i])
    print(len(my_set))


# фунция с использованием хэш
def func_hash(string):
    ln = len(string)
    substr_count = 0
    for i in range(1, ln):
        spam = {}
        for j in range(ln):
            eggs = string[j:j+i]
            if len(eggs) == i:
                spam[hash(eggs)] = eggs
        substr_count += len(spam)
    print(substr_count)


func_set('papa')
func_set('sova')
func_hash('papa')
func_hash('sova')
