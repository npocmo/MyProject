import Foundation

struct Adversary {
    let name: String
    let image: String
}

struct AdversaryItem: Identifiable {
    let id = UUID()
    var isChecked: Bool
    var adversary: Adversary
}

let adversaries = [
    // Base game
    AdversaryItem(isChecked: true, adversary: .init(name: "Prussia", image: "Brand-Prussia_Flag")),
    AdversaryItem(isChecked: true, adversary: .init(name: "England", image: "England_WrinkledFlag")),
    AdversaryItem(isChecked: true, adversary: .init(name: "France", image: "France_(Plantation_Colony)_WrinkledFlag")),
    AdversaryItem(isChecked: true, adversary: .init(name: "HME", image: "Habsburg_Mining_Expedition_Flag")),
    AdversaryItem(isChecked: true, adversary: .init(name: "Habsburg", image: "Habsburg_Monarchy_(Livestock_Colony)_WrinkledFlag")),
    AdversaryItem(isChecked: true, adversary: .init(name: "Russia", image: "Russia_WrinkledFlag")),
    AdversaryItem(isChecked: true, adversary: .init(name: "Scottland", image: "Scotland_WrinkledFlag")),
    AdversaryItem(isChecked: true, adversary: .init(name: "Sweden", image: "Sweden_WrinkledFlag"))
].sorted { $0.adversary.name < $1.adversary.name }
