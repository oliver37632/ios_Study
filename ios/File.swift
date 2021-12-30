//
//  File.swift
//  ios
//
//  Created by 김승진 on 2021/12/03.
//

import Foundation


let age: Int = 10

"안녕하세요! 저는 \(age)살입니다" // "안녕하세요! 저는 10살입니다"

"안녕하세요! 저는 \(age + 5)살입니다" // "안녕하세요! 저는 15살입니다"

print("안녕하세요! 저는\(age + 5)살입니다") // "안녕하세요! 저는 15살입니다"

class Person{
  var name: String = "yagom"
  var age: Ing = 10
}
let yagom: Person = Person()
print(yagom) // "__lldb_expr_256.Person"
dump(yagom) // __lldb_expr_256.Person
