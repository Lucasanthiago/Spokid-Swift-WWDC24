//
//  CooseBabyView.swift
//  Spokid Project
//
//  Created by Lucas Santos on 01/02/24.
//

import SwiftUI

struct ChooseBabyView: View {
    @Binding var router: Router
    
    var body: some View {
        ZStack {
            Image("ChooseGender")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .zIndex(0)
            
            VStack {
                Spacer()
                
                HStack(alignment: .center, spacing: 20) {
                    Button(action: {
                        genderMale = true
                        router = .MaleBaby
                    }, label: {
                        Text("Male")
                            .padding(EdgeInsets(top: 70, leading: 0, bottom: 0, trailing: 110))
                            .background(Color.white)
                            .foregroundColor(.white)
                            .cornerRadius(8)
                    })
                    
                    Button(action: {
                        genderMale = false
                        router = .FemaleBaby
                    }, label: {
                        Text("Female")
                            .padding(EdgeInsets(top: 70, leading: 0, bottom: 0, trailing: 110))
                            .background(Color.white)
                            .foregroundColor(.white)
                            .cornerRadius(8)
                    })
                }
                
                Spacer()
            }
            .padding(EdgeInsets(top: 400, leading: 0, bottom: 0, trailing: 0))
            .zIndex(1)
            .opacity(0.1)

        }
    }
}

