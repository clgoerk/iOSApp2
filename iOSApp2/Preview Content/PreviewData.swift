//
//  PreviewData.swift
//  iOSApp2
//
//  Created by Chris Goerk on 2025-02-05.
//

import SwiftUI
import Foundation // Ensure UUID() is recognized

let initialCards: [Card] = [
  Card(id: UUID(), backgroundColor: .black, elements: initialElements),
  
  Card(id: UUID(), backgroundColor: .black, elements: [
    ImageElement(imageName: "Skydome"),
    TextElement(text: "A catcher’s mitt, but not for play—this one stands here night and day. It won’t move, it won’t bend, but it’s ready for a ball to send!", textColor: .black)
  ]),
  
  Card(id: UUID(), backgroundColor: .black, elements: [
    ImageElement(imageName: "Museum"),
    TextElement(text: "I ruled the land in days of old, with teeth so sharp and stories told. Though now just bones, I stand so tall—find me if you dare at all!", textColor: .black)
  ]),

  Card(id: UUID(), backgroundColor: .black, elements: [
    ImageElement(imageName: "Ripleys"),
    TextElement(text: "With a snout like a saw and a body so wide, I glide through the water with nothing to hide. Beneath the tunnel, take a good peek—find me here if it’s adventure you seek!", textColor: .black)
  ]),
  
  Card(id: UUID(), backgroundColor: .black, elements: [
    ImageElement(imageName: "Zoo"),
    TextElement(text: "In a world where stripes are key, look for the rarest of all. Not black, not orange, but snowy white—find this majestic creature who prowls in the dark.", textColor: .black)
  ]),

  Card(id: UUID(), backgroundColor: .black, elements: [
    ImageElement(imageName: "StLawrence"),
    TextElement(text: "Where history meets flavor, a Canadian classic sizzles. Look for the place where crispy, salty bacon is the star of a sandwich — served with a story and a bite that’s as rich as the market itself.", textColor: .black)
  ]),

  Card(id: UUID(), backgroundColor: .black, elements: [
    ImageElement(imageName: "HockeyHallOfFame"),
    TextElement(text: "Find the trophy that’s been awarded to the best team in hockey each year since 1893. It’s the most coveted prize in the sport, and you’ll find it in a place where legends are celebrated.", textColor: .black)
  ]),

  Card(id: UUID(), backgroundColor: .black, elements: [
    ImageElement(imageName: "ScienceCenter"),
    TextElement(text: "In a space where planets spin, find a model that shows the cosmic win. From the Sun to the outermost ring, the planets align, as the stars will sing. Seek out this scale that stretches far, and discover the secrets of each shining star.", textColor: .black)
  ]),

  Card(id: UUID(), backgroundColor: .black, elements: [
    ImageElement(imageName: "CNE"),
    TextElement(text: "Reach for the skies, where colors fly, and see the fairgrounds from way up high. A giant wheel that turns with grace, find this landmark, and claim your space!", textColor: .black)
  ]),

  Card(id: UUID(), backgroundColor: .black, elements: [
    ImageElement(imageName: "ago"),
    TextElement(text: "A solitary tree, its roots grounded in the northern wilds. Seek the painting where a lonely pine stands proud against the rugged Canadian backdrop. The wilderness whispers in green and blue — look for the work by the artist who brought Canada’s forests to life.", textColor: .black)
  ]),
]

let initialElements: [CardElement] = [
  ImageElement(imageName: "CNTower"),
  TextElement(text: "Step out if you dare! Beneath your feet, the city stares. A fearless view, high in the air—find this spot if you care to compare!", textColor: .black)
]
