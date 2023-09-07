//
//  BOJ1789_SumOfNums.swift
//  MySwiftAlgorithm
//
//  Created by Jingon Lee on 2023/09/07.
//

import Foundation

func boj1789() {
    var S = (UInt32)(readLine()!)!
    var num = 0
    var cnt = 0

    while num < S {
        cnt += 1
        num += cnt
    //    if (num < 0) {
    //        break;
    //    }
    }
    print(num == S ? cnt : cnt - 1)
}
