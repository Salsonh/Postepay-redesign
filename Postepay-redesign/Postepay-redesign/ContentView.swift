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
        NavigationStack {
            VStack {
                HStack {
                    Text("SALDO CARTA")
                        .foregroundColor(Color.secondary)
                        .multilineTextAlignment(.leading)
                        .lineLimit(0)
                        .padding(0.0)
                        
                }
                
                Text(showData ? "2,50€" : "****")
                
                Button("Mostra") {
                    showData.toggle()
                    print(showData)
                    
                }
                .foregroundColor(Color.secondary)

                .padding(0.0)
                
                Spacer()
            }
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .principal) {
                    Text("postepay").font(.headline).foregroundColor(Color.blue)
                    
                    
                    
                }
                ToolbarItem(placement: .navigationBarTrailing){
                    Image(systemName:"bell")
                    
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

