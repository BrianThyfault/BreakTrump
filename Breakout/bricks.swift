//
//  bricks.swift
//  Breakout
//
//  Created by Kevin O'Connell on 4/4/17.
//  Copyright © 2017 Brian W Thyfault. All rights reserved.
//

import UIKit
import SpriteKit
class bricks: SKSpriteNode {
var brick:SKSpriteNode!
var brick2:SKSpriteNode!
var brick3:SKSpriteNode!
var brick4:SKSpriteNode!
var brick5:SKSpriteNode!
var brick6:SKSpriteNode!
var brick7:SKSpriteNode!
var brick8:SKSpriteNode!
var brick9:SKSpriteNode!
var brick10:SKSpriteNode!
var brick11:SKSpriteNode!
var brick12:SKSpriteNode!
var brick13:SKSpriteNode!
var brick14:SKSpriteNode!
var brick15:SKSpriteNode!
    
    
    
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
    
    func makeBrickTwo(xPoint2: Int, yPoint2: Int, brickWidth2: Int, brickHeight2: Int)
    {
        brick2 = SKSpriteNode(color: UIColor.blue, size: CGSize(width: brickWidth2, height: brickHeight2))
        brick2.position = CGPoint(x: xPoint2, y: yPoint2)
        brick2.name = "brick2"
        brick2.physicsBody = SKPhysicsBody(rectangleOf: brick2.size)
        brick.physicsBody?.isDynamic = false
        addChild(brick2)
        
    }


    
    

    

    
    

    

    

    

    

    


    
    func makeBrick3(xPoint3: Int, yPoint3: Int, brickWidth3: Int, brickHeight3: Int)
    {
        brick3 = SKSpriteNode(color: UIColor.blue, size: CGSize(width: brickWidth3, height: brickHeight3))
        brick3.position = CGPoint(x: xPoint3, y: yPoint3)
        brick3.name = "brick3"
        brick3.physicsBody = SKPhysicsBody(rectangleOf: brick3.size)
        brick3.physicsBody?.isDynamic = false
        addChild(brick3)
        
    }
    
    func makeBrick4(xPoint4: Int, yPoint4: Int, brickWidth4: Int, brickHeight4: Int)
    {
        brick4 = SKSpriteNode(color: UIColor.blue, size: CGSize(width: brickWidth4, height: brickHeight4))
        brick4.position = CGPoint(x: xPoint4, y: yPoint4)
        brick4.name = "brick4"
        brick4.physicsBody = SKPhysicsBody(rectangleOf: brick4.size)
        brick4.physicsBody?.isDynamic = false
        addChild(brick4)
        
    }
    
    func makeBrick5(xPoint5: Int, yPoint5: Int, brickWidth5: Int, brickHeight5: Int)
    {
        brick5 = SKSpriteNode(color: UIColor.blue, size: CGSize(width: brickWidth5, height: brickHeight5))
        brick5.position = CGPoint(x: xPoint5, y: yPoint5)
        brick5.name = "brick5"
        brick5.physicsBody = SKPhysicsBody(rectangleOf: brick.size)
        brick5.physicsBody?.isDynamic = false
        addChild(brick5)
        
    }
    func makeBrick6(xPoint6: Int, yPoint6: Int, brickWidth6: Int, brickHeight6: Int)
    {
        brick6 = SKSpriteNode(color: UIColor.blue, size: CGSize(width: brickWidth6, height: brickHeight6))
        brick6.position = CGPoint(x: xPoint6, y: yPoint6)
        brick6.name = "brick6"
        brick6.physicsBody = SKPhysicsBody(rectangleOf: brick.size)
        brick6.physicsBody?.isDynamic = false
        addChild(brick6)
        
    }
    
    func makeBrick7(xPoint7: Int, yPoint7: Int, brickWidth7: Int, brickHeight7: Int)
    {
        brick7 = SKSpriteNode(color: UIColor.blue, size: CGSize(width: brickWidth7, height: brickHeight7))
        brick7.position = CGPoint(x: xPoint7, y: yPoint7)
        brick7.name = "brick7"
        brick7.physicsBody = SKPhysicsBody(rectangleOf: brick7.size)
        brick7.physicsBody?.isDynamic = false
        addChild(brick7)
        
    }
    
