//
//  BOJ18353_PlaceSoldier.swift
//  MySwiftAlgorithm
//
//  Created by Jingon Lee on 2023/09/12.
//

import Foundation

func boj18353() {
    let N = Int(readLine()!)!
    let input = readLine()!.components(separatedBy: " ").map { Int($0)! }
    var array = [Int]()

    for num in input {
        var isAdded = false
        for (index, _) in array.enumerated() {
            if (array[index] <= num) {
                array[index] = num
                isAdded = true
                break
            }
        }
        if !isAdded {
            array.append(num)
        }
    }

    print(input.count - array.count)
}
