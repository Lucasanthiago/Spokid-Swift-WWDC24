//
//  Kid_Fase_1View.swift
//  Spokid Project
//
//  Created by Lucas Santos on 15/02/24.
//

import SwiftUI

struct Kid_Fase_1View: View {
    @Binding var router: Router
    
    var body: some View {
        ZStack {
            Image("Kid_Fase_1")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .zIndex(0)
            
            VStack {
                Spacer()
                
                HStack {
                    Button(action: {
                        nataçao = true
                        router = .KidFase2
                    }, label: {
                        Text("Natacao")
                            .padding(EdgeInsets(top: 150, leading: 0, bottom: 0, trailing: 100))
                            .background(Color.white)
                            .foregroundColor(.white)
                            .cornerRadius(100)
                    })
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 60))
                    
                    Button(action: {
                        nataçao = false
                        router = .KidFase2
                    }, label: {
                        Text("Watch TV")
                            .padding(EdgeInsets(top: 150, leading: 0, bottom: 0, trailing: 100))
                            .background(Color.white)
                            .foregroundColor(.white)
                            .cornerRadius(100)
                    })
                }
                
                Spacer()
            }
            .padding(EdgeInsets(top: 0, leading: 0, bottom: 220, trailing: 0))
            .zIndex(1)
            .opacity(0.1)
        }
    }
}
