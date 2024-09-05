import SwiftUI

struct SummaryView: View {
    let adversariesItems: [AdversaryItem]
    let spiritItems: [SpiritItem]
    let tierItems: [TierItem]
    let selectedNumberOfPlayers: Int
    let selectedComplexityOfSpirits: String

    var body: some View {
        let selectedAdversary = adversariesItems.filter { $0.isChecked }.randomElement()?.adversary
        
        VStack {
            HStack {
                Text(selectedAdversary?.name ?? "Adversary was not selected")
                    .padding()
                Image(selectedAdversary?.image ?? "")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100, height: 100)
            }
            ScrollView {
                LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 20) {
                    ForEach(randomizeSpirits()) { item in
                        let aspectName = item.spirit.aspectName == nil ? "" : " (\(item.spirit.aspectName!))"
                        VStack {
                            Image(item.spirit.image)
                                .resizable()
                                .scaledToFit()
                                .frame(height: 100)
                                .cornerRadius(8)
                            Text(item.spirit.name + aspectName)
                                .font(.caption)
                                .padding(.top, 5)
                        }
                        .padding()
                        .background(Color.gray.opacity(0.1))
                        .cornerRadius(10)
                    }
                }
                .padding()
            }
        }
        .navigationTitle("Random game")
    }
    
    private func randomizeSpirits() -> [SpiritItem] {
        return SpiritRandomizer().randomize(
            tierItems: tierItems,
            selectedNumberOfPlayers: selectedNumberOfPlayers,
            selectedComplexityOfSpirits: selectedComplexityOfSpirits
        )
    }
}

#Preview {
    NavigationView {
        VStack {
            SummaryView(
                adversariesItems: [.init(
                    isChecked: true,
                    adversary: .init(
                        name: "Prussia",
                        image: "Brand-Prussia_Flag"
                    )
                )],
                spiritItems: [
                    SpiritItem(
                        spirit: Spirit(
                            tier: .c,
                            complexity: .moderate,
                            name: "Shifting Memory of Ages",
                            image: "Shifting_Memory_of_Ages"
                        )
                    ),
                    SpiritItem(
                        spirit: Spirit(
                            tier: .d,
                            complexity: .high,
                            name: "Shroud of Silent Mist",
                            image: "Shroud_of_Silent_Mist"
                        )
                    ),
                    SpiritItem(
                        spirit: Spirit(
                            tier: .a,
                            complexity: .moderate,
                            name: "Grinning Trickster Stirs Up Trouble",
                            image: "Grinning_Trickster_Stirs_Up_Trouble"
                        )
                    ),
                    SpiritItem(
                        spirit: Spirit(
                            tier: .s,
                            complexity: .moderate,
                            name: "Many Minds Move as One",
                            image: "Many_Minds_Move_as_One"
                        )
                    ),
                    SpiritItem(
                        spirit: Spirit(
                            tier: .x,
                            complexity: .moderate,
                            name: "Stone's Unyielding Defiance",
                            image: "Stone's_Unyielding_Defiance"
                        )
                    ),
                    SpiritItem(
                        spirit: Spirit(
                            tier: .a,
                            complexity: .moderate,
                            name: "Volcano Looming High",
                            image: "Volcano_Looming_High"
                        )
                    ),
                    SpiritItem(
                        spirit: Spirit(
                            tier: .c,
                            complexity: .low,
                            name: "Lightning's Swift Strike",
                            image: "Lightning's_Swift_Strike_(Pandemonium)",
                            aspectName: "Pandemonium"
                        )
                    ),
                    SpiritItem(
                        spirit: Spirit(
                            tier: .c,
                            complexity: .low,
                            name: "Lightning's Swift Strike",
                            image: "Lightning's_Swift_Strike"
                        )
                    )
                ],
                tierItems: [.init(tier: .c), .init(tier: .b), .init(tier: .a)],
                selectedNumberOfPlayers: 3,
                selectedComplexityOfSpirits: "all"
            )
        }
    }
}
