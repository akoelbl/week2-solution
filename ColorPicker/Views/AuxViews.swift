import SwiftUI


struct TitledColorSlider: View {
  let title: String
  let tint: Color
  @Binding var sliderValue: Double
  
  var body: some View {
    VStack {
      Text(title)
        .font(.title2)
      HStack {
        Slider(value: $sliderValue)
          .tint(tint)
        Text("\(Int(sliderValue * 255))")
      }
    }
  }
}

struct ThreeSliders: View {
  @Binding var redColor: Double
  @Binding var greenColor: Double
  @Binding var blueColor: Double
  
  var body: some View {
    VStack {
      TitledColorSlider(title: "Red", tint: .red, sliderValue: $redColor)
      TitledColorSlider(title: "Green", tint: .green, sliderValue: $greenColor)
      TitledColorSlider(title: "Blue", tint: .blue, sliderValue: $blueColor)
    }
  }
}

struct Title: View {
  var body: some View {
    Text("Color Picker")
      .bold()
      .font(.largeTitle)
  }
}

struct SetColorButton: View {
  @Binding var foregroundColor: Color
  @Binding var redColor: Double
  @Binding var greenColor: Double
  @Binding var blueColor: Double
  
  var body: some View {
    Button("Set Color") {
      foregroundColor = Color(red: redColor, green: greenColor, blue: blueColor)
    }
      .padding(20)
      .background(
        RoundedRectangle(cornerRadius: 16)
          .fill(.blue)
          .border(.white, width: 2)
      )
      .foregroundColor(.white)
      .font(.title2)
      .padding(.top, Constants.buttonTopPadding)
  }
}

struct TitledColorSlider_Previews: PreviewProvider {
  static var previews: some View {
    VStack(spacing: 40) {
      Title()
      ThreeSliders(
        redColor: .constant(Constants.redStart),
        greenColor: .constant(Constants.greenStart),
        blueColor: .constant(Constants.blueStart)
      )
      SetColorButton(
        foregroundColor: .constant(.black),
        redColor: .constant(0),
        greenColor: .constant(0),
        blueColor: .constant(0)
      )
    }
    .padding()
  }
}
