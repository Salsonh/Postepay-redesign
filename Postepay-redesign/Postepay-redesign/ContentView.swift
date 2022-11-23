//
//  ContentView.swift
//  Postepay-redesign
//
//  Created by Salvatore De Luca on 17/11/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showData: Bool = false
    
    var body: some View {
        TabView{
            MainView()
                .tabItem{
                    Label("FEED", systemImage:"creditcard")
                }
            Color.blue
                .tabItem {
                    Label("MOVIMENTI", systemImage:"list.clipboard.fill")

                }
            Color.red
                .tabItem{
                    Label("VICINO A TE", systemImage:"globe")

                }
                AccountView()
                .tabItem{
                    Label("ACCOUNT", systemImage:"person.crop.circle")

                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

