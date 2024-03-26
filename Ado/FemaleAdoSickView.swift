//
//  FemaleAdoSickView.swift
//  Spokid
//
//  Created by Lucas Santos on 16/02/24.
//

import SwiftUI

struct FemaleAdoSickView: View {
    @Binding var router: Router
    
    var body: some View {
        ZStack(alignment: .topTrailing) {
            Image("FemaleAdoSick")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .zIndex(0)
            
            Button(action: {
                router = .AdoFase1
            }, label: {
                Text("Phase 3")
                    .padding(EdgeInsets(top: 200, leading: 0, bottom: 0, trailing: 300))
                    .background(Color.white)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            })
            .padding(EdgeInsets(top: 650, leading: 0, bottom: 0, trailing: 200))
            .zIndex(1)
            .opacity(0.1)

        }
    }
}
