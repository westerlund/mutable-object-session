//
//  WESObject.m
//  mutableCopyTest
//
//  Created by Simon Westerlund on 16/05/14.
//  Copyright (c) 2014 Simon Westerlund. All rights reserved.
//

#import "WESObject.h"

@interface WESObject () {
    @private
    NSString *_str;
}

@end

@implementation WESObject

- (id)init {
    return [self initWithString:nil];
}

- (instancetype)initWithString:(NSString *)str {
    self = [super init];
    if ( self ) {
        _str = str;
    }
    return self;
}

- (NSString *)string {
    return _str;
}

#pragma mark - NSCopying

- (id)copyWithZone:(NSZone *)zone {
    typeof(self) copy = [[[self class] allocWithZone:zone] init];
    if ( copy ) {
        copy->_str = _str;
    }
    return copy;
}

#pragma mark - NSMutableCopying

- (id)mutableCopyWithZone:(NSZone *)zone {
    WESMutableObject *mutableCopy = [[WESMutableObject allocWithZone:zone] init];
    if ( mutableCopy ) {
        [mutableCopy setValue:_str forKey:@"_str"];
    }
    return mutableCopy;
}

@end

@implementation WESMutableObject

- (void)setString:(NSString *)string {
    [self setValue:string forKey:@"_str"]; // shhh, don't tell anyone...
}

@end
