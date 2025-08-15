//
//  BlurEffect.swift
//  MusicApp
//
//  Created by Khadichabonu Valieva on 18/11/23.
//

import Foundation
import SwiftUI
struct Blur: UIViewRepresentable {
    func makeUIView(context: Context) -> UIVisualEffectView {
        return UIVisualEffectView(effect: UIBlurEffect(style: style))
    }
    
    var style: UIBlurEffect.Style = .systemMaterial
   
    func updateUIView(_ uiView: UIVisualEffectView, context: Context) {
        uiView.effect = UIBlurEffect(style: style)
    }
}
