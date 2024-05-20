//
//  CircleImage.swift
//  FirstAppSwift
//
//  Created by Shreyash Dewangan on 17/05/24.
//

import SwiftUI


struct CircleImage: View {
    var image: Image


    var body: some View {
        image
            .frame(width: 300)
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 7)
    }
}


#Preview {
    CircleImage(image: Image("turtlerock"))
}
