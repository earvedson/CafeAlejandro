//
//  CircleImage.swift
//  CafeAlejandro
//
//  Created by Erik Arvedson on 2023-11-27.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("PhotoFunia-1701091555")
        //Image("StarAlejandro-black")
            .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 20))
            .background(.white)
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 7)
    }
}

#Preview {
    CircleImage()
}
