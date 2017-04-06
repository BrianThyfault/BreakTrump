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
    
    var brickClass = bricks()
    var ball: SKSpriteNode!
    var paddle: SKSpriteNode!
    var loseZone:SKSpriteNode!
    var brickHit = 0
    var numberOfBricks = 0
    var level = 1
    var brick: SKSpriteNode!
    
    override func didMove(to view: SKView) {
        physicsWorld.contactDelegate = self
        
        self.physicsBody = SKPhysicsBody(edgeLoopFrom: frame)
        
        createBackground()
        makeBall()
        makePaddle()
        createBlocks(numOfBricks: level)
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
        var numberOfBricks = 15
        if(contact.bodyA.node?.name == "brick" || contact.bodyB.node?.name == "brick")
        {
            
            print("Brick Hit")
            brickHit += 1
            if (brickHit == 3)
            {
                brickClass.removeFromParent()
                numberOfBricks -= 1
            }
            if numberOfBricks == 0 {
                  winOrLose(string: "You won.")       }
        }

        else if(contact.bodyA.node?.name == "loseZone" || contact.bodyB.node?.name == "loseZone")
        {
            print("You Lose")
            ball.removeFromParent()
            winOrLose(string: "Lose")
           //            alert.addAction(UIAlertAction(title: "Menu", style: .default, handler: { (sender) in
//                let segue = UIStoryboardSegue(identifier: "menu", source: GameViewController, destination: MenuViewController)
//                perform(segue)
//                
//            }))
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
        ball.physicsBody?.applyImpulse(CGVector(dx: 3, dy: 3))
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
    
    func createBlocks(numOfBricks: Int)
    {
        var xPosition = Int(frame.midX - (frame.width / 2))
        var yPosition = 150
        
        let blockWidth = (Int)((frame.width - 60 / 5))
        let blockHeight = 20
        
        for _ in 1...numOfBricks
        {
            for _ in 1...numOfBricks
            {
                makeBrick(xPoint: xPosition, yPoint: yPosition, brickWidth: blockWidth, brickHeight: blockHeight)
                xPosition += (blockWidth + 10)
            }
            xPosition = Int(frame.midX - (frame.width / 2))
            yPosition += (blockHeight + 10)
        }
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
    
    func winOrLose(string: String)
    {
        
        let alert = UIAlertController(title:"You win!", message: nil, preferredStyle: .alert)
        let nextButton = UIAlertAction(title: "Next Level", style: .default, handler: { (sender) in
            self.ball.removeFromParent()
            self.level += 1
            self.createBackground()
            self.createBlocks(numOfBricks: self.level)
            self.makeLoseZone()
            
        })
        alert.addAction(nextButton)
        self.view?.window?.rootViewController?.present(alert, animated: true, completion: nil)
        
    }
    
    func makeBrick(xPoint: Int, yPoint: Int, brickWidth: Int, brickHeight: Int)
    {
        brick = SKSpriteNode(color: UIColor.blue, size: CGSize(width: brickWidth, height: brickHeight))
        brick.position = CGPoint(x: xPoint, y: yPoint)
        brick.name = "brick"
        brick.physicsBody = SKPhysicsBody(rectangleOf: brick.size)
        brick.physicsBody?.isDynamic = false
        addChild(brick)
        print("Bricks Made")
        
    }
    
}



