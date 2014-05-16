//
//  WESObject.h
//  mutableCopyTest
//
//  Created by Simon Westerlund on 16/05/14.
//  Copyright (c) 2014 Simon Westerlund. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WESObject : NSObject <NSCopying, NSMutableCopying>

- (instancetype)initWithString:(NSString *)str;
- (NSString *)string;

@end

@interface WESMutableObject : WESObject

- (void)setString:(NSString *)string;
//@property (nonatomic, strong) NSString *string;

@end
