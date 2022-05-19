import SwiftUI

struct AllGrammarThemes: View {
    
    @EnvironmentObject var viewModel: FormsViewModel
    
    var body: some View {
        
        NavigationView {
            ScrollView {
                
                VStack(alignment: .leading) {
                    
                    VStack(alignment: .leading) {
                        Text("Грамматика")
                            .foregroundColor(Color("lightGray"))
                            .font(.system(size: 40).bold())
                            .cornerRadius(12)
                        
                        Text("Здесь можно потренировать правила")
                            .foregroundColor(Color("lightGray"))
                            .font(.system(size: 15).bold())
                            .cornerRadius(12)
                            .lineLimit(nil)
                        Text("и заработать звёзды")
                            .foregroundColor(Color("lightGray"))
                            .font(.system(size: 15).bold())
                            .cornerRadius(12)
                            .lineLimit(nil)
                    }
                    .frame(height: 70, alignment: .leading)
                    .padding(.horizontal, 27)
                    
                    Spacer()
                    
                    VStack(alignment: .leading,spacing: 13) {
                        Text("Начальный")
                            .foregroundColor(Color("lightGray"))
                            .font(.system(size: 23).bold())
                            .cornerRadius(12)
                            .padding(.horizontal, 27)
                        
                        NavigationLink(destination: PresentSimple()) {
                            LessonButton(theme_name: "Present Simple",
                                         theme_second_name: "Настоящее время",
                                         under_first_word: "I do",
                                         under_second_word: "We read")
                        }
                        
                        NavigationLink(destination: FutureSimple()) {
                            LessonButton(theme_name: "Future Simple",
                                         theme_second_name: "Будущее время",
                                         under_first_word: "I will",
                                         under_second_word: "They won't")
                        }
                        
                        NavigationLink(destination: ToBe()) {
                            LessonButton(theme_name: "Modal Verbs",
                                         theme_second_name: "Глагол to be",
                                         under_first_word: "I am here",
                                         under_second_word: "She isn't")
                        }
                    }
                    
                    Spacer()
                    
                    VStack(alignment: .leading,spacing: 13) {
                        
                        Text("Средний")
                            .foregroundColor(Color("lightGray"))
                            .font(.system(size: 23).bold())
                            .cornerRadius(12)
                            .padding(.horizontal, 27)
                        
                        NavigationLink(destination: ModalVerbs()) {
                            LessonButton(theme_name: "Modal Verbs",
                                         theme_second_name: "Хотел бы",
                                         under_first_word: "Would you like",
                                         under_second_word: "wouldn't")
                        }
                        
                        NavigationLink(destination: PastSimple()) {
                            LessonButton(theme_name: "Past Simple",
                                         theme_second_name: "Неправильные глаголы",
                                         under_first_word: "went",
                                         under_second_word: "ment")
                        }
                        
                        NavigationLink(destination: Adjectives()) {
                            LessonButton(theme_name: "Adjectives",
                                         theme_second_name: "Сравнение",
                                         under_first_word: "better",
                                         under_second_word: "faster")
                        }
                    }
                    
                    Spacer()
                    
                    VStack(alignment: .leading,spacing: 13) {
                        Text("Продвинутый")
                            .foregroundColor(Color("lightGray"))
                            .font(.system(size: 23).bold())
                            .cornerRadius(12)
                            .padding(.horizontal, 27)
                        NavigationLink(destination: PresentContinuous()) {
                            LessonButton(theme_name: "Present Continuous",
                                         theme_second_name: "Present Progressive",
                                         under_first_word: "I'am hating",
                                         under_second_word: "She's crying")
                        }
                        NavigationLink(destination: Pronouns()) {
                            LessonButton(theme_name: "Past Simple",
                                         theme_second_name: "Неправильные глаголы",
                                         under_first_word: "went",
                                         under_second_word: "ment")
                        }
                        NavigationLink(destination: Prepositions()) {
                            LessonButton(theme_name: "Prepositions",
                                         theme_second_name: "Потому что",
                                         under_first_word: "because",
                                         under_second_word: "as, so")
                        }
                    }
                }
            }
            .navigationBarHidden(true)
            .background(LinearGradient(colors: [Color("persic1"),
                                                Color("persic2")],
                                   startPoint: .top, endPoint: .bottom))
        }
    }
}

struct AllGrammarThemes_Previews: PreviewProvider {
    static var previews: some View {
        AllGrammarThemes()
            .environmentObject(FormsViewModel())
    }
}
