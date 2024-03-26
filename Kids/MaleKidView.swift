//
//  MaleKidView.swift
//  Spokid Project
//
//  Created by Lucas Santos on 15/02/24.
//

import SwiftUI

struct MaleKidView: View {
    @Binding var router: Router
    
    var body: some View {
        ZStack(alignment: .topTrailing) {
            Image("MaleKid")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .zIndex(0)
            
            Button(action: {
                router = .KidFase1
            }, label: {
                Text("Phase 1")
                    .padding(EdgeInsets(top: 200, leading: 0, bottom: 0, trailing: 300))
                    .background(Color.white)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            })
            .padding(EdgeInsets(top: 100, leading: 0, bottom: 0, trailing: 200))
            .zIndex(1)
            .opacity(0.1)

            
        }
    }
}
