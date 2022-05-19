import SwiftUI

struct LessonButton: View {
    
    @State var theme_name:String
    @State var theme_second_name:String
    @State var under_first_word:String
    @State var under_second_word:String
    
    var body: some View {
            HStack {
                VStack(alignment: .leading, spacing: 7) {
                    
                    Text(theme_second_name)
                        .foregroundColor(.gray)
                    Text(theme_name)
                        .foregroundColor(.black)
                        .font(.system(size: 19).bold())
                    
                    HStack {
                        Text(under_first_word)
                            .foregroundColor(.white)
                            .padding(.horizontal, 10)
                            .padding(.vertical, 0.5)
                            .background(Color("persic1"))
                            .cornerRadius(12)
                        
                        Text(under_second_word)
                            .foregroundColor(.white)
                            .padding(.horizontal, 10)
                            .padding(.vertical, 0.5)
                            .background(Color("persic1"))
                            .cornerRadius(12)
                    }
                }
                Spacer()
                promViewLesson(starSize: 22, spacing: 1)
            }.padding(.horizontal)
        
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(.vertical, 10)
        .background(Color("lightGray"))
        .cornerRadius(20)
        .padding(.horizontal)
    }
}

struct LessonButton_Previews: PreviewProvider {
    static var previews: some View {
        LessonButton(theme_name: "Настоящее время",
                     theme_second_name: "Present Simple",
                     under_first_word: "I do",
                     under_second_word: "We read")
        .environmentObject(FormsViewModel())
        
    }
}
