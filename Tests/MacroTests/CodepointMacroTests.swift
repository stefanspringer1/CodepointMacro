import SwiftSyntaxMacros
import SwiftSyntaxMacrosTestSupport
import XCTest
import CodepointMacros
import Codepoint

final class CodepointMacroTests: XCTestCase {
    
    func testCodepoint() throws {
        
        let result: UInt32 = #codepoint("∫")
        XCTAssertEqual(
            result,
            0x222B
        )
        
    }
    
    func testScalar() throws {
        
        // for Unicode scalars, we do not need a macro:
        let result: UnicodeScalar = UnicodeScalar("∫")
        XCTAssertEqual(
            result,
            UnicodeScalar(0x222B)!
        )
        
    }
    
}
