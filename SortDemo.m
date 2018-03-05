//
//  ViewController.m
//  rankDemo
//
//  Created by 易博 on 2018/3/5.
//  Copyright © 2018年 易博. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic,strong) NSMutableArray *beforeRankData;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self InsertSort];
}

//插入排序
-(void)InsertSort
{
    NSInteger i = 0,j = 0;
    NSString *rankStr = @"";
    
    NSLog(@"#########  排序前  #########");
    for (int i = 0; i < self.beforeRankData.count; i++ ) {
        rankStr = [NSString stringWithFormat:@"%@  %ld",rankStr,[self.beforeRankData[i] integerValue]];
    }
    NSLog(@"%@", rankStr);
    
    NSNumber *temp;
    for (i = 1; i < self.beforeRankData.count; i++) {
        if (self.beforeRankData[i] < self.beforeRankData[i - 1]) {
            temp = self.beforeRankData[i];
            
            for (j = i - 1; j >= 0 && self.beforeRankData[j] > temp; j--) {
                self.beforeRankData[j + 1] = self.beforeRankData[j];
            }
            self.beforeRankData[j + 1] = temp;
        }
    }
    
    rankStr = @"";
    NSLog(@"#########  排序后  #########");
    for (int i = 0; i < self.beforeRankData.count; i++ ) {
        rankStr = [NSString stringWithFormat:@"%@  %ld",rankStr,[self.beforeRankData[i] integerValue]];
    }
    NSLog(@"%@", rankStr);
}

//直接选择排序
-(void)SelectedSort
{
    NSInteger i = 0,j = 0;
    NSString *rankStr = @"";
    
    NSLog(@"#########  排序前  #########");
    for (int i = 0; i < self.beforeRankData.count; i++ ) {
        rankStr = [NSString stringWithFormat:@"%@  %ld",rankStr,[self.beforeRankData[i] integerValue]];
    }
    NSLog(@"%@", rankStr);
    
    NSNumber *temp;
    for (i = 0; i < self.beforeRankData.count; i++) {
        for (j = i + 1; j < self.beforeRankData.count; j++) {
            if (self.beforeRankData[j] < self.beforeRankData[i]) {
                temp = self.beforeRankData[i];
                self.beforeRankData[i] = self.beforeRankData[j];
                self.beforeRankData[j] = temp;
            }
        }
    }
    
    rankStr = @"";
    NSLog(@"#########  排序后  #########");
    for (int i = 0; i < self.beforeRankData.count; i++ ) {
        rankStr = [NSString stringWithFormat:@"%@  %ld",rankStr,[self.beforeRankData[i] integerValue]];
    }
    NSLog(@"%@", rankStr);
}

//冒泡排序
-(void)BubbleSort
{
    NSInteger i = 0,j = 0;
    NSString *rankStr = @"";
    
    NSLog(@"#########  排序前  #########");
    for (int i = 0; i < self.beforeRankData.count; i++ ) {
        rankStr = [NSString stringWithFormat:@"%@  %ld",rankStr,[self.beforeRankData[i] integerValue]];
    }
    NSLog(@"%@", rankStr);
    
    NSNumber *temp;
    for (i = 0; i < self.beforeRankData.count - 1; i++) {
        for (j = 0; j < self.beforeRankData.count - 1 - i; j++) {
            if (self.beforeRankData[j] > self.beforeRankData[j + 1]) {
                temp = self.beforeRankData[j];
                self.beforeRankData[j] = self.beforeRankData[j + 1];
                self.beforeRankData[j + 1] = temp;
            }
        }
    }
    
    rankStr = @"";
    NSLog(@"#########  排序后  #########");
    for (int i = 0; i < self.beforeRankData.count; i++ ) {
        rankStr = [NSString stringWithFormat:@"%@  %ld",rankStr,[self.beforeRankData[i] integerValue]];
    }
    NSLog(@"%@", rankStr);
}

-(NSMutableArray *)beforeRankData
{
    if (!_beforeRankData) {
        _beforeRankData = [[NSMutableArray alloc]initWithObjects:@123, @51, @17, @61, @119, @34, @553, @1134, @103, @7, @1, @294, @421, @123, @17, @109, @673,nil];
    }
    return _beforeRankData;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
