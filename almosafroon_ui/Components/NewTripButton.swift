//
//  NewTripButton.swift
//  almosafroon_ui
//
//  Created by Ahmed Almohammed on 19/04/2022.
//

import SwiftUI

// struct for the customized new trips button in the profile view
struct NewTripButton: View {
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(.orange)
                .frame(width: 200, height: 50)
                .clipShape(Capsule())
            HStack {
                Spacer()
                Spacer()
                Text("رحلة جديدة")
                    .font(.headline)
                    .foregroundColor(.white)
                Spacer()
                ZStack {
                    Circle()
                        .frame(width: 50, height: 50)
                        .foregroundColor(Color("add_button"))
                    Image(systemName: "plus")
                        .font(.headline)
                        .foregroundColor(.white)
                }
            }
            .frame(maxWidth: 200)
        }
        .onTapGesture {
            print("Button Pressed")
        }
    }
}

struct NewTripButton_Previews: PreviewProvider {
    static var previews: some View {
        NewTripButton()
            .previewLayout(.sizeThatFits)
    }
}
