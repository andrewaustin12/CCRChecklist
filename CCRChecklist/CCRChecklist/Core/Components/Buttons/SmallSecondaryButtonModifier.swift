//
//  SmallSecondaryButtonModifier.swift
//  CCRChecklist
//
//  Created by andrew austin on 7/28/23.
//

import SwiftUI

struct SmallSecondaryButtonModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.title)
            .fontWeight(.semibold)
            .foregroundColor(.white)
            .frame(width: 180, height: 44)
            .background(Color(.systemGray))
            .cornerRadius(8)

    }
}
