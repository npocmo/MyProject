import SwiftUI
import Zoomable

struct TierListView: View {
    var body: some View {
        Image("tierlist")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .zoomable()
    }
}

#Preview {
    TierListView()
}
