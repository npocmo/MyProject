import XCTest
@testable import SpiritIslandRandomizer

final class SpiritRandomizerTests: XCTestCase {
    func testRandomize1() {
        let sut = createSut()
        
        let result = sut.randomize(
            tierItems: [.init(tier: .x)],
            selectedNumberOfPlayers: 5,
            selectedComplexityOfSpirits: "all"
        )
        
        XCTAssertEqual(result.count, 5)
    }
    
    func testRandomize2() {
        let sut = createSut()
        
        let result = sut.randomize(
            tierItems: [.init(tier: .d)],
            selectedNumberOfPlayers: 8,
            selectedComplexityOfSpirits: "all"
        )
        
        XCTAssertEqual(result.count, 7)
    }
    
    func testRandomize3() {
        let sut = createSut()
        
        let result = sut.randomize(
            tierItems: [.init(tier: .d)],
            selectedNumberOfPlayers: 8,
            selectedComplexityOfSpirits: "low"
        )
        
        XCTAssertEqual(result.count, 3)
    }
    
    func testRandomize4() {
        let sut = createSut()
        
        let result = sut.randomize(
            tierItems: [.init(tier: .b)],
            selectedNumberOfPlayers: 8,
            selectedComplexityOfSpirits: "low"
        )
        
        XCTAssertEqual(result.count, 4)
    }
    
    func testRandomize5() {
        let sut = createSut()
        
        let result = sut.randomize(
            tierItems: [.init(tier: .a)],
            selectedNumberOfPlayers: 8,
            selectedComplexityOfSpirits: "moderate"
        )
        
        XCTAssertEqual(result.count, 6)
    }

    private func createSut() -> SpiritRandomizer {
        return SpiritRandomizer()
    }
}
