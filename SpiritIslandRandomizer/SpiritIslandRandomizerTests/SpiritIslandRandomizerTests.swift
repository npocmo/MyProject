import XCTest
@testable import SpiritIslandRandomizer

final class SpiritRandomizerTests: XCTestCase {
    func testRandomize1() {
        let sut = createSut()
        
        let result = sut.randomize(
            tierItems: [.init(tier: .x)],
            selectedNumberOfPlayers: 5
        )
        
        XCTAssertEqual(result.count, 5)
    }
    
    func testRandomize2() {
        let sut = createSut()
        
        let result = sut.randomize(
            tierItems: [.init(tier: .d)],
            selectedNumberOfPlayers: 8
        )
        
        XCTAssertEqual(result.count, 7)
    }

    private func createSut() -> SpiritRandomizer {
        return SpiritRandomizer()
    }
}
