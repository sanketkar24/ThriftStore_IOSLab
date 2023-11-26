import Foundation
import UIKit
import Lottie

class SignupViewController: UIViewController{
    
    var animationView: LottieAnimationView?
    override func viewDidLoad() {
        super.viewDidLoad()
        animationView = .init(name: "signupLottie")
        
        let animationViewHeight: CGFloat = 250.0 // Adjust the height as needed
           let animationViewFrame = CGRect(x: 0, y: 100, width: view.bounds.width, height: animationViewHeight)
           animationView!.frame = animationViewFrame

           animationView!.contentMode = .scaleAspectFit
           animationView!.loopMode = .loop
           animationView!.animationSpeed = 0.5
        
        
        view.addSubview(animationView!)
        animationView!.play()
        
    }
}
