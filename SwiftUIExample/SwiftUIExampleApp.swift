//
//  SwiftUIExampleApp.swift
//  SwiftUIExample
//
//  Created by Jose Torronteras on 05/04/2021.
//

import SwiftUI
import RollbarNotifier
import RollbarKSCrash
import RollbarPLCrashReporter

@main
struct SwiftUIExampleApp: App {
    @Environment(\.scenePhase) var scenePhase
    
    // MARK: - Init
    init() {
        let config = RollbarConfig.init()
        
        if let rollbarKey = Bundle.main.infoDictionary?["ROLLBAR_KEY"] as? String {
            config.destination.accessToken = rollbarKey
            config.destination.environment = "development"
            
            // init Rollbar shared instance:
            Rollbar.initWithConfiguration(config)
        }
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
