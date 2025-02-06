//
//  Card.swift
//  iOSApp2
//
//  Created by Chris Goerk on 2025-02-05.
//

import SwiftUI

struct Card: Identifiable {
  let id = UUID()
  var backgroundColor: Color = .yellow
  var elements: [CardElement] = []
} // Card
