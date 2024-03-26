//
//  Ado_Fase_4View.swift
//  Spokid
//
//  Created by Lucas Santos on 16/02/24.
//

import SwiftUI

struct Ado_Fase_4View: View {
    @Binding var router: Router
    
    var body: some View {
        ZStack{
            Image("Ado_Fase_4")
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
                .padding(EdgeInsets(top: 190, leading: 0, bottom: 100, trailing: 0))
                
                Button(action: {
                    if genderMale == true {
                        if (gym == true){
                            saudavel = saudavel + 1
                            router = .MaleAdoHealth_Congrats
                        } else {
                            router = .MaleAdoSick_Congrats
                        }
                    }
                    
                    if genderMale == false {
                        if (gym == true){
                            saudavel = saudavel + 1
                            router = .FemaleAdoHealth_Congrats
                        } else {
                            router = .FemaleAdoSick_Congrats
                        }
                    }
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
