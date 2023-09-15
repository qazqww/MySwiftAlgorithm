//
//  BOJ24444_AlgoClassBFS1.swift
//  MySwiftAlgorithm
//
//  Created by Jingon Lee on 2023/09/15.
//

import Foundation

func boj24444() {
    let input = readLine()!.components(separatedBy: " ").map { Int($0)! }

    var mapInfo : Array<Array<Int>> = Array(repeating: [], count: input[0])
    var order : Array<Int> = Array(repeating: 0, count: input[0])
    var visited : Array<Bool> = Array(repeating: false, count: input[0])

    for _ in 1...input[1] {
        let temp = readLine()!.components(separatedBy: " ").map { Int($0)! }
        mapInfo[temp[0] - 1].append(temp[1] - 1)
        mapInfo[temp[1] - 1].append(temp[0] - 1)
    }

    var queue : Array<Int> = Array(repeating: -1, count: input[0])
    var firstIdx = 0;
    var lastIdx = 1;
    queue[0] = input[2] - 1
    visited[input[2] - 1] = true
    var orderCnt = 1

    while firstIdx < lastIdx {
        let num = queue[firstIdx]
        firstIdx += 1
        order[num] = orderCnt
        orderCnt += 1
        mapInfo[num] = mapInfo[num].sorted()
        
        for index in mapInfo[num] {
            if visited[index] {
                continue
            } else {
                queue[lastIdx] = index
                lastIdx += 1
                visited[index] = true
            }
        }
    }

    for index in order {
        print(index)
    }
}
