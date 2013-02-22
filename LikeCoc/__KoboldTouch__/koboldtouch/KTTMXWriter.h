//
//  KTTMXWriter.h
//  KoboldTouch-Libraries
//
//  Created by Steffen Itterheim on 02.02.13.
//
//

#import <Foundation/Foundation.h>

@class KTTilemap;

@interface KTTMXWriter : NSObject
{
	@private
	//NSXMLDocument* _xmlDocument;
}

-(void) writeTMXFile:(NSString*)file tilemap:(KTTilemap*)tilemap;

@end
