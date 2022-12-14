//
//  NSString+MojoAuthString.m
//
//  Copyright © 2022 MojoAuth. All rights reserved.
//

#import "MojoAuthString.h"

@implementation NSString (MojoAuthString)

- (NSString *) URLDecodedString {
	return [self stringByRemovingPercentEncoding];
}

- (NSString *) URLEncodedString {
    NSMutableCharacterSet *allowedSet = [NSMutableCharacterSet characterSetWithCharactersInString:@":!*();@/&?#[]+$,='%’\""];
    [allowedSet invert];
	return [self stringByAddingPercentEncodingWithAllowedCharacters:[allowedSet copy]];;
}

- (NSString *) capitalizedFirst {
	return [self stringByReplacingCharactersInRange:NSMakeRange(0,1) withString:[[self substringToIndex:1] uppercaseString]];
}

@end
