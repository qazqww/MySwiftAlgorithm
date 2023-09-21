//
//  BOJ2170_DrawLine.swift
//  MySwiftAlgorithm
//
//  Created by Jingon Lee on 2023/09/21.
//

import Foundation

func boj2170() {
    let N = Int(readLine()!)!
    var lines : Array<Array<Int>> = []

    for _ in 1...N {
        let nums = readLine()!.components(separatedBy: " ").map{ Int($0)! }
        lines.append([nums[0], nums[1]])
    }
    lines.sort(by: { $0[0] < $1[0] })

    var end = lines[0][1]
    var answer = end - lines[0][0]
    for index in 1..<N {
        let cur = lines[index]
        if cur[0] > end {
            answer += cur[1] - cur[0]
            end = cur[1]
        } else if cur[1] > end {
            answer += cur[1] - end
            end = cur[1]
        }
    }
    print(answer)
}
