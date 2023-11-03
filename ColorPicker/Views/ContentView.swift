import SwiftUI

struct ContentView: View {
  
  @State var redColor = Constants.redStart
  @State var greenColor = Constants.greenStart
  @State var blueColor = Constants.blueStart
  
  @State private var foregroundColor = Color(
    red: Constants.redStart,
    green: Constants.greenStart,
    blue: Constants.blueStart
  )
  
  @Environment(\.verticalSizeClass) var verticalSizeClass

  var body: some View {
    let colorRect = Rectangle()
      .foregroundColor(foregroundColor)
      .border(Color("BorderColor"), width: Constants.borderWidth)
    
    let threeSliders = ThreeSliders(
      redColor: $redColor,
      greenColor: $greenColor,
      blueColor: $blueColor
    )
    
    let setColorButton = SetColorButton(
      foregroundColor: $foregroundColor,
      redColor: $redColor,
      greenColor: $greenColor,
      blueColor: $blueColor
    )
    
    Group {
      if verticalSizeClass == .regular { // portrait
        VStack {
          colorRect
            .padding(.bottom, Constants.colorRectPortraitBottomPadding)
          threeSliders
          setColorButton
        }
          .background(Color("BackgroundColor"))
          .padding(Constants.vstackPortraitPadding)
      } else {  // landscape
        HStack(spacing: Constants.hstackLandscapeSpacing) {
          colorRect
            .padding(Constants.colorRectLandscapePadding)
          VStack {
            threeSliders
            setColorButton
          }
        }
      }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
      .preferredColorScheme(.light)
      .previewInterfaceOrientation(.portrait)
    ContentView()
      .preferredColorScheme(.dark)
      .previewInterfaceOrientation(.landscapeRight)
  }
}
