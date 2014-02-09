//
//  MainMenuScene.m
//  ZombieConga
//
//  Created by Luis Flores on 2/8/14.
//  Copyright (c) 2014 Luis Flores. All rights reserved.
//

#import "MainMenuScene.h"
#import "MyScene.h"

@implementation MainMenuScene

- (id)initWithSize:(CGSize)size {
    if (self = [super initWithSize:size]) {
        SKSpriteNode *bg = [SKSpriteNode spriteNodeWithImageNamed:@"MainMenu.png"];
        bg.position = CGPointMake(self.size.width/2, self.size.height/2);
        [self addChild:bg];
    }
    return self;
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    SKScene * startGame = [[MyScene alloc] initWithSize:self.size];
    SKTransition *reveal = [SKTransition doorwayWithDuration:0.5];
    [self.view presentScene:startGame transition:reveal];
}

@end
