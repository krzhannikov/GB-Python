# Найти сумму и произведение цифр трехзначного числа, которое вводит пользователь.

abc = int(input("Введите трёхзначное число: "))
x1 = abc // 100
x2 = (abc - x1 * 100) // 10
x3 = abc - x1 * 100 - x2 * 10
print("Сумма цифр:", x1 + x2 + x3)
print("Произведение цифр:", x1 * x2 * x3)
