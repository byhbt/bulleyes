//
//  ContentView.swift
//  Bulleyes
//
//  Created by Thanh Huynh on 5/29/22.
//

import SwiftUI

struct ContentView: View {
  @State private var alertIsVisible: Bool = false
  @State private var sliderValue: Double = 50.0
  @State private var game: Game = Game()

  var body: some View {
    VStack {
      VStack {
        Text("🎯🎯🎯 \n Put the BullEye as close as you can to")
          .bold()
          .kerning(2.0)
          .multilineTextAlignment(.center)
          .lineSpacing(4.0)
          .font(.footnote)
        Text(String(game.target))
          .font(.largeTitle)
          .fontWeight(.black)
          .kerning(2.0)
        HStack {
          Text("1").bold()
          Slider(value: self.$sliderValue, in: 1.0...100.0)
          Text("100").bold()
        }
      }
      Button(action: {
        print("Hello SwiftUI")
        self.alertIsVisible = true
      }) {
        Text("Hit me!")
      }
      .alert("Hello there", isPresented: $alertIsVisible) {
        Button("Awesome!") {}
      } message: {
        let roundedValue = Int(self.sliderValue)
        Text("The slider value is \(roundedValue). Score: \(game.points(sliderValue:  roundedValue)) \n")
      }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
      .previewInterfaceOrientation(.portraitUpsideDown)
  }
}
