//
//  Dog.m
//  forwardInvocationDemo
//
//  Created by lihao on 2018/12/29.
//  Copyright © 2018 lihao. All rights reserved.
//

#import "Dog.h"

@implementation Dog


- (void)dogName:(NSString*)name age:(int)age
{
     NSLog(@"Invorking method on %@ object with selector %@",[self class],NSStringFromSelector(_cmd));
}

- (void)dogEat
{
     NSLog(@"Invorking method on %@ object with selector %@",[self class],NSStringFromSelector(_cmd));
}



@end
