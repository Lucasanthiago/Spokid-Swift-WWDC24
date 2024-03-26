//
//  FemalePreHealthView.swift
//  Spokid
//
//  Created by Lucas Santos on 16/02/24.
//

import SwiftUI

struct FemalePreHealthView: View {
    @Binding var router: Router
    
    var body: some View {
        ZStack(alignment: .topTrailing) {
            Image("FemalePreHealth")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .zIndex(0)
            
            Button(action: {
                router = .PreFase1
            }, label: {
                Text("Phase 2")
                    .padding(EdgeInsets(top: 200, leading: 0, bottom: 0, trailing: 300))
                    .background(Color.white)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            })
            .padding(EdgeInsets(top: 350, leading: 0, bottom: 0, trailing: 200))
            .zIndex(1)
            .opacity(0.1)

            
        }
    }
}
