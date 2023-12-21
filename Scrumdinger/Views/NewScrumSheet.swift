//
//  SwiftUIView.swift
//  Scrumdinger
//
//  Created by Jonathan Tipton on 12/20/23.
//

import SwiftUI

struct ScrumSheet: View {
    @State private var newScrum = DailyScrum.emptyScrum
    @Binding var isPresentingNewScrumView: Bool
        
    var body: some View {
        NavigationStack {
            DetailEditView(scrum: $newScrum)
                .toolbar {
                    ToolbarItem(placement: .cancellationAction) {
                        Button("Dismiss") {
                            isPresentingNewScrumView = false
                        }
                    }
                    ToolbarItem(placement: .confirmationAction) {
                        Button("Add") {
                            isPresentingNewScrumView = false
                        }
                    }
                }
        }
    }
}

#Preview {
    ScrumSheet(isPresentingNewScrumView: .constant(true))
}
