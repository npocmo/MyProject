import Foundation

class SpiritRandomizer {
    func randomize(
        tierItems: [TierItem],
        selectedNumberOfPlayers: Int,
        selectedComplexityOfSpirits: [Complexity]
    ) -> [SpiritItem] {
        let selectedSpiritsWithoutAspects = spirits.filter { $0.spirit.aspectName == nil }
        let selectedTiers = tierItems.filter { $0.isChecked }.map { $0.tier }
        let selectedShuffledSpiritsWithoutAspects = selectedSpiritsWithoutAspects.shuffled()
        
        var result: [SpiritItem] = []
        
        for selectedSpirit in selectedShuffledSpiritsWithoutAspects {
            if hasAspects(spirit: selectedSpirit.spirit, availableSpirits: spirits) {
                if let spiritCandidate = randomizeSpiritWithAspect(
                    spirit: selectedSpirit.spirit,
                    availableSpirits: spirits,
                    selectedTiers: selectedTiers,
                    neededComplexity: selectedComplexityOfSpirits
                ) {
                    result.append(spiritCandidate)
                }
            } else {
                let spiritCandidate = selectedSpirit
                if selectedTiers.contains(where: { $0 == selectedSpirit.spirit.tier }) && fitsComplexity(spiritCandidate.spirit, neededComplexity: selectedComplexityOfSpirits) {
                    result.append(spiritCandidate)
                }
            }
            
            if result.count == selectedNumberOfPlayers {
                return result
            }
        }
        
        return result
    }
    
    private func randomizeSpiritWithAspect(spirit: Spirit, availableSpirits: [SpiritItem], selectedTiers: [Tier], neededComplexity: [Complexity]) -> SpiritItem? {
        return availableSpirits.filter {
            $0.spirit.name == spirit.name
        }.filter {
            fitsComplexity(
                $0.spirit,
                neededComplexity: neededComplexity
            )
        }.filter {
            selectedTiers.contains(
                $0.spirit.tier
            )
        }.randomElement()
    }
    
    private func hasAspects(spirit: Spirit, availableSpirits: [SpiritItem]) -> Bool {
        return availableSpirits.filter { $0.spirit.name == spirit.name }.count > 1
    }
    
    private func fitsComplexity(_ spirit: Spirit, neededComplexity: [Complexity]) -> Bool {
        return neededComplexity.contains(spirit.complexity)
    }
}
