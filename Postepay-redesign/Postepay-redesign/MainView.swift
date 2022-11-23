//
//  MainView.swift
//  Postepay-redesign
//
//  Created by Salvatore De Luca on 21/11/22.
//

import SwiftUI


struct MainView: View {
    
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
                
                
                HStack{
                    Text ("Dettaglio movimenti")
                        .foregroundColor(.primary)
                        .background(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(Color.black)
                                .frame(height: 50)
                                .frame(width: 300)
                                
                        )
                        .padding()
                }
                .padding()
                Spacer().frame(height:19)
                Image("zingaropoli")
                    .padding(.vertical,20.0)
                Divider()
                
                ScrollView(.horizontal) {
                    
                    HStack {
                            Cards(Name: "RICARICA", Name2: "Sim")
                                
                        
                    
                            Cards(Name: "PAGA", Name2: "Pagamenti")
                        
                        
                            Cards(Name: "G2G", Name2: "Invia giga")
                        
                        
                            Cards(Name: "INQUADRA", Name2: "Codice QR")
                        
                    }
                   
                 }
                .padding(.bottom,-20)
            }
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .principal) {
                    TitleView()
                }
                ToolbarItem(placement: .navigationBarTrailing){
                    Image(systemName:"bell")
                    
                }
            }
        }
        
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

