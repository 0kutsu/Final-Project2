//
//  UnselectedFlashCardSetView.swift
//  Final Project
//
//  Created by Mati Okutsu (student LM) on 5/29/24.
//

import SwiftUI

struct UnselectedFlashCardSetView: View {
    @State var flashCardSet: FlashCardSet
    @EnvironmentObject var user: User
    var body: some View {
        VStack {
            VStack {
                HStack {
                    Spacer()
                    flashCardSet.image
                        .resizable()
                        .scaledToFit()
                        .frame(height: 60)
                            .cornerRadius(5)
                    
                        VStack {
                            HStack {
                                Text(flashCardSet.name)
                                .font(textFont(name: "helvetica-bold", size: 20))
                                .foregroundColor(.blackA)
                                Spacer()
                            }
                            
                            HStack {
                                Text("\(flashCardSet.cards.count) cards")
                                    .foregroundColor(.grayA)
                                Spacer()
                            }
                            
                        }
                        .padding(.horizontal)
                    Spacer()
                    
                    Image(systemName: "circle")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .foregroundColor(Color.lightGrayA)
                        
                }
            }
            .padding()
            .background(.white)
            .cornerRadius(20)
        }
        .shadow(radius: 2, x: 0, y: 1)
    }
}

struct UnselectedFlashCardSetView_Previews: PreviewProvider {
    static var previews: some View {
        UnselectedFlashCardSetView(flashCardSet: flashCardSetExample)
            .environmentObject(User())
    }
}