    func makeBrick8(xPoint8: Int, yPoint8: Int, brickWidth8: Int, brickHeight8: Int)
    {
        brick8 = SKSpriteNode(color: UIColor.blue, size: CGSize(width: brickWidth8, height: brickHeight8))
        brick8.position = CGPoint(x: xPoint8, y: yPoint8)
        brick8.name = "brick8"
        brick8.physicsBody = SKPhysicsBody(rectangleOf: brick8.size)
        brick8.physicsBody?.isDynamic = false
        addChild(brick8)
        
    }


    func makeBrick(xPoint9: Int, yPoint9: Int, brickWidth9: Int, brickHeight9: Int)
    {
        brick9 = SKSpriteNode(color: UIColor.blue, size: CGSize(width: brickWidth9, height: brickHeight9))
        brick9.position = CGPoint(x: xPoint9, y: yPoint9)
        brick9.name = "brick9"
        brick9.physicsBody = SKPhysicsBody(rectangleOf: brick9.size)
        brick9.physicsBody?.isDynamic = false
        addChild(brick9)
        
    }
    
    func makeBrick10(xPoint10: Int, yPoint10: Int, brickWidth10: Int, brickHeight10: Int)
    {
        brick10 = SKSpriteNode(color: UIColor.blue, size: CGSize(width: brickWidth10, height: brickHeight10))
        brick10.position = CGPoint(x: xPoint10, y: yPoint10)
        brick10.name = "brick10"
        brick10.physicsBody = SKPhysicsBody(rectangleOf: brick10.size)
        brick10.physicsBody?.isDynamic = false
        addChild(brick10)
        
    }



    func makeBrick11(xPoint11: Int, yPoint11: Int, brickWidth11: Int, brickHeight11: Int)
    {
        brick11 = SKSpriteNode(color: UIColor.blue, size: CGSize(width: brickWidth11, height: brickHeight11))
        brick11.position = CGPoint(x: xPoint11, y: yPoint11)
        brick11.name = "brick11"
        brick11.physicsBody = SKPhysicsBody(rectangleOf: brick11.size)
        brick11.physicsBody?.isDynamic = false
        addChild(brick)
        
    }

    func makeBrick12(xPoint12: Int, yPoint12: Int, brickWidth12: Int, brickHeight12: Int)
    {
        brick12 = SKSpriteNode(color: UIColor.blue, size: CGSize(width: brickWidth12, height: brickHeight12))
        brick12.position = CGPoint(x: xPoint12, y: yPoint12)
        brick12.name = "brick12"
        brick12.physicsBody = SKPhysicsBody(rectangleOf: brick12.size)
        brick12.physicsBody?.isDynamic = false
        addChild(brick12)
        
    }
    
    func makeBrick13(xPoint13: Int, yPoint13: Int, brickWidth13: Int, brickHeight13: Int)
    {
        brick13 = SKSpriteNode(color: UIColor.blue, size: CGSize(width: brickWidth13, height: brickHeight13))
        brick13.position = CGPoint(x: xPoint13, y: yPoint13)
        brick13.name = "brick13"
        brick13.physicsBody = SKPhysicsBody(rectangleOf: brick13.size)
        brick13.physicsBody?.isDynamic = false
        addChild(brick13)
        
    }


    func makeBrick14(xPoint14: Int, yPoint14: Int, brickWidth14: Int, brickHeight14: Int)
    {
        brick14 = SKSpriteNode(color: UIColor.blue, size: CGSize(width: brickWidth14, height: brickHeight14))
        brick14.position = CGPoint(x: xPoint14, y: yPoint14)
        brick14.name = "brick14"
        brick14.physicsBody = SKPhysicsBody(rectangleOf: brick14.size)
        brick14.physicsBody?.isDynamic = false
        addChild(brick14)
        
    }

    func makeBrick15(xPoint15: Int, yPoint15: Int, brickWidth15: Int, brickHeight15: Int)
    {
        brick15 = SKSpriteNode(color: UIColor.blue, size: CGSize(width: brickWidth15, height: brickHeight15))
        brick15.position = CGPoint(x: xPoint15, y: yPoint15)
        brick15.name = "brick15"
        brick15.physicsBody = SKPhysicsBody(rectangleOf: brick15.size)
        brick15.physicsBody?.isDynamic = false
        addChild(brick15)
        
    }


}
