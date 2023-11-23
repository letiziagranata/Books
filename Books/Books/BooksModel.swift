//
//  BooksModel.swift
//  Books
//
//  Created by Letizia Granata on 21/11/23.
//

import Foundation
import SwiftUI

struct Book : Identifiable {
    
    var id: UUID = UUID()
    
    var title: String
    var author: String
    var price: Double
    var image: String

    var accessibleTitle: String {
            // Logic to determine the accessibility title based on the book's properties
            return "Accessibility: \(title)"
        }
}


