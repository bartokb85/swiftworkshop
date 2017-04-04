import Foundation

//Task 1 - inplace string reverse

var s:String

//lazy way

s = "kolbasz"
s = String(s.characters.reversed())


//hard way
s = "kolbasz"

for i in 0..<s.characters.count/2 {
    
    let firstIndex = s.index(s.startIndex, offsetBy: i)
    let lastIndex = s.index(before: s.endIndex)

    let firstLetterRange = Range(s.index(s.startIndex, offsetBy: i) ..< s.index(s.startIndex, offsetBy: i+1))
    let lastLetterRange = Range(s.index(s.endIndex, offsetBy: -i-1) ..< s.index(s.endIndex, offsetBy: -i))

    var firstLetter = s[firstLetterRange]
    s.replaceSubrange(firstLetterRange, with: s[lastLetterRange])
    s.replaceSubrange(lastLetterRange, with: firstLetter)
}

print(s)

//Task 1 - bubblesort

var array = [3, 4, 7, 1, 23, 34, 12, 5, 2, 2, 99, 8]
var swapped = false

repeat {
    swapped = false;
    for i in 1...array.count-1 {
        if (array[i-1] > array[i]) {
            array[i-1...i] = [array[i],array[i-1]]
            swapped = true
        }
    }
} while swapped == true


print(array)






