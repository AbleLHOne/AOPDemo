//
//  main.m
//  forwardInvocationDemo
//
//  Created by lihao on 2018/12/29.
//  Copyright © 2018 lihao. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AspectProxy.h"
#import "AuditingInvoker.h"
#import "Dog.h"
//#import <objc/runtime.h>
int main(int argc, const char * argv[]) {
    @autoreleasepool {

        id dog = [[Dog alloc]init];
        
        NSValue *selValue1 =[NSValue valueWithPointer:@selector(dogEat)];
        
        NSArray *selValues=@[selValue1];
        
        AuditingInvoker *invoker =[[AuditingInvoker alloc]init];
        
        // 创建dogt对象的代理studentProxy
        id studentProxy = [[AspectProxy alloc] initWithObject:dog selectors:selValues andInvoker:invoker];
        
        [studentProxy dogEat];

        [studentProxy dogName:@"123" age:2];


        
        
    }
    return 0;
}
