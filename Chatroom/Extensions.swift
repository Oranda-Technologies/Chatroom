//
//  Extensions.swift
//  Chatroom
//
//  Created by Chimwemwe Phikiso on 08/05/2022.
//

import Foundation
import SwiftUI

// extension for adding rounded crnrs

extension View {
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape(RoundedCorner(radius: radius, corners: corners))
    }
}

// custom rounded crnr for above crnr rds ext

struct RoundedCorner: Shape {
    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}


