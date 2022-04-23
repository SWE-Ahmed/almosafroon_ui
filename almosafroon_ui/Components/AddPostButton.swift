//
//  AddPostButton.swift
//  almosafroon_ui
//
//  Created by Ahmed Almohammed on 19/04/2022.
//

import SwiftUI

// struct for the customized floating add post button
struct AddPostButton: View {
    var body: some View {
        
        ZStack{
            Circle()
                .foregroundColor(.gray)
                .frame(width: 70, height: 70)
            Image(systemName: "pencil")
                .resizable()
                .frame(maxWidth: 35, maxHeight: 35)
                .foregroundColor(.white)
        }
        .onTapGesture {
            print("Button Pressed")
        }
        
        
    }
}

struct AddPostButton_Previews: PreviewProvider {
    static var previews: some View {
        AddPostButton()
    }
}
