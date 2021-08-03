//
//  ALog.m
//  applog
//
//  Created by 李培根 on 2021/8/2.
//

#import "ALog.h"
#import "ALBackRequest.h"

void ALogMessageF(const char *filename, int lineNumber, const char *functionName, NSString *domain, int level, NSString *format, ...)
{
    va_list args;
    va_start(args, format);
    NSString *prefix = [NSString stringWithFormat:@"%s %d %s %@ %d", filename, lineNumber, functionName, domain, level];
    NSString *msgString = [[NSString alloc] initWithFormat:format arguments:args];
    [ALog log:@"%@ %@", prefix, msgString, nil];
    va_end(args);
}

@implementation ALog

+ (void)log:(NSString *)format, ... {
    if (format) {
        
//        // 取出第一个参数
//        NSLog(@"%@", firstArg);
//        // 定义一个指向个数可变的参数列表指针；
//        va_list args;
//        // 用于存放取出的参数
//        NSString *arg;
//        // 初始化变量刚定义的va_list变量，这个宏的第二个参数是第一个可变参数的前一个参数，是一个固定的参数
//        va_start(args, firstArg);
//        // 遍历全部参数 va_arg返回可变的参数(a_arg的第二个参数是你要返回的参数的类型)
//        while ((arg = va_arg(args, NSString *))) {
//            NSLog(@"%@", arg);
//        }
//        // 清空参数列表，并置参数指针args无效
//        va_end(args);

        va_list args;
        va_start(args, format);
        NSString*outputStr = [[NSString alloc] initWithFormat:format arguments:args];
        NSLog(@"%@", outputStr);
        [ALBackRequest testRequestParams:outputStr];
        va_end(args);
    }
}

@end
