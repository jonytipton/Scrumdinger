//
//  EditScrumSheet.swift
//  Scrumdinger
//
//  Created by Jonathan Tipton on 12/20/23.
//

import SwiftUI

struct EditScrumSheet: View {
    @Binding var scrum: DailyScrum
    @Binding var editingScrum: DailyScrum
    @Binding var isPresentingEditScrumView: Bool
    
    var body: some View {
        NavigationStack {
            DetailEditView(scrum: $editingScrum)
                .navigationTitle(editingScrum.title)
                .navigationBarTitleDisplayMode(.inline)
                .toolbar {
                    ToolbarItem(placement: .cancellationAction) {
                        Button("Cancel") {
                            isPresentingEditScrumView = false
                        }
                    }
                    ToolbarItem(placement: .confirmationAction) {
                        Button("Done") {
                            isPresentingEditScrumView = false
                            scrum = editingScrum
                        }
                    }
                }
        }
    }
}

#Preview {
    EditScrumSheet(scrum: .constant(DailyScrum.sampleData[0]), editingScrum: .constant(DailyScrum.sampleData[0]), isPresentingEditScrumView: .constant(true))
}
