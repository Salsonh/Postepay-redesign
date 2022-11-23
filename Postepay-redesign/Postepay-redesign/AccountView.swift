//
//  AccountView.swift
//  Postepay-redesign
//
//  Created by Salvatore De Luca on 21/11/22.
//

import SwiftUI

struct TitleView: View {
    var body: some View {
        
        HStack(spacing:0) {
            Text("poste")
            Text("pay")
                .fontWeight(.bold)
            
        }
        .foregroundColor(Color.blue)
        Divider()

    }
    
}

struct AccountView: View {
    var body: some View {
        NavigationStack{
            ZStack{
                Color("white")
                VStack{
                    
                    UserView()
                    
                    Text("Norman Osborn")
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .font(.system(size: 30))
                    Divider()
                    VStack{
                        Section{
                            List{
                                Label("Profilo", systemImage:"person.circle.fill")
                                
                                Label("I miei ticket", systemImage:"wallet.pass.fill" )
                                Label("Impostazioni App", systemImage:"gear" )
                                
                                Label("Assistenza", systemImage:"phone" )
                                
                                
                                
                                
                                
                                
                                
                            }
                            .foregroundColor(.black)
                            .listStyle(.plain)
                        }
                        Section{
                            Text("ALTRE APP DI POSTE")
                                .fontWeight(.bold)
                            VStack{
                                HStack{
                                    Image("BP ICON")
                                    Text("BancoPosta")

                                }

                            }
                            VStack{
                                HStack{
                                    Image("PT ICON")
                                    Text("Ufficio Postale")

                                }

                            }
                            Divider()
                            VStack{
                                Text("Logout")
                                    .foregroundColor(Color.red)
                                    
                            }
                        }
                    }
                    Spacer(minLength: 90)
                    
                }
                .navigationBarTitleDisplayMode(.inline)
                .toolbar {
                    ToolbarItem(placement: .principal) {
                        TitleView()
                        
                    }
                    
                }
            }
        }
    }
}
struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
    }
}
