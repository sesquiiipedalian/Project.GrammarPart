import SwiftUI

struct promViewLesson: View {
    
    @EnvironmentObject var viewModel: FormsViewModel
    
    var starSize = 35.0
    var spacing = 10.0
    
    var body: some View {
        VStack(spacing: 40) {
            HStack(spacing: spacing) {
                ForEach(0 ..< 3) { item in
                    
                    let fStar = item < viewModel.starCount + 2
                    
                    Image(systemName: fStar ? "star.fill" : "star")
                        .foregroundColor(fStar ? .yellow : .gray)
                        .foregroundColor(fStar ? .yellow : .gray)
                }
            }
            .font(.system(size: starSize))

        }
    }
}

struct promViewLesson_Previews: PreviewProvider {
    static var previews: some View {
        promViewLesson()
            .environmentObject(FormsViewModel())
    }
}
