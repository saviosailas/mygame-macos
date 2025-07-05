//
//  GameScene.swift
//  MyGame
//
//  Created by savio sailas on 05/07/25.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
//    private var label : SKLabelNode?
//    private var spinnyNode : SKShapeNode?
    private var helicopterX: CGFloat = 100
    private var helicopterY: CGFloat = 100
    
    private var helicopterNode: SKNode? {
        if let helicopter = self.childNode(withName: "helicopter") {
            return helicopter
        } else {
            return nil
        }
    }
    
    
    override func didMove(to view: SKView) {

        // Get label node from scene and store it for use later
//        self.label = self.childNode(withName: "//helloLabel") as? SKLabelNode
//        if let label = self.label {
//            label.alpha = 0.0
//            label.run(SKAction.fadeIn(withDuration: 2.0))
//        }
//        
//        // Create shape node to use during mouse interaction
//        let w = (self.size.width + self.size.height) * 0.05
//        self.spinnyNode = SKShapeNode.init(rectOf: CGSize.init(width: w, height: w), cornerRadius: w * 0.3)
//        
//        if let spinnyNode = self.spinnyNode {
//            spinnyNode.lineWidth = 2.5
//            
//            spinnyNode.run(SKAction.repeatForever(SKAction.rotate(byAngle: CGFloat(Double.pi), duration: 1)))
//            spinnyNode.run(SKAction.sequence([SKAction.wait(forDuration: 0.5),
//                                              SKAction.fadeOut(withDuration: 0.5),
//                                              SKAction.removeFromParent()]))
//        }
    }
    
    
//    func touchDown(atPoint pos : CGPoint) {
//        if let n = self.spinnyNode?.copy() as! SKShapeNode? {
//            n.position = pos
//            n.strokeColor = SKColor.green
//            self.addChild(n)
//        }
//    }
    
//    func touchMoved(toPoint pos : CGPoint) {
//        if let n = self.spinnyNode?.copy() as! SKShapeNode? {
//            n.position = pos
//            n.strokeColor = SKColor.blue
//            self.addChild(n)
//        }
//    }
    
//    func touchUp(atPoint pos : CGPoint) {
//        if let n = self.spinnyNode?.copy() as! SKShapeNode? {
//            n.position = pos
//            n.strokeColor = SKColor.red
//            self.addChild(n)
//        }
//    }
    
    override func mouseDown(with event: NSEvent) {
//        self.touchDown(atPoint: event.location(in: self))
    }
    
    override func mouseDragged(with event: NSEvent) {
//        self.touchMoved(toPoint: event.location(in: self))
    }
    
    override func mouseUp(with event: NSEvent) {
//        self.touchUp(atPoint: event.location(in: self))
    }
    
    func moveHelicopterUp() {
        // Move up by 10 points in Y axis smoothly
        let moveAction = SKAction.moveBy(x: 0, y: 10, duration: 0.1)
        moveAction.timingMode = .easeOut // Smooth movement
        helicopterNode?.run(moveAction)
    }
    
    /// keyDown: w keyCode: 13
    /// keyDown: a keyCode: 0
    /// keyDown: s keyCode: 1
    /// keyDown: d keyCode: 2
    override func keyDown(with event: NSEvent) {
        if event.charactersIgnoringModifiers == "w" {
            moveHelicopterUp()
            return
        }
        
        switch event.keyCode {
        case 13:
            print("w")
            helicopterNode?.position = CGPoint(x: helicopterNode!.position.x, y: helicopterNode!.position.y + 15)
        case 0:
            print("a")
        case 1:
            print("s")
        case 2:
            print("d")
//        case 123:
//            if let label = self.label {
//                label.run(SKAction.init(named: "Pulse")!, withKey: "fadeInOut")
//            }
        default:
            print("keyDown: \(event.characters!) keyCode: \(event.keyCode)")
        }
    }
    
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
    }
}
