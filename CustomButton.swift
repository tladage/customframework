//
//  CustomButton.swift
//  MyCustomUI
//
//  Created by Dipti Dilip Ladage on 17/02/25.
//

import SwiftUI

struct CustomButton: View {
    let title: String
    let action: () -> Void

    public init(title: String, action: @escaping () -> Void) {
        self.title = title
        self.action = action
    }

    public var body: some View {
        Button(action: action) {
            Text(title)
                .font(.headline)
                .padding()
                .background(Color.blue)
                .foregroundColor(.white)
                .clipShape(RoundedRectangle(cornerRadius: 10))
        }
    }
}

#Preview {
    CustomButton(title: "test inside preview", action: {
        
    })
}
