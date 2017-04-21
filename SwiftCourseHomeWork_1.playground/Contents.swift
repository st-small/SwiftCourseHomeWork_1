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

// Задание 3
func luckyNumber(A: Double) {
    let check: Int = Int(Double(A) * 100)
    guard check >= 1001, check <= 9999 else {
        print("Число не подходит под формат ХХ,ХХ")
        return
    }
    var first: Int = 0
    var second: Int = 0
    first = check / 1000 + (check / 100 - (check / 1000) * 10)
    second = (check % 100) / 10 + check % 10
    first == second ? print("Поздравляем со счастливым билетом!!!") : print("Попробуйте еще")
}

// Проверка работы задания 3
luckyNumber(A: 22.4)

// Задание 4
func factorial(A: Int) {
    
    guard A > 0 else {
        print("Значение А не является положительным")
        return
    }
    var result: Int = 1
    
    for i in 1 ..< (A + 1) {
        
        result *= i
        
        print(NSString(format:"%3i   %12i", i, result))
    }
}

// Проверка работы задания 4
factorial(A: 12)

// Задание 5
func calculateFunc(A: Double) {
    
    switch A {
    case _ where (A <= -0.5): print("Y = 0.5")
    case _ where (A > -0.5 && A <= 0): print("Y = \(A+1)")
    case _ where (A > 0 && A <= 1): print("Y = \(A*A-1)")
    case _ where (A > 1): print("Y = \(A-1)")
    default: return
    }
}

// Проверка работы задания 5
calculateFunc(A: -0.7)
calculateFunc(A: -0.3)
calculateFunc(A: 0.3)
calculateFunc(A: 1.5)

// Задание 6
func calculateFunc2(A: Double) {

    switch A {
    case _ where (A <= 0.5): print("Y2 = \(sin(Double.pi/2))")
    case _ where (A > 0.5): print("Y2 = \(sin((A-1)*Double.pi/2))")
    default: return
    }
}

// Проверка работы задания 6
calculateFunc2(A: 0.1)
calculateFunc2(A: 5)

