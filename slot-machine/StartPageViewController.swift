//
//  StartPafgeViewController.swift
//  slot-machine
//
//  Created by Po Lam Wong on 17/1/2023.
//

import UIKit

class StartPageViewController: UIViewController {

    @IBOutlet weak var backgroundView: UIView!
    @IBOutlet weak var BtnStart: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Create a gradient layer.
                let gradientLayer = CAGradientLayer()
                // Set the size of the layer to be equal to size of the display.
                gradientLayer.frame = view.bounds
                // Set an array of Core Graphics colors (.cgColor) to create the gradient.
                // This example uses a Color Literal and a UIColor from RGB values.
                gradientLayer.colors = [#colorLiteral(red: 0.2213869393, green: 0.2213869393, blue: 0.2213869393, alpha: 1).cgColor, #colorLiteral(red: 0.05490195006, green: 0.05490195006, blue: 0.05490195006, alpha: 1).cgColor]
                // Rasterize this static layer to improve app performance.
                gradientLayer.shouldRasterize = true
                // Apply the gradient to the backgroundGradientView.
                backgroundView.layer.addSublayer(gradientLayer)
        
        BtnStart.layer.cornerRadius = 10
        BtnStart.layer.borderWidth = 2
        BtnStart.layer.borderColor = #colorLiteral(red: 0.8932096362, green: 0.6982428432, blue: 0.3265957236, alpha: 1).cgColor
    }
    override var shouldAutorotate: Bool {
        return false
    }
}
