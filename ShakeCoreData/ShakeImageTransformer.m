//
//  ShakeImageTransformer.m
//  ShakeCoreData
//
//  Created by dib258 on 11/06/14.
//  Copyright (c) 2014 258labs. All rights reserved.
//

#import "ShakeImageTransformer.h"

@implementation ShakeImageTransformer

+ (Class) transformedValueClass {
    return [NSData class];
}

- (id) transformedValue:(id)value {
    if (!value) {
        return nil;
    }
    
    if ([value isKindOfClass:[NSData class]]) {
        return value;
    }
    
    return UIImagePNGRepresentation(value);
}

- (id) reverseTransformedValue:(id)value {
    return [UIImage imageWithData: value];
}

@end
