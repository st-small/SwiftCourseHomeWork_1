import UIKit

// Общие
// Задание 1

func integerValues(A: Int, B: Int, N: Int) {
    var array = [Int]()
    guard A > 0, B > 0, N > 0 else {
        return
    }
    for integer in A...B {
        var count: Int = 0
        var num: Int = integer
        while num > 0 {
            if num % 10 == 7 {
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

// Проверка работы Задания 1
integerValues(A: 1, B: 55, N: 1)

// Задание 2
func reverese(A: Int) {
    guard A >= 100, A <= 999  else {
        print("Число не трехзначное")
        return
    }
    var old: Int = A
    var new: Int = 0
    for index in 1...3 {
        let powResult = NSDecimalNumber(decimal: pow(10, 3-index))
        new = new + (old%10 * Int(powResult))
        old = old/10
    }
    
    print(new)
}

// Проверка работы Задания 2
reverese(A: 123)

