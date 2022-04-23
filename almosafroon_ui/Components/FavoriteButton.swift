//
//  FavoriteButton.swift
//  almosafroon_ui
//
//  Created by Ahmed Almohammed on 19/04/2022.
//

import SwiftUI

// struct for the customized favorite button in the profile view.
struct FavoriteButton: View {
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(.gray)
                .frame(width: 100, height: 50)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            HStack {
                Text("المفضلة")
                Image(systemName: "heart.fill")
            }
        }
        .onTapGesture {
            print("Button Pressed")
        }
    }
}

struct FavoriteButton_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteButton()
    }
}
