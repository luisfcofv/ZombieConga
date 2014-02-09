//
//  ViewController.m
//  ZombieConga
//
//  Created by Luis Flores on 1/4/14.
//  Copyright (c) 2014 Luis Flores. All rights reserved.
//

#import "ViewController.h"
#import "MainMenuScene.h"
#import "MyScene.h"

@implementation ViewController

- (void)viewWillLayoutSubviews {
    [super viewWillLayoutSubviews];
    // Configure the view.
    SKView * skView = (SKView *)self.view;

    if (!skView.scene) {
        skView.showsFPS = NO;
        skView.showsNodeCount = NO;
    
        // Create and configure the scene.
        SKScene * scene = [MainMenuScene sceneWithSize:skView.bounds.size];
        
        scene.scaleMode = SKSceneScaleModeAspectFill;
    
        // Present the scene.
        [skView presentScene:scene];
    }
}

- (BOOL)shouldAutorotate
{
    return YES;
}

- (NSUInteger)supportedInterfaceOrientations
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return UIInterfaceOrientationMaskAllButUpsideDown;
    } else {
        return UIInterfaceOrientationMaskAll;
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

-(BOOL)prefersStatusBarHidden {
    return YES;
}

@end
