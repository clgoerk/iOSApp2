//
//  CardElement.swift
//  iOSApp2
//
//  Created by Chris Goerk on 2025-02-05.
//

import SwiftUI

protocol CardElement {
  var id: UUID { get }
} // CardElement

extension CardElement {
  func index(in array: [CardElement]) -> Int? {
    array.firstIndex { $0.id == id }
  }
} // CardElement extension

struct ImageElement: CardElement {
  var id = UUID()
  var imageName: String

  var image: Image {
    Image(imageName)
  }
} // ImageElement

struct SelectedImageElement: CardElement {
  var id = UUID()
  var imagePath: String
  
  var uiImage: UIImage? {
    UIImage(contentsOfFile: imagePath)
  }
} // SelectedImageElement

struct TextElement: CardElement {
  let id = UUID()
  var text = ""
  var textColor = Color.black
  var textFont = "Gill Sans"
} // TextElement
