import SwiftUI
import SwiftCMasher

struct ContentView: View {

   let lineHeight: CGFloat = 80
   @State private var colorScheme: ColorScheme = .dark

   func toggleColorScheme() {
      if colorScheme == .light {
         colorScheme = .dark
      } else {
         colorScheme = .light
      }
   }

   var body: some View {
      NavigationStack {
         List(ColorMap.allCases) { colorMap in
            VStack {
               HStack {
                  Text(colorMap.name)
                  Spacer()
               }
               HStack(spacing: 15) {
                  Rectangle()
                     .fill(
                        LinearGradient(
                           gradient: Gradient(colors: colorMap.colors()),
                           startPoint: .top,
                           endPoint: .bottom
                        )
                     )
                  Circle()
                     .fill(
                        RadialGradient(
                           gradient: Gradient(colors: colorMap.colors()),
                           center: .center,
                           startRadius: 0,
                           endRadius: lineHeight/2
                        )
                     )
                  Circle()
                     .fill(
                        RadialGradient(
                           gradient: Gradient(colors: colorMap.colors().reversed()),
                           center: .center,
                           startRadius: 0,
                           endRadius: lineHeight/2
                        )
                     )
               }
               .frame(height: lineHeight)
               Rectangle()
                  .fill(
                     LinearGradient(
                        gradient: Gradient(colors: colorMap.colors()),
                        startPoint: .leading,
                        endPoint: .trailing
                     )
                  )
                  .frame(height: lineHeight/2)
            }
         }
         .navigationTitle("CMasher Color Maps")
         .navigationBarTitleDisplayMode(.inline)
         .navigationBarItems(
            trailing: Button(action: { toggleColorScheme() }) {
               Image(systemName: "circle.fill")
                  .foregroundColor(.primary)
            }
         )
      }
      .ignoresSafeArea()
      .preferredColorScheme(colorScheme)
   }
}

#Preview {
   ContentView()
}
