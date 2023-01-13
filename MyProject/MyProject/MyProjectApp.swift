import SwiftUI
import StartPlayer
import RxSwift

@main
struct MyProjectApp: App {
    var body: some Scene {
        WindowGroup {
            StartPlayer.StartPlayerContentView()
        }
    }
}
