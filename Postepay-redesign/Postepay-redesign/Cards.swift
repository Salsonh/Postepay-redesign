//
//  Cards.swift
//  Postepay-redesign
//
//  Created by Salvatore De Luca on 23/11/22.
//

import SwiftUI

struct Cards: View {
    var Name:String
    var Name2:String
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 20)
                .stroke(.black)
                .shadow(radius: 3)
                .frame(width: 150, height: 80, alignment: .leading)
                .foregroundColor(.clear)
            
            VStack(alignment: .leading, spacing: 6){
                Text(Name)
                    .fontWeight(.heavy)
                    .foregroundColor(Color.blue)
                Text(Name2)
                    .fontWeight(.regular)
                    
                
            }
        }
    }
}

struct Cards_Previews: PreviewProvider {
    static var previews: some View {
        Cards(Name: "Titolo", Name2: "Descrizione")
        
    }
}
