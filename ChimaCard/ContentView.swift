//
//  ContentView.swift
//  ChimaCard
//
//  Created by mac on 19/02/2023.
//  Copyright © 2023 Chima. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color(red: 0.16, green: 0.50, blue: 0.73, opacity: 1.00)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("chima2")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width : 100.0, height: 150.0)
                    .clipShape(Circle())
                    .overlay(
                        Circle().stroke(Color.white, lineWidth: 4)
                )
                    
                Text("Chima Anason")
                    .font(Font.custom("Pacifico-Regular", size: 40))
                    .bold()
                    .foregroundColor(.white)
                Text("IOS & Java Developer")
                    .foregroundColor(.white)
                    .font(.system(size: 25))
                Divider()
                InfoView(text: "+44 123-456-78", imageName: "phone.fill")
                InfoView(text: "tblynxx@gmail.com", imageName: "envelope.fill")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


