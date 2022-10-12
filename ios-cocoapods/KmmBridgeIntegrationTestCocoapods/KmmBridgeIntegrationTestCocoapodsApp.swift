//
//  KmmBridgeIntegrationTestCocoapodsApp.swift
//  KmmBridgeIntegrationTestCocoapods
//
//  Created by Russell Wolf on 10/11/22.
//

import SwiftUI
import shared

@main
struct KmmBridgeIntegrationTestCocoapodsApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .onAppear {
                    let test = Test()
                    print("\(test)")
                }
        }
    }
}
