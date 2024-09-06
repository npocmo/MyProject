import SwiftUI
import MultiSelectSegmentedControl

struct ContentView: View {
    @State private var adversariesItems: [AdversaryItem] = adversaries
    @State private var spiritItems: [SpiritItem] = spirits
    @State private var selectedTiersIndex: IndexSet = [0, 1, 2, 3, 4, 5, 6]
    @State private var selectedNumberOfPlayers: Int = 1
    @State private var selectedComplexityOfSpiritsIndex: IndexSet = [0,1,2,3]
    
    private let comlexities: [Complexity] = [.low, .moderate, .high, .very_high]
    private let tiers: [Tier] = [.X, .S, .A, .B, .C, .D, .F]
    
    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    VStack {
                        Text("Number of players")
                        Picker("Number of Players", selection: $selectedNumberOfPlayers) {
                            ForEach(numberOfPlayers, id: \.self) { number in
                                Text("\(number)").tag(number)
                            }
                        }
                        .pickerStyle(SegmentedPickerStyle())
                    }
                    .padding()
                    
                    VStack {
                        Text("Complexity of spirits")
                        MultiSegmentPicker(
                            selectedSegmentIndexes: $selectedComplexityOfSpiritsIndex,
                            items: comlexities
                        ).accentColor(.blue).fixedSize()
                    }
                    .padding()
                    
                    VStack {
                        HStack {
                            Text("Spirit tiers")
                            NavigationLink(destination: TierListView()) {
                                Image(systemName: "info.circle")
                                    .foregroundColor(.blue)
                                    .padding(.trailing, 10)
                            }
                        }
                        HStack {
                            MultiSegmentPicker(
                                selectedSegmentIndexes: $selectedTiersIndex,
                                items: tiers.map { return "   \($0)   "}
                            )
                            .accentColor(.blue)
                            .fixedSize()
                        }
                    }
                    .padding()
                    
                    List {
                        Section(header: HStack { Text("Adversaries").font(.headline) }) {
                            ForEach($adversariesItems) { $item in
                                HStack {
                                    Image(item.adversary.image)
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 100, height: 100)
                                    Text(item.adversary.name)
                                        .padding()
                                    Spacer()
                                    Image(systemName: item.isChecked ? "largecircle.fill.circle" : "circle")
                                        .foregroundColor(.blue)
                                }
                                .contentShape(Rectangle())
                                .onTapGesture { item.isChecked.toggle() }
                            }
                        }
                    }
                }
                HStack {
                    NavigationLink(
                        destination: SummaryView(
                            adversariesItems: adversariesItems,
                            spiritItems: spiritItems,
                            selectedTiers: tiers.enumerated().compactMap { index, element in
                                if selectedTiersIndex.contains(index) {
                                    return element
                                } else {
                                    return nil
                                }
                            },
                            selectedNumberOfPlayers: selectedNumberOfPlayers,
                            selectedComplexityOfSpirits: comlexities.enumerated().compactMap { index, element in
                                if selectedComplexityOfSpiritsIndex.contains(index) {
                                    return element
                                } else {
                                    return nil
                                }
                            }
                        )
                    ) {
                        Text("Randomize")
                            .font(.footnote)
                            .padding()
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }.padding(.trailing, 30)
                    Button(action: {
                            self.adversariesItems = adversaries
                            self.selectedComplexityOfSpiritsIndex = [0, 1, 2, 3]
                            self.selectedTiersIndex = [0, 1, 2, 3, 4, 5, 6]
                        },
                        label: { Text("RESET") }
                    )
                }.padding()
            }
        }
    }
    
    private func spiritsWithoutAspects() -> [SpiritItem] {
        return spiritItems.filter { $0.spirit.aspectName == nil }
    }
}

#Preview {
    ContentView()
}
