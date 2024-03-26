//
//  MaleAdultHealthScoreView.swift
//  Spokid
//
//  Created by Lucas Santos on 16/02/24.
//

import SwiftUI

struct MaleAdultHealthScoreView: View {
    @Binding var router: Router
    
    var body: some View {
        ZStack {
            Image("MaleAdultHealthScore")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .zIndex(0)
            
            Button(action: {
                router = .MaleAdultHealthEnd
            }, label: {
                Text("Next")
                    .padding(EdgeInsets(top: 150, leading: 0, bottom: 0, trailing: 350))
                    .background(Color.white)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            })
            .padding(EdgeInsets(top: 600, leading: 540, bottom: 0, trailing: 0))
            .zIndex(1)
            .opacity(0.1)
            
        }
    }
}
