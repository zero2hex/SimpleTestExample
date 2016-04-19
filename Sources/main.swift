//
//  main.swift
//  SimpleTestExample
//
//  Created by SeungHyunLee on 4/16/16.
//  Copyright © 2016 SeungHyun Lee. All rights reserved.
//

import Foundation

public class Student {
    var name: String
    var grade: Int
    var classNo: Int
    
    public init?(name: String, grade: Int, classNo: Int) {
        
        if name.isEmpty || grade < 0 || classNo < 0 {
            return nil
        }
        
        self.name = name
        self.grade = grade
        self.classNo = classNo
    }
}

let student = Student(name: "SeungHyun Lee", grade: 4, classNo: 1)
print("Hello, \(student!.name)!")

