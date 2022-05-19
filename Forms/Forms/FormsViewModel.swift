import Foundation

class FormsViewModel: ObservableObject {
    
    @Published var formsBrain = FormsBrain()
    
    var starCount: Int {
        formsBrain.stars
    }
    
    var gameOver: Bool{
        formsBrain.gameOver
    }
    
    var counter_of_right_answer: String{
        String(formsBrain.count)
    }
    
    var question: Question {
        formsBrain.getQuestion()
    }

    func checkAnswer(_ answer: String) { // /?/
        formsBrain.checkAnswerBool(userAnswer: answer)
    }
    
    
//    func getTestResult(answer: String, cter: Counter) {
//        if formsBrain.checkAnswerBool(userAnswer: answer) {
//            cter.increment()
//        }
//    }
    
}
