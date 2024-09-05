import SwiftUI

struct ContentView: View {
    @State private var adversariesItems: [AdversaryItem] = adversaries
    @State private var spiritItems: [SpiritItem] = spirits
    @State private var tierItems: [TierItem] = tiers
    @State private var selectedNumberOfPlayers: Int = 1
    @State private var selectedComplexityOfSpirits: String = Complexity.all.rawValue
    
    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    VStack {
                        Text("Select number of players")
                        Picker("Number of Players", selection: $selectedNumberOfPlayers) {
                            ForEach(numberOfPlayers, id: \.self) { number in
                                Text("\(number)").tag(number)
                            }
                        }
                        .pickerStyle(SegmentedPickerStyle())
                    }
                    .padding()
                    
                    List {
                        Section(header: HStack { Text("Select complexity of spirits").font(.headline) }) {
                            Picker("Number of Players", selection: $selectedComplexityOfSpirits) {
                                ForEach(complexityOFSpirits, id: \.self) { complexity in
                                    Text("\(complexity)").tag(complexity)
                                }
                            }
                            .pickerStyle(SegmentedPickerStyle())
                        }
                        
                        Section(header: HStack {
                            Text("Spirits Tiers").font(.headline)
                            NavigationLink(destination: TierListView()) {
                                Image(systemName: "info.circle")
                                    .foregroundColor(.blue)
                                    .padding(.trailing, 10)
                            }
                        }) {
                            ForEach($tierItems) { $item in
                                HStack {
                                    Text(item.tier.rawValue.uppercased())
                                    Image(systemName: item.isChecked ? "largecircle.fill.circle" : "circle")
                                        .foregroundColor(.blue)
                                    Spacer()
                                }
                                .contentShape(Rectangle()) // Ensures the entire row is tappable
                                .onTapGesture { item.isChecked.toggle() }
                            }
                        }
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
                            tierItems: tierItems,
                            selectedNumberOfPlayers: selectedNumberOfPlayers,
                            selectedComplexityOfSpirits: selectedComplexityOfSpirits
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
                            self.spiritItems = spirits
                            self.tierItems = tiers
                        },
                        label: { Text("RESET") }
                    )
                }.padding()
            }
            .navigationTitle("SI randomizer")
        }
    }
    
    private func spiritsWithoutAspects() -> [SpiritItem] {
        return spiritItems.filter { $0.spirit.aspectName == nil }
    }
}

#Preview {
    ContentView()
}
