//
//  SwiftUIView.swift
//  A252QRCode
//
//  Created by 申潤五 on 2025/4/20.
//

import SwiftUI

struct SwiftUIView: View {
    var body: some View {
        Image(uiImage: generrateQRCode(from: "Hello World",size: CGSize(width: 200, height: 200))!)
    }
}

#Preview {
    SwiftUIView()
}
