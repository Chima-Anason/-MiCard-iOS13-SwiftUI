//
//  InfoView.swift
//  ChimaCard
//
//  Created by mac on 19/02/2023.
//  Copyright © 2023 Chima. All rights reserved.
//

import SwiftUI

struct InfoView: View {
    let text: String
    let imageName: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .frame(height: 50.0)
            .foregroundColor(Color("Info Color-1"))
            .overlay(HStack {
                Image(systemName: imageName)
                    .foregroundColor(.green)
                Text(text)
                //This line below is required if you want the app to display correctly in dark mode.
                    //In dark mode all Text is automatically rendered as white.
                    //So we've created a custom color in the assets folder called Infor Color and used it here.
                .foregroundColor(Color("Info Color"))
            })
            .padding(.all)
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(text: "Hello", imageName: "phone.fill")
            .previewLayout(.sizeThatFits)
    }
}
