import XCTest
@testable import SpiritIslandRandomizer

final class SpiritRandomizerTests: XCTestCase {
    func testRandomize1() {
        let sut = createSut()
        
        let result = sut.randomize(
            selectedTiers: [.X],
            selectedNumberOfPlayers: 5,
            selectedComplexityOfSpirits: [.low, .moderate, .high, .very_high]
        )
        
        XCTAssertEqual(result.count, 5)
    }
    
    func testRandomize2() {
        let sut = createSut()
        
        let result = sut.randomize(
            selectedTiers: [.D],
            selectedNumberOfPlayers: 8,
            selectedComplexityOfSpirits: [.low, .moderate, .high, .very_high]
        )
        
        XCTAssertEqual(result.count, 7)
    }
    
    func testRandomize3() {
        let sut = createSut()
        
        let result = sut.randomize(
            selectedTiers: [.D],
            selectedNumberOfPlayers: 8,
            selectedComplexityOfSpirits: [.low]
        )
        
        XCTAssertEqual(result.count, 3)
    }
    
    func testRandomize4() {
        let sut = createSut()
        
        let result = sut.randomize(
            selectedTiers: [.B],
            selectedNumberOfPlayers: 8,
            selectedComplexityOfSpirits: [.low]
        )
        
        XCTAssertEqual(result.count, 4)
    }
    
    func testRandomize5() {
        let sut = createSut()
        
        let result = sut.randomize(
            selectedTiers: [.A],
            selectedNumberOfPlayers: 8,
            selectedComplexityOfSpirits: [.moderate]
        )
        
        XCTAssertEqual(result.count, 6)
    }

    private func createSut() -> SpiritRandomizer {
        return SpiritRandomizer()
    }
}
