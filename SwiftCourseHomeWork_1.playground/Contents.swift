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

// Задание 7
func searchNOD(A: Int, B: Int) -> Int {
    
    var NOD = 0;
    var x = A;
    var y = B
    
    while x != y {
        if x > y {
            x = x - y
        } else {
            y = y - x
        }
    }
    
    NOD = x
    return NOD
}

func fractReduction(A: Int, B: Int) {
    
    var x = A
    var y = B
    let NOD = searchNOD(A: A, B: B)
    x = A/NOD
    y = B/NOD
    
    switch y {
    case _ where (y > 1) : print("Исходная дробь вида \(A)/\(B) приняла вид после упрощения: \(x)/\(y)")
    case _ where (y == 1) : print("Исходная дробь вида \(A)/\(B) приняла вид целого числа после упрощения: \(x)")
    default:
        return
    }
}

// Проверка работы задания 7
fractReduction(A: 1000, B: 25)

// Задание 8
func findNumber() {
    for i in 100...999 {
        let a = i/100
        let b = (i / 10 - (i / 100) * 10)
        let c = (i - (a*100 + b*10))
        
        let powRes = Int(pow(Double(a), 3) + pow(Double(b), 3) + pow(Double(c), 3))//a*a*a+b*b*b+c*c*c
        
        if (powRes == i) {
            print("Это число равно \(i)")
        }
        
    }
}

// Проверка работы задания 8
findNumber()

// Задание 9
func findNumberFromRight(N: Int, K: Int) {
    var ost = 0
    var x = N
    var y = K
    
    while y > 0 {
        ost = x % 10
        x /= 10
        y -= 1
    }
    
    print("\(K)-ая цифра справа равна \(ost)")
}

// Проверка работы задания 9
findNumberFromRight(N: 145593, K: 2)

// Задание 10
func fibo(A: Int) -> Int{
    if A == 0 {
        return 0
    } else if (A > 0 && A <= 2) {
        return 1
    } else {
        return (fibo(A: A-1) + fibo(A: A-2))
    }
}

// Проверка работы задания 10
fibo(A: 10)

// Задание 11


// Проверка работы задания 11


// Задание 12


// Проверка работы задания 12


// Задание 13


// Проверка работы задания 13


// Задание 14


// Проверка работы задания 14


// Задание 15


// Проверка работы задания 15




