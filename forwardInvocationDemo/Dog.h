//
//  Dog.h
//  forwardInvocationDemo
//
//  Created by lihao on 2018/12/29.
//  Copyright © 2018 lihao. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Dog : NSObject

- (void)dogName:(NSString*)name age:(int)age;

- (void)dogEat;

@end

NS_ASSUME_NONNULL_END
