import UIKit

// Общие
// Задание 1

func integerValues(A: Int, B: Int, N: Int) {
    var array = [Int]()
    if A > 0, B > 0, N > 0 {
        for integer in A...B {
            var count: Int = 0
            var num: Int = integer
            while num > 0 {
                let digit = num % 10
                if digit > 0 && digit == 7 {
                    count += 1
                }
                num = num / 10
            }
            if count == N {
                array.append(integer)
                print(integer)
            }
        }
        if array.count == 0 {
            print("Требуемых значений не найдено")
        }
    }
}

// Проверка работы Задания 1
integerValues(A: 1, B: 5555, N: 3)

// Задание 2


