//
//  Card.swift
//  iOSApp2
//
//  Created by Chris Goerk on 2025-02-05.
//

import SwiftUI

struct Card: Identifiable {
  let id: UUID
  var backgroundColor: Color = .white
  var elements: [CardElement] = []
  var imagePath: String?

  var selectedImage: UIImage? {
    guard let imagePath else { return nil }
    let url = URL(fileURLWithPath: imagePath)
    return UIImage(contentsOfFile: url.path)
  }
} // Card
