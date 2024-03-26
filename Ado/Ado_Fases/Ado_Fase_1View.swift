//
//  Ado_Fase_1View.swift
//  Spokid
//
//  Created by Lucas Santos on 16/02/24.
//

import SwiftUI

struct Ado_Fase_1View: View {
    @Binding var router: Router
    
    var body: some View {
        ZStack {
            Image("Ado_Fase_1")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .zIndex(0)
            
            
            VStack {
                Spacer()
                
                HStack {
                    Button(action: {
                        gym = true
                        router = .AdoFase2
                    }, label: {
                        Text("GYM")
                            .padding(EdgeInsets(top: 150, leading: 0, bottom: 0, trailing: 100))
                            .background(Color.white)
                            .foregroundColor(.white)
                            .cornerRadius(100)
                    })
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 60))
                    
                    Button(action: {
                        gym = false
                        router = .AdoFase2
                    }, label: {
                        Text("Rest")
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

