//
//  MessagingToolBar.swift
//  Final Project
//
//  Created by Mati Okutsu (student LM) on 6/1/24.
//

import SwiftUI

struct ChatToolBarView: View {
    var body: some View {
        ZStack {
            GradientBackground(color1: Color.orangeA, color2: Color.blueA, opacity: 1)
            HStack {
                Text("Easy")
                    .font(textFont(name: "helvetica", size: 20))
                    .foregroundColor(Color.orangeA)
                    .padding(10)
                    .padding(.horizontal, 10)
                    .background(Color.white, in: RoundedRectangle.init(cornerRadius: 30))
                Text("Classic")
                    .font(textFont(name: "helvetica", size: 20))
                    .foregroundColor(Color.white)
                    .padding(10)
                    .padding(.horizontal, 10)
                    .background(Color.orangeA, in: RoundedRectangle.init(cornerRadius: 30))
                Spacer()
                Button {
                    
                } label: {
                    Text("End chat")
                        .font(textFont(name: "helvetica-bold", size: 20))
                        .foregroundColor(Color.white)
                        .padding(.horizontal, 20)
                    
                }
            }
            .padding(20)

        }
    }
}

struct ChatToolBar_Previews: PreviewProvider {
    static var previews: some View {
        ChatToolBarView()
    }
}
