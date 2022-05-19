import SwiftUI

struct moveNextTestButton: View {
    var body: some View {
        
        NavigationLink(destination: ContentView()) {
            Text("Тренировать правило")
                .foregroundColor(Color.black)
                .padding()
                .frame(width: 300, height: 40)
                .background(LinearGradient(colors: [Color.yellow, Color.orange], startPoint: .leading, endPoint: .trailing))
                .cornerRadius(12)
                .padding(8)
                .padding(.horizontal, 12)
                .font(.system(size: 18).bold())
                .foregroundColor(.black)
        }
    }
}

struct moveNextTestButton_Previews: PreviewProvider {
    static var previews: some View {
        moveNextTestButton()
    }
}
