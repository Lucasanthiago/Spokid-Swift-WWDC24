//
//  Kid_Fase_4View.swift
//  Spokid
//
//  Created by Lucas Santos on 16/02/24.
//

import SwiftUI

struct Kid_Fase_4View: View {
    @Binding var router: Router
    
    var body: some View {
        ZStack {
            Image("Kid_Fase_4")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .zIndex(0)
            
            
            VStack {
                Spacer()
                
                HStack {
                    Button(action: {
                        playFriends = true
                        router = .KidFase4
                    }, label: {
                        Text("Play Friend")
                            .padding(EdgeInsets(top: 150, leading: 0, bottom: 0, trailing: 100))
                            .background(Color.white)
                            .foregroundColor(.white)
                            .cornerRadius(100)
                    })
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 60))
                    
                    Button(action: {
                        playFriends = false
                        router = .KidFase4
                    }, label: {
                        Text("Play Phone")
                            .padding(EdgeInsets(top: 150, leading: 0, bottom: 0, trailing: 100))
                            .background(Color.white)
                            .foregroundColor(.white)
                            .cornerRadius(100)
                    })
                }
                .padding(EdgeInsets(top: 190, leading: 0, bottom: 100, trailing: 0))
                
                Button(action: {
                    if genderMale == true {
                        if (nataçao == true) {
                            saudavel = saudavel + 1
                            router = .MalePreHealth
                        } else {
                            router = .MalePreSick
                        }
                    }
                    
                    if genderMale == false {
                        if (nataçao == true){
                            saudavel = saudavel + 1
                            router = .FemalePreHealth
                        } else {
                            router = .FemalePreSick
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
