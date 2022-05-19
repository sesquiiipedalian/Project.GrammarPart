import SwiftUI
import UIKit

struct WordsHome: View {
    
    @State var progress: CGFloat = 0
    @State var characters: [Character] = characters_
    
    // MARK: Custom Grid Arrays
    // For Drag Part
    
    @State var shuffledRows: [[Character]] = []
    //For Drop Part
    @State var rows: [[Character]] = []
    
    var body: some View {
        VStack(spacing: 15) {
            NavBar()
            
            VStack(alignment: .leading, spacing: 30) {
                Text("From this sentence")
                    .font(.title2.bold())
                
                Image("Character")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(.trailing, 100)
            }
            .padding(.top, 30)
            
            // MARK: Grad Drop Area
        }
        .padding()
    }
    
    @ViewBuilder
    func DragArea()->some View {
        VStack(spacing: 12) {
            
        }
    }
    
    // MARK: Custom Nav Bar
    @ViewBuilder
    func NavBar()->some View {
        
        HStack(spacing: 18) {
            Button {
                
            } label: {
                Image(systemName: "xmark")
                    .font(.title3)
                    .foregroundColor(.gray)
            }
            
            GeometryReader { proxy in
                ZStack(alignment: .leading) {
                    Capsule()
                        .fill(.gray.opacity(0.25))
                    
                    Capsule()
                        .fill(Color("green"))
                        .frame(width: proxy.size.width * progress)
                }
            }
            .frame(height: 20)
            
            Button {
                
            } label: {
                Image(systemName: "suit.heart.fill")
                    .font(.title3)
                    .foregroundColor(.red)
            }
        }
    }
    
    func generateGrid()->[[Character]] {
         
        for item in characters.enumerated() {
            let textSize = textSize(character: item.element)
            
            characters[item.offset].textSize = textSize
        }
        
        var gridArray: [[Character]] = []
        var tempArray: [Character] = []
        
        var currentWidth: CGFloat = 0
        
        let totalScreenWidth: CGFloat = UIScreen.main.bounds.width - 30
        
        for character in characters {
            currentWidth += character.textSize
            
            if currentWidth < totalScreenWidth {
                tempArray.append(character)
            } else {
                gridArray.append(tempArray)
                tempArray = []
                currentWidth = character.textSize
                tempArray.append(character)
            }
        }
        
        return gridArray
    }
    
    func textSize(character: Character)-> CGFloat {
        let font = UIFont.systemFont(ofSize: character.fontSize)
        
        let attributes = [NSAttributedString.Key.font : font]
        
        let size = (character.value as NSString).size(withAttributes: attributes)
        
        //Horizontal Padding
        return size.width * (character.padding * 2)
    }
}

struct WordsHome_Previews: PreviewProvider {
    static var previews: some View {
        WordsContent()
    }
}
