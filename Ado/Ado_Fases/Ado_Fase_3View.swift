//
//  Ado_Fase_3View.swift
//  Spokid
//
//  Created by Lucas Santos on 16/02/24.
//

import SwiftUI

struct Ado_Fase_3View: View {
    @Binding var router: Router
    
    var body: some View {
        ZStack {
            Image("Ado_Fase_3")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .zIndex(0)
                     
            VStack {
                Spacer()
                
                HStack {
                    Button(action: {
                        exam = false
                        router = .AdoFase4
                    }, label: {
                        Text("Judo")
                            .padding(EdgeInsets(top: 150, leading: 0, bottom: 0, trailing: 100))
                            .background(Color.white)
                            .foregroundColor(.white)
                            .cornerRadius(100)
                    })
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 60))
                    
                    Button(action: {
                        exam = true
                        router = .AdoFase4
                    }, label: {
                        Text("Study")
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

