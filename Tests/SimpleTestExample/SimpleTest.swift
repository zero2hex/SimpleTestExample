@testable import SimpleTestExample
import XCTest
import Foundation

class SimpleTest: XCTestCase {
    
    func testStudentInitialization() {
        
        // Success case.
        let potentialItem = Student(name: "SeungHyun Lee", grade: 4, classNo: 1)
        XCTAssertNotNil(potentialItem)
        
        
        // Failure cases.
        let noName = Student(name: "", grade: 4, classNo: 1)
        XCTAssertNil(noName, "Empty name is invalid")
        
        let badAge = Student(name: "Bad grade", grade: -1, classNo: 1)
        XCTAssertNil(badAge, "Negative grade are invalid, be positive")

        let badClassNo = Student(name: "Bad classNo", grade: 4, classNo: -1)
        XCTAssertNil(badClassNo, "Negative classNo are invalid, be positive")
    }
}