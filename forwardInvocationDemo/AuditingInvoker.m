//
//  AuditingInvoker.m
//  forwardInvocationDemo
//
//  Created by lihao on 2018/12/29.
//  Copyright © 2018 lihao. All rights reserved.
//

#import "AuditingInvoker.h"

@implementation AuditingInvoker


- (void)preInvoke:(NSInvocation *)inv withTarget:(id)target{
    NSLog(@"before sending message with selector %@ to %@ object", NSStringFromSelector([inv selector]),[target className]);
}
- (void)postInvoke:(NSInvocation *)inv withTarget:(id)target{
    NSLog(@"after sending message with selector %@ to %@ object", NSStringFromSelector([inv selector]),[target className]);
    
}

@end
