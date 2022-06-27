//
//  TestLottie.swift
//  TestLottie
//
//  Created by Jun.Mac on 2022/06/27.
//

import Foundation
import SwiftUI
import Lottie
// SwiftUI에서 사용하기 위헤 UIKit을 import해주세요
import UIKit

// 로티 애니메이션 뷰
struct LottieView: UIViewRepresentable {
    var name : String
    var loopMode: LottieLoopMode
    
    // 간단하게 View로 JSON 파일 이름으로 애니메이션을 실행합니다.
    init(jsonName: String = "", loopMode : LottieLoopMode = .loop){
        self.name = jsonName
        self.loopMode = loopMode
    }
    
    func makeUIView(context: UIViewRepresentableContext<LottieView>) -> UIView {
        let view = UIView(frame: .zero)

        let animationView = AnimationView()
        let animation = Animation.named(name)
        animationView.animation = animation
        // AspectFit으로 애니메이션을 불러옵니다.
        animationView.contentMode = .scaleAspectFit
        // 애니메이션은 기본으로 Loop합니다.
        animationView.loopMode = loopMode
        // 애니메이션을 재생합니다
        animationView.play()
        // 백그라운드에서 재생이 멈추는 오류를 잡습니다
        animationView.backgroundBehavior = .pauseAndRestore

        animationView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(animationView)
        
        NSLayoutConstraint.activate([
            animationView.heightAnchor.constraint(equalTo: view.heightAnchor),
            animationView.widthAnchor.constraint(equalTo: view.widthAnchor)
        ])

        return view
    }

    func updateUIView(_ uiView: UIViewType, context: Context) {
    }
}
