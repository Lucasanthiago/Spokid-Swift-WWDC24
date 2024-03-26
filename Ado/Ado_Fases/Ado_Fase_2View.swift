//
//  Ado_Fase_2View.swift
//  Spokid
//
//  Created by Lucas Santos on 16/02/24.
//

import SwiftUI

struct Ado_Fase_2View: View {
    @Binding var router: Router
    
    var body: some View {
        ZStack {
            Image("Ado_Fase_2")
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
                .padding(EdgeInsets(top: 190, leading: 0, bottom: 100, trailing: 0))
                
                Button(action: {
                    router = .AdoFase3
                }, label: {
                    Text("Next")
                        .padding(EdgeInsets(top: 100, leading: 300, bottom: 0, trailing: 0))
                        .background(Color.white)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                })
                .padding(EdgeInsets(top: 180, leading: 0, bottom: 0, trailing: 0))
                
                Spacer()
            }
            .padding()
            .zIndex(1)
            .opacity(0.1)
        }
    }
}
