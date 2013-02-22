//
//  MyFirstSceneViewController.m
//  _KoboldTouch-Template_
//
//  Created by Steffen Itterheim on 10.10.12.
//
//

#import "MyFirstSceneViewController.h"
#import "LCTilemapViewController.h"

@implementation MyFirstSceneViewController

-(void) initWithDefaults
{
	LCTilemapViewController *mapController = [LCTilemapViewController tilemapControllerWithTMXFile:@"LikeCocMap.tmx"];
	[self addSubController:mapController];
}

-(void) load {
    [self removeSubController:self.motionController];
}


-(void) viewDidLoad {
}

@end
