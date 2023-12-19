//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by Jonathan Tipton on 12/17/23.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    @State private var scrums = DailyScrum.sampleData
    
    var body: some Scene {
        WindowGroup {
            ScrumsView(scrums: $scrums)
        }
    }
}
