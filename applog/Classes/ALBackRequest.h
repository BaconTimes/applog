//
//  ALBackRequest.h
//  Bacon
//
//  Created by 李培根 on 2018/5/28.
//  Copyright © 2018年 ZY. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ALBackRequest : NSObject

+ (void)testRequestParams:(id )params;

+ (void)testRequestParams:(id )params completion:(void (^)(void))completion;

@end
