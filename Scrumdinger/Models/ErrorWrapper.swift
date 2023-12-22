//
//  ErrorWrapper.swift
//  Scrumdinger
//
//  Created by Jonathan Tipton on 12/21/23.
//

import Foundation

struct ErrorWrapper: Identifiable {
    let id: UUID
    var error: Error
    var guidance: String
    
    init(id: UUID = UUID(), error: Error, guidance: String) {
        self.id = id
        self.error = error
        self.guidance = guidance
    }
}
