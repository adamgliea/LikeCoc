//
//  KTTMXWriter.m
//  KoboldTouch-Libraries
//
//  Created by Steffen Itterheim on 02.02.13.
//
//

#import "KTTMXWriter.h"
#import "KTTilemap.h"
#import "KTTilemapProperties.h"
#import "KTTilemapTileProperties.h"
#import "KTTilemapTileset.h"
#import "KTTilemapLayerTiles.h"
#import "KTTilemapObject.h"
#import "KTTilemapLayer.h"
#import "KTMutableNumber.h"

#import <zlib.h>


// Base 64 encoding example from http://stackoverflow.com/a/6782480/201863

unsigned char encoding_table[64] = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/";
static int mod_table[] = {0, 2, 1};

char* base64_encode(const unsigned char* data, size_t input_length, size_t* output_length)
{
	//*output_length = (size_t) (4.0 * ceil((double) input_length / 3.0));
	*output_length = ((input_length - 1) / 3) * 4 + 4;
	
    char* encoded_data = malloc(*output_length);
    if (encoded_data == NULL)
	{
		return NULL;
	}
	
    for (size_t i = 0, j = 0; i < input_length;)
	{
        uint32_t octet_a = i < input_length ? data[i++] : 0;
        uint32_t octet_b = i < input_length ? data[i++] : 0;
        uint32_t octet_c = i < input_length ? data[i++] : 0;
        uint32_t triple = (octet_a << 0x10) + (octet_b << 0x08) + octet_c;
		
        encoded_data[j++] = encoding_table[(triple >> 3 * 6) & 0x3F];
        encoded_data[j++] = encoding_table[(triple >> 2 * 6) & 0x3F];
        encoded_data[j++] = encoding_table[(triple >> 1 * 6) & 0x3F];
        encoded_data[j++] = encoding_table[(triple >> 0 * 6) & 0x3F];
    }
	
    for (int i = 0; i < mod_table[input_length % 3]; i++)
	{
        encoded_data[*output_length - 1 - i] = '=';
	}
	
    return encoded_data;
}


@implementation KTTMXWriter

-(void) writeTMXFile:(NSString*)file tilemap:(KTTilemap*)tilemap
{
	/*
	_xmlDocument = [NSXMLDocument document];
	_xmlDocument.version = @"1.0";
	_xmlDocument.characterEncoding = @"UTF-8";
	_xmlDocument.documentContentKind = NSXMLDocumentXMLKind;
	[_xmlDocument setStandalone:YES];
	
	LOG_EXPR([_xmlDocument XMLStringWithOptions:NSXMLDocumentTidyXML]);
	 */
}

@end
