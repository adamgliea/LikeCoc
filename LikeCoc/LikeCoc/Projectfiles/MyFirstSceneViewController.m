//
//  MyFirstSceneViewController.m
//  _KoboldTouch-Template_
//
//  Created by Steffen Itterheim on 10.10.12.
//
//

#import "MyFirstSceneViewController.h"

@implementation MyFirstSceneViewController

-(void) initWithDefaults
{
	KTTilemapViewController* tilemapController = [KTTilemapViewController tilemapControllerWithTMXFile:@"LikeCocMap.tmx"];
	[self addSubController:tilemapController];
}

-(void) load
{
}


-(void) viewDidLoad
{
}

@end
