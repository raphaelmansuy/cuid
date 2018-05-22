import XCTest
import cuid

class Tests: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func verifyGenIdMin() {
        // Test if the id generated has 25 character
        let id = Cuid.generateId()
        XCTAssert(id.count == 25,"Pass")
    }
    
    func testPerformance1000gen() {
        // This is an example of a performance test case.
        self.measure() {
            for _ in 1...1000 {
                Cuid.generateId()
            }
        }
    }
}
