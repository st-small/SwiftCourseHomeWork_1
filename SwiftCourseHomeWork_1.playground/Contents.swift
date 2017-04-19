import UIKit

// Общие
// Задание 1

func integerValues(A: Int, B: Int, N: Int) {
    
    A & B & N <= 0 ? print("Одно или более значение меньше 0") : print("Все значения не меньше 0")
    
    for integer in A...B {
        if integer == 7 {
            print(integer)
        } else if integer > 7 {
            var num: Int = integer
            while num > 0 {
                let digit = num % 10
                if digit > 0 && digit == 7 {
                    print(integer)
                }
                num = num / 10
            }
            
        }

    }
    
    
}

integerValues(A: 1, B: 500, N: 2)
