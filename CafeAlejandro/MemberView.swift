//
//  MemberView.swift
//  CafeAlejandro
//
//  Created by Erik Arvedson on 2023-11-28.
//

import SwiftUI

struct MemberView: View {
    var body: some View {
        ZStack {
            Image("background")
            ZStack {
                Image("CardBack")
                    .clipShape(RoundedRectangle(cornerSize: CGSize(width: 20, height: 20)))
                VStack(alignment: .leading) {
                    Text("Subscription: Platinum")
                        .foregroundColor(.white)
                        .font(.title)
                        .padding(.bottom, 30)
                        .padding(.leading, 60)
                    HStack {
                        Text("Member:")
                            .foregroundColor(.white)
                            .padding(.leading, 60)
                        Spacer()
                        Text("Anastasiia Aniskova")
                            .foregroundColor(.white)
                            .padding(.trailing, 60)
                    }
                        
                }
            }
        }
    }
}

#Preview {
    MemberView()
}
