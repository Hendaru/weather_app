//
//  Blur.swift
//  weather_app
//
//  Created by Hendaru on 12/12/23.
//

import SwiftUI

class UIBackdropView:UIView{
    override class var layerClass: AnyClass{
        NSClassFromString("CABackdropLayer") ?? CALayer.self
    }
}

struct Backdrop:UIViewRepresentable{
    func makeUIView(context: Context) -> UIBackdropView {
    UIBackdropView()
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
    
    }
}


struct Blur: View {
    var radius : CGFloat = 3
    var opaque: Bool = false
    var body: some View {
        Backdrop().blur(radius:radius , opaque:opaque)
    }
}

struct Blur_Previews: PreviewProvider {
    static var previews: some View {
        Blur()
    }
}
