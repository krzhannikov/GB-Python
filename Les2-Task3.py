# Сформировать из введенного числа обратное по порядку входящих в него цифр и вывести на экран.
# Например, если введено число 3486, то надо вывести число 6843.

def num_back(num, count=0):
    global back_num
    if count == my_len:
        return back_num
    my_digit = num // 10**count % 10
    back_num += str(my_digit)
    count += 1
    return num_back(num, count)


back_num = ''
my_num = int(input("Введите число: "))
my_len = len(str(my_num))
print("Обратное число: ", num_back(my_num))
