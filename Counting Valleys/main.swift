//
//  main.swift
//  Counting Valleys
//
//  Created by Shakhvorostov on 08.10.2019.
//  Copyright © 2019 Shakhvorostov. All rights reserved.
//

import Foundation

func countingValleys(n: Int, s: String) -> Int {
    var i: Int = 0
    var str: String = s
    var index: Int = 0
    var m: Int = 0
    
    func change(i: Int) -> Int{
        if i == 0 {
            index += 1
        }
        return index
    }
    
    while i != str.count {
        if str.first == "U" {
            i += 1
            m += 1
            str.removeFirst()
        } else {
            i -= 1
            m -= 1
            str.removeFirst()
        }
        if abs(m) >= 2 {
            i = 0
            change(i: i)
           
        }
        
    }
    return index
}

print(countingValleys(n: 8, s: "UDDDUDUU"))

