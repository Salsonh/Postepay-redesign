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
                                HStack {
                                    Image(systemName: "person.circle.fill")
                                        .font(.system(size: 32))
                                        .foregroundColor(.gray)
                                    Text("Profilo")
                                }
                                HStack {
                                    Image(systemName: "wallet.pass.fill")
                                        .font(.system(size: 30))
                                        .foregroundColor(.gray)
                                    Text("I miei ticket")
                                    
                                }
                                
                                HStack{
                                    Image(systemName: "gear")
                                        .font(.system(size: 31))
                                        .foregroundColor(.gray)
                                    Text("Impostazioni App")
                                        .foregroundColor(Color.black)
                                }
                                HStack{
                                    Image(systemName: "phone")
                                        .font(.system(size: 32))
                                        .foregroundColor(.gray)
                                    Text("Assistenza")
                                }
                                
                            }.scrollDisabled(true)
                            
                                .foregroundColor(.black)
                                .listStyle(.plain)
                            
                        }
                        Section{
                            Text("ALTRE APP DI POSTE")
                                .fontWeight(.semibold)
                            VStack{
                                HStack{
                                    Image("BP ICON")
                                        .padding(.horizontal,5)
                                        .padding(.leading)
                                    
                                    Text("BancoPosta")
                                        .padding(.horizontal,-25)
                                        
                                    Spacer()
                                    
                                }
                                
                            }
                            VStack{
                                HStack{
                                    Image("PT ICON")
                                        .padding(.horizontal,5)
                                        .padding(.leading)
                                    Text("Ufficio Postale")
                                        .padding(.horizontal,-39)
                                    
                                    Spacer()
                                    
                                }
                                
                            }
                            Divider()
                            VStack{
                                Text("Logout")
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.red)
                                
                            }
                        }
                    }
                    Spacer(minLength: 10)
                    
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
