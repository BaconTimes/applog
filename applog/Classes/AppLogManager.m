//
//  AppLogManager.m
//  applog
//
//  Created by 李培根 on 2021/8/2.
//

#import "AppLogManager.h"
#import "ALBackRequest.h"

@interface AppLogManager ()

@property (nonatomic, strong) NSMutableArray *queueArray;

@property (nonatomic, weak) id currentTask;

@end

@implementation AppLogManager

+ (instancetype)shareManger {
    static AppLogManager * _manager = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _manager = [[AppLogManager alloc] init];
    });
    return _manager;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        _queueArray = [NSMutableArray array];
        _currentTask = nil;
//        _semaphore = dispatch_semaphore_create(0);
    }
    return self;
}

- (void)addRequestWithParam:(id)param {
    __weak typeof(self) weakSelf = self;
    dispatch_async(dispatch_get_main_queue(), ^{
        if (param == nil) {
//            NSLog(@"param is nil, return");
            return;
        }
        // 如果没有执行的任务，那么就立即执行
        // 否则就将任务放在缓存队列中
        if (weakSelf.currentTask == nil) {
            // 如果缓存队列里面的数据为空，那么直接开始任务，不入缓存
            weakSelf.currentTask = param;
//            NSLog(@"start exec task data = %@", param);
            [ALBackRequest testRequestParams:param completion:^{
                dispatch_async(dispatch_get_main_queue(), ^{
                    weakSelf.currentTask = nil;
                    // 执行缓存队列里面的第一个任务
                    id data = weakSelf.queueArray.firstObject;
                    if (weakSelf.queueArray.firstObject) {
                        [weakSelf.queueArray removeObject:weakSelf.queueArray.firstObject];
                    }
//                    NSLog(@"add task data = %@", data);
                    [weakSelf addRequestWithParam:data];
                    // 将执行的任务移出对列
                });
            }];
        } else {
            // 如果缓存队列里面有数据，那么假如缓存队列
//            NSLog(@"add task to queue = %@", param);
            [self.queueArray addObject:param];
        }
    });
}

@end
