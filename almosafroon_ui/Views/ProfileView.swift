//
//  ProfileView.swift
//  almosafroon_ui
//
//  Created by Ahmed Almohammed on 19/04/2022.
//

import SwiftUI

// this is the profile view with all its customized views and properties.
struct ProfileView: View {
    
    // we set the background color of the top bar upon entering this view
    init() {
      let coloredAppearance = UINavigationBarAppearance()
      coloredAppearance.configureWithOpaqueBackground()
      coloredAppearance.backgroundColor = .gray
      coloredAppearance.titleTextAttributes = [.foregroundColor: UIColor.white]
      coloredAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white]
      
      UINavigationBar.appearance().standardAppearance = coloredAppearance
      UINavigationBar.appearance().compactAppearance = coloredAppearance
      UINavigationBar.appearance().scrollEdgeAppearance = coloredAppearance
      
      UINavigationBar.appearance().tintColor = .white
    }
    
    var body: some View {
        NavigationView {
            ProfileData()
                .navigationBarTitleDisplayMode(.inline)
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        MyButton()
                            .padding(.horizontal, -20)
                    }
                    ToolbarItem(placement: .navigationBarTrailing){
                        Text("الملف الشخصي")
                            .foregroundColor(.white)
                            .font(.title)
                            .accessibilityAddTraits(.isHeader)
                    }

                }
            
        }
    }
}

// this struct is responsible for displaying the background cover, profile image etc.
struct ProfileData: View{
    var body: some View{
        VStack{
            Image("profile_background")
                .resizable()
                .frame(maxWidth: .infinity, maxHeight: 200)
                .overlay(
                        Circle()
                            .stroke(.black)
                            .frame(width: 85, height: 85)
                            .alignmentGuide(.bottom) { $0[VerticalAlignment.center] }
                            , alignment: .bottom
                )
            
            Spacer()
            VStack(spacing: 30){
                Spacer()
                Text("Ahmed Almohammed")
                    .bold()
                HStack{
                    Text("master.necro15@gmail.com")
                    Text("*")
                    Text("@Almohammed2022")
                }
                NewTripButton()
                HStack(spacing: 20){
                    FavoriteButton()
                    TripsButton()
                }
            }
            Spacer()
            Rectangle()
                .cornerRadius(20)
                .frame(maxWidth: .infinity, maxHeight: 300)
                .padding()
                .foregroundColor(.blue)
        }
    }
}

// responsible for customizing the sign out button
struct MyButton: View{
    
    var body: some View{
            Button(action:{
                print("Signed Out")
            }){
                Text("تسجيل خروج")
                Image(systemName: "rectangle.portrait.and.arrow.right")
            }
            .padding(EdgeInsets(top: 5, leading: 5, bottom: 5, trailing: 5))
            .frame(maxWidth: .infinity)
            .background(Color("sign_out_button"))
            .foregroundColor(.white)
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
            .previewDevice("iPhone 13 Pro Max")
    }
}
