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
                    VStack {
                        Text("SALDO CARTA")
                            .foregroundColor(Color.secondary)
                            .multilineTextAlignment(.leading)
                            .lineLimit(0)
                            
                        
                        Text(showData ? "2,50€" : "*****")
                        
                    }
                    .padding(.vertical,-10)

                  Spacer()
                    
                    Button("Mostra") {
                        showData.toggle()
                        print(showData)
                        
                    }
                    .foregroundColor(Color.secondary)

                    .padding(0.0)
                }
                .padding(.horizontal,40)

              
                
                Image("Carta")
                Spacer()
                
                ZStack{
                    Rectangle()
                        .frame(height: 50)
                        .frame(width: 300)
                        .foregroundColor(.gray)
                    .cornerRadius(20)
                    HStack{
                        Text ("Dettaglio movimenti")
                            
                        
                    }
                    .padding(15)
                }
                Spacer()
                Spacer()
                Spacer()
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

