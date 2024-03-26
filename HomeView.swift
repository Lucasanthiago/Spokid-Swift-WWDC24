//
//  HomeView.swift
//  Spokid Project
//
//  Created by Lucas Santos on 01/02/24.
//

import SwiftUI

struct HomeView: View {
    @Binding var router: Router
    
    var body: some View {
        ZStack(alignment: .topTrailing) {
            Image("Home")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .zIndex(0)
            
            VStack {
                            Spacer()
                            HStack {
                                Spacer()
                                Button(action: {
                                    router = .ChooseBaby
                                }, label: {
                                    Text("start")
                                        .padding(EdgeInsets(top: 80, leading: 0, bottom: 0, trailing: 380))
                                        .background(Color.white)
                                        .foregroundColor(.white)
                                        .cornerRadius(30)
                                })
                                Spacer()
                            }
                            Spacer()
                        }
            .padding(EdgeInsets(top: 100, leading: 0, bottom: 00, trailing: 0))
                        .zIndex(1)
                        .opacity(0.1)
                        
        }
    }
}
