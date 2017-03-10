//
//  ViewController.swift
//  Gestures en IOS
//
//  Created by alumno on 3/9/17.
//  Copyright © 2017 Jorge Luis Limo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var contenedor: UIView!
    var tipo:String!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print(tipo)
        
        switch tipo {
        case "UiTapGestureRecognizer":
            let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(tap))
            tapGestureRecognizer.numberOfTapsRequired = 2
            contenedor.addGestureRecognizer(tapGestureRecognizer)
        case "UIPinchGestureRecognizer":
            let pinchGestureRecognizer = UIPinchGestureRecognizer(target: self, action: #selector(pinch))
            pinchGestureRecognizer.scale = 2
            contenedor.addGestureRecognizer(pinchGestureRecognizer)
        case "UIRotationGestureRecognizer":
            let rotationGestureRecognizer = UIRotationGestureRecognizer(target: self, action: #selector(rotate))
            contenedor.addGestureRecognizer(rotationGestureRecognizer)
        case "UISwipeGestureRecognizer":
            let swipeGestureRecognizer = UISwipeGestureRecognizer(target: self, action: #selector(swipe))
            swipeGestureRecognizer.direction = UISwipeGestureRecognizerDirection.right
            swipeGestureRecognizer.numberOfTouchesRequired = 1
            contenedor.addGestureRecognizer(swipeGestureRecognizer)
        case "UIPanGestureRecognizer":
            let panGestureRecognizer = UIPanGestureRecognizer(target: self, action: #selector(pan))
            panGestureRecognizer.minimumNumberOfTouches = 1
            panGestureRecognizer.maximumNumberOfTouches = 3
            contenedor.addGestureRecognizer(panGestureRecognizer)
        case "UIScreenEdgeGestureRecognizer":
            let screenGestureRecognizer = UIScreenEdgePanGestureRecognizer(target: self, action: #selector(screen))
            screenGestureRecognizer.edges = UIRectEdge.right
            contenedor.addGestureRecognizer(screenGestureRecognizer)
        default:
            let longGestureRecognizer = UILongPressGestureRecognizer(target: self, action: #selector(long))
            longGestureRecognizer.minimumPressDuration = 2 //segundos
            longGestureRecognizer.numberOfTapsRequired = 1
            longGestureRecognizer.numberOfTouchesRequired = 1
            contenedor.addGestureRecognizer(longGestureRecognizer)

        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tap() {
        print("tap")
        
    }
    
    func pinch(sender:UIPinchGestureRecognizer) {
        print("pinch")
        print("Scale: \(sender.scale)")
        print("Velocidad: \(sender.velocity)")
    }
    
    func rotate(sender:UIRotationGestureRecognizer) {
        print("rotate")
        print("Rotacion: \(sender.rotation)")
    }
    
    func swipe() {
        print("swipe")
    }
    
    func pan(sender:UIPanGestureRecognizer) {
        print("pan")
        print("Translation: \(sender.translation(in: contenedor))")
    }
    
    func screen() {
        print("screen")
    }
    
    func long() {
        print("long")
    }


}

