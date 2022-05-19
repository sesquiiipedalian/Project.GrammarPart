import SwiftUI

struct FormTestResultView: View {
    
    @EnvironmentObject var viewModel: FormsViewModel
    
    var body: some View {
        VStack {
            Text("Вы набрали \(viewModel.counter_of_right_answer) баллов из 5!   ")
                .foregroundColor(Color.black)
                .padding(.vertical, 20)
                .padding(.horizontal, 20)
                .background(LinearGradient(colors: [Color.orange, Color.yellow], startPoint: .leading, endPoint: .trailing))
                .cornerRadius(20)
                .font(.system(size: 25).bold())
                .foregroundColor(.black)
        }
        .background(Image("pic2")
            .blur(radius: 20)
            .ignoresSafeArea())
    }
}

struct FormTestResultView_Previews: PreviewProvider {
    static var previews: some View {
        FormTestResultView()
            .environmentObject(FormsViewModel())
    }
}
