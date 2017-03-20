//
//  GameScene.swift
//  Breakout
//
//  Created by Brian W Thyfault on 3/9/17.
//  Copyright © 2017 Brian W Thyfault. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene, SKPhysicsContactDelegate {

    var ball: SKSpriteNode!
    var paddle: SKSpriteNode!
    var brick:SKSpriteNode!
    var loseZone:SKSpriteNode!
    var brickHit = 0
    
    
    override func didMove(to view: SKView) {
        physicsWorld.contactDelegate = self
        
        self.physicsBody = SKPhysicsBody(edgeLoopFrom: frame)
        
        createBackground()
        makeBall()
        makePaddle()
        makeBrick()
        makeLoseZone()
        
        ball.physicsBody?.applyImpulse(CGVector(dx: 3, dy: 3))
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in touches
        {
            let location = touch.location(in: self)
            paddle.position.x = location.x
        }
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in touches
        {
            let location = touch.location(in: self)
            paddle.position.x = location.x
        }
    }
    
    func didBegin(_ contact: SKPhysicsContact) {
        if(contact.bodyA.node?.name == "brick" || contact.bodyB.node?.name == "brick")
        {
            print("Brick Hit")
            brickHit += 1
            if(brickHit == 3)
            {
                brick.removeFromParent()
            }
        }
        else if(contact.bodyA.node?.name == "loseZone" || contact.bodyB.node?.name == "loseZone")
        {
            print("You Lose")
            ball.removeFromParent()
            let alert = UIAlertController(title: "You Lose!", message: nil, preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Menu", style: .default, handler: { (sender) in
                let segue = UIStoryboardSegue(identifier: "menu", source: GameViewController, destination: MenuViewController)
                perform(segue)
                
            }))
        }
    }
    
    func createBackground()
    {
        let stars = SKTexture(imageNamed: "stars")
        
        for i in 0...1
        {
            let starsBackground = SKSpriteNode(texture: stars)
            starsBackground.zPosition = -1
            starsBackground.anchorPoint = CGPoint(x: 0.5, y: 0.5)
            starsBackground.position = CGPoint(x: 0, y: (starsBackground.size.height * CGFloat(i) - CGFloat(1 * i)))
            addChild(starsBackground)
            let moveDown = SKAction.moveBy(x: 0, y: -starsBackground.size.height, duration: 20)
            let moveReset = SKAction.moveBy(x: 0, y: starsBackground.size.height, duration: 0)
            
            let moveLoop = SKAction.sequence([moveDown, moveReset])
            let moveForever = SKAction.repeatForever(moveLoop)
            starsBackground.run(moveForever)
        }
    }
    
    func makeBall()
    {
        let ballDiameter = frame.width / 20
        ball = SKSpriteNode(color: UIColor.red, size: CGSize(width: ballDiameter, height: ballDiameter))
        ball.position = CGPoint(x: frame.midX, y: frame.midY)
        ball.name = "ball"
        ball.physicsBody = SKPhysicsBody(rectangleOf: ball.size)
        ball.physicsBody?.isDynamic = true
        ball.physicsBody?.usesPreciseCollisionDetection = true
        ball.physicsBody?.allowsRotation = false
        ball.physicsBody?.friction = 0
        ball.physicsBody?.restitution = 1
        ball.physicsBody?.angularDamping = 0
        ball.physicsBody?.linearDamping = 0
        ball.physicsBody?.contactTestBitMask = (ball.physicsBody?.collisionBitMask)!
        
        ball.physicsBody?.affectedByGravity = false
        addChild(ball)
    }
    
    func makePaddle()
    {
        paddle = SKSpriteNode(color: UIColor.blue, size: CGSize(width: frame.width/4, height: frame.height/25))
        paddle.position = CGPoint(x: frame.midX, y: frame.minY + 125)
        paddle.name = "paddle"
        paddle.physicsBody = SKPhysicsBody(rectangleOf: paddle.size)
        paddle.physicsBody?.isDynamic = false
        addChild(paddle)
    }
    
    func makeBrick()
    {
        brick = SKSpriteNode(color: UIColor.green, size: CGSize(width: frame.width/3, height: frame.height/25))
        brick.position = CGPoint(x: frame.midX, y: frame.maxY - 30)
        brick.name = "brick"
        brick.physicsBody = SKPhysicsBody(rectangleOf: brick.size)
        brick.physicsBody?.isDynamic = false
        brick.texture = (SKTexture(imageNamed: "DJT Head"))
        addChild(brick)
        
    }
    
    func makeLoseZone()
    {
        let loseZone = SKSpriteNode(color: UIColor.red, size: CGSize(width: frame.width, height: 50))
        loseZone.position = CGPoint(x: frame.midX, y: frame.minY + 25)
        loseZone.name = "loseZone"
        loseZone.physicsBody = SKPhysicsBody(rectangleOf: loseZone.size)
        loseZone.physicsBody?.isDynamic = false
        addChild(loseZone)
    }
    func whatWasYourTime(_ time:String)
    {
        let alert = UIAlertController(title:time
            , message: nil, preferredStyle: UIAlertControllerStyle.alert)
        let resetButton = UIAlertAction(title: "play again", style: .default, handler: { (sender) in
            
            self.instructions.backgroundColor = UIColor.blue
            self.view.backgroundColor = UIColor.blue
            self.instructions.text = ""
            self.clicked(self.timing.numberOfTries = 1)
            self.clicked(self.timing.onTime = true)
            self.imageView.image = UIImage(named: "")
            //resets game\////gyjhhjghj
            
            
            
        })
        alert.addAction(resetButton)
        self.present(alert, animated: true, completion: nil )}
    //adds reset button to alert
    
}

}

