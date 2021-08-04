//
//  ALViewController.m
//  applog
//
//  Created by 804258952@qq.com on 08/02/2021.
//  Copyright (c) 2021 804258952@qq.com. All rights reserved.
//

#import "ALViewController.h"
#import <AppLogo/ALog.h>
#import <AppLogo/AppLogManager.h>

@interface ALViewController ()

@property (nonatomic, assign) NSUInteger index;

@end

@implementation ALViewController

- (instancetype)init
{
    self = [super init];
    if (self) {
        _index = 0;
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
//    [self semaphoreTest];
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.view addSubview:btn];
    
    [btn setBackgroundColor:[UIColor cyanColor]];
    btn.frame = CGRectMake(0, 0, 100, 100);
    btn.center = self.view.center;
    [btn addTarget:self action:@selector(btnClick) forControlEvents:UIControlEventTouchUpInside];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)btnClick {
    [AppLogManager.shareManger addRequestWithParam:@(_index)];
    _index += 1;
}

-(void)semaphoreTest{
    
    dispatch_async(dispatch_get_global_queue(0, 0), ^{
        dispatch_semaphore_t semaphore = dispatch_semaphore_create(0);
           
           for (int i = 0; i<10; i++) {
               NSLog(@"add task index = %@", @(i));
               [self semaphoreTestBlock:^(NSString *TNT) {
                   NSLog(@"任务完成 %d",i);
                   dispatch_semaphore_signal(semaphore);
               }];
               
               dispatch_semaphore_wait(semaphore, DISPATCH_TIME_FOREVER);
               NSLog(@"信号量限制 %d",i);
           }
    });
}

-(void)semaphoreTestBlock:(void(^)(NSString * TNT))block{
    
    dispatch_queue_t queue = dispatch_queue_create("myqueue",DISPATCH_QUEUE_CONCURRENT);
//    dispatch_queue_t queue = dispatch_get_main_queue();
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1 * NSEC_PER_SEC)), queue, ^{
        block(@"完成");
    });
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
