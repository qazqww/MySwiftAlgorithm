//
//  BOJ1193_FindFraction.swift
//  MySwiftAlgorithm
//
//  Created by Jingon Lee on 2023/09/06.
//

import Foundation

func boj1193() {
    var N = Int(readLine()!)!
    var cnt = 0

    while N > 0 {
        cnt += 1
        N -= cnt
    }

    // cnt번째 대각선의 N번째 순서, cnt + 1은 분자 분모의 합
    N += cnt
    cnt += 1

    if cnt % 2 == 0 {
        print("\(cnt - N)/\(N)")
    } else {
        print("\(N)/\(cnt - N)")
    }
}
