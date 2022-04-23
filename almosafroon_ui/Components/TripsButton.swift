//
//  TripsButton.swift
//  almosafroon_ui
//
//  Created by Ahmed Almohammed on 19/04/2022.
//

import SwiftUI

// struct foe the customized trips button in the profile view
struct TripsButton: View {
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(.mint)
                .frame(width: 100, height: 50)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            HStack {
                Text("الرحلات")
                Image(systemName: "airplane")
            }
        }
        .onTapGesture {
            print("Button Pressed")
        }
    }
}

struct TripsButton_Previews: PreviewProvider {
    static var previews: some View {
        TripsButton()
    }
}
