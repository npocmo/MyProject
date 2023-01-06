//
//  MyProjectApp.swift
//  MyProject
//
//  Created by Dimitri Nesterenko on 06.01.23.
//

import SwiftUI
import StartPlayer

@main
struct MyProjectApp: App {
    var body: some Scene {
        WindowGroup {
            StartPlayer.StartPlayerContentView()
        }
    }
}
