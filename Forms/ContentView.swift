import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var viewModel: FormsViewModel
    
    var content: some View {
        
        VStack(spacing: 15) {
            
            Text(viewModel.counter_of_right_answer)
            
            Text(viewModel.question.question)
                .multilineTextAlignment(.center)
                .font(.custom("Avenir", size: 20).bold())
            ForEach(viewModel.question.choices, id: \.self) { choice in
                
                
                Button {
                    viewModel.checkAnswer(choice)
                } label: {
                    TitleTextTheme1(text: choice)
                }
                .buttonStyle(.bordered)
                .background(Color.yellow)
                .cornerRadius(10)
                .padding(.horizontal)
            }
        }
        .padding(.vertical, 300)
        .background(LinearGradient(colors: [Color("light red"), Color.gray], startPoint: .top, endPoint: .bottom)).ignoresSafeArea()
    }
    var body: some View {
        
        VStack {
            if viewModel.gameOver {
                FormTestResultView()
            } else {
                content
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(FormsViewModel())
    }
}
