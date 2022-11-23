//
//  UserView.swift
//  Postepay-redesign
//
//  Created by Salvatore De Luca on 21/11/22.
//

import SwiftUI

struct UserView: View {
    var body: some View {
        VStack{
            Image("osbornato")
                .resizable()
                .frame(width: 150.0 , height: 150.0)
                .mask(Circle())
        }
    }
}

struct UserView_Previews: PreviewProvider {
    static var previews: some View {
        UserView()
    }
}
