//
//  TodayPage.swift
//  AppStore
//
//  Created by ramil on 17.04.2020.
//  Copyright © 2020 com.ri. All rights reserved.
//

import SwiftUI

struct TodayPage: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                HStack {
                    VStack(alignment: .leading) {
                        Text("Wednesday, April 15")
                            .foregroundColor(.gray)
                            .bold()
                            .font(.footnote)
                        Text("Today")
                            .font(.largeTitle)
                        .bold()
                    }
                    Spacer()
                    Button(action: {
                        self.loadProfile()
                    }) {
                        Image(systemName: "person.circle")
                            .resizable()
                            .frame(width: 50, height: 50, alignment: .trailing)
                    }
                    
                }.padding()
                
                HighlightView(category: "Cat", title: "You know you like him", message: "Isn't a cat everyone's favorite friend?")
                    .frame(height: 400, alignment: .leading)
                
                HighlightView(category: "Cat", title: "You know you like him", message: "Isn't a cat everyone's favorite friend?")
                .frame(height: 400, alignment: .leading)
                
                HighlightView(category: "Cat", title: "You know you like him", message: "Isn't a cat everyone's favorite friend?")
                .frame(height: 400, alignment: .leading)
            }
        }
    }
    
    func loadProfile() {
        
    }
}

struct HighlightView: View {
    var category: String
    var title: String
    var message: String
    
    var body: some View {
        VStack {
            ZStack {
                Image("cat1")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                LinearGradient(gradient: Gradient(colors: [.clear, Color.black.opacity(0.4)]), startPoint: .top, endPoint: .bottom)
                VStack(alignment: .leading) {
                    Text(category)
                        .bold()
                        .colorInvert()
                    Text(title)
                        .font(.title)
                        .bold()
                        .colorInvert()
                    Spacer()
                    Text(message)
                        .colorInvert()
                }.padding()
            }
            .cornerRadius(30)
            .padding()
        }
    }
}

struct TodayPage_Previews: PreviewProvider {
    static var previews: some View {
        TodayPage()
    }
}
