//
//  TabBarPage.swift
//  AppStore
//
//  Created by ramil on 17.04.2020.
//  Copyright © 2020 com.ri. All rights reserved.
//

import SwiftUI

struct TabBarPage: View {
    @State private var selected: Int = 0
    
    var body: some View {
        TabView(selection: $selected) {
            TodayPage().tabItem {
                Text("Today")
            }
            GamesPage().tabItem {
                Text("Game")
            }
            AppsPage().tabItem {
                Text("Apps")
            }
            ArcadePage().tabItem {
                Text("Arcade")
            }
            SearchPage().tabItem {
                Text("Search")
            }
        }
    }
}

struct TabBarPage_Previews: PreviewProvider {
    static var previews: some View {
        TabBarPage()
    }
}
