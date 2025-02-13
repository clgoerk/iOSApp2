//
//  CardStore.swift
//  iOSApp2
//
//  Created by Chris Goerk on 2025-02-05.
//

import SwiftUI

class CardStore: ObservableObject {
  @Published var cards: [Card] = []

  init(defaultData: Bool = false) {
    if defaultData {
      cards = initialCards
    }
    loadCards() // Load saved image paths on startup
  } // init

  // Save paths to storage
  func saveCards() {
    let data = try? PropertyListEncoder().encode(cards.map { $0.imagePath })
    let url = getDocumentsDirectory().appendingPathComponent("cards.plist")
    try? data?.write(to: url)
  } // saveCards()

  // Load paths from storage
  func loadCards() {
    let url = getDocumentsDirectory().appendingPathComponent("cards.plist")
    if let data = try? Data(contentsOf: url),
       let paths = try? PropertyListDecoder().decode([String?].self, from: data) {
      for (index, path) in paths.enumerated() {
        if index < cards.count {
          cards[index].imagePath = path
        }
      }
    }
  } // loadCards()

  func getDocumentsDirectory() -> URL {
    FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
  } // getDocumentsDirectory()

  func index(for card: Card) -> Int? {
    cards.firstIndex { $0.id == card.id }
  } // index()
} // CardStore
