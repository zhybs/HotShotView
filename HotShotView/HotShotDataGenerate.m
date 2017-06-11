//
//  HotShotDataGenerate.m
//  HotShotView
//
//  Created by zhaoyubin on 16/9/24.
//  Copyright © 2016年 zhaoyubin. All rights reserved.
//

#import "HotShotDataGenerate.h"
#import "HotShotView.h"

static NSInteger const litterCircleLeftX = 35 + 137 + 30;
static NSInteger const litterCircleRightX = 35 + 137 + 156 - 30;
static NSInteger const largeCircleLeftX = 35 + 60;
static NSInteger const largeCircleRightX = 500 - 35 - 60;

static NSInteger const litterCircleRadius = 78;
static NSInteger const largeCircleRadius = 230;

@implementation HotShotDataGenerate
-(void)generateDataWithAraePoints:(NSArray **)areaPoints linePoints:(NSArray **)linePoints
{
    ShotAreaModel *aM = [[ShotAreaModel alloc]init];
    NSArray *points = [self getArea1PointDataArray];
    aM.points = points;
    aM.lineWidth = 2.0;
    aM.lineColor = [UIColor whiteColor];
    aM.fillColor = [UIColor redColor];
    aM.centerPoint = CGPointMake(250, 60);
    
    ShotAreaModel *aM2 = [[ShotAreaModel alloc]init];
    NSArray *points2 = [self getArea2PointDataArray];
    aM2.points = points2;
    aM2.lineWidth = 2.0;
    aM2.lineColor = [UIColor whiteColor];
    aM2.fillColor = [UIColor redColor];
    aM2.centerPoint = CGPointMake(35 + 137 / 2, 60);
    
    ShotAreaModel *aM3 = [[ShotAreaModel alloc]init];
    NSArray *points3 = [self getArea3PointDataArray];
    aM3.points = points3;
    aM3.lineWidth = 2.0;
    aM3.lineColor = [UIColor whiteColor];
    aM3.fillColor = [UIColor yellowColor];
    aM3.centerPoint = CGPointMake(35 + 60 + 60, 180);
    
    ShotAreaModel *aM4 = [[ShotAreaModel alloc]init];
    NSArray *points4 = [self getArea4PointDataArray];
    aM4.points = points4;
    aM4.lineWidth = 2.0;
    aM4.lineColor = [UIColor whiteColor];
    aM4.fillColor = [UIColor blueColor];
    aM4.centerPoint = CGPointMake(500 - 35 - 60 - 60, 180);
    
    ShotAreaModel *aM5 = [[ShotAreaModel alloc]init];
    NSArray *points5 = [self getArea5PointDataArray];
    aM5.points = points5;
    aM5.lineWidth = 2.0;
    aM5.lineColor = [UIColor whiteColor];
    aM5.fillColor = [UIColor yellowColor];
    aM5.centerPoint = CGPointMake(500 - 35 - 137 / 2, 60);
    
    ShotAreaModel *aM6 = [[ShotAreaModel alloc]init];
    NSArray *points6 = [self getArea6PointDataArray];
    aM6.points = points6;
    aM6.lineWidth = 2.0;
    aM6.lineColor = [UIColor whiteColor];
    aM6.fillColor = [UIColor blueColor];
    aM6.centerPoint = CGPointMake(35 / 2, 60);
    
    ShotAreaModel *aM7 = [[ShotAreaModel alloc]init];
    NSArray *points7 = [self getArea7PointDataArray];
    aM7.points = points7;
    aM7.lineWidth = 2.0;
    aM7.lineColor = [UIColor whiteColor];
    aM7.fillColor = [UIColor redColor];
    aM7.centerPoint = CGPointMake((35 + 120) / 2, 210);
    
    ShotAreaModel *aM8 = [[ShotAreaModel alloc]init];
    NSArray *points8 = [self getArea8PointDataArray];
    aM8.points = points8;
    aM8.lineWidth = 2.0;
    aM8.lineColor = [UIColor whiteColor];
    aM8.fillColor = [UIColor yellowColor];
    aM8.centerPoint = CGPointMake(250, 156 * 2);
    
    ShotAreaModel *aM9 = [[ShotAreaModel alloc]init];
    NSArray *points9 = [self getArea9PointDataArray];
    aM9.points = points9;
    aM9.lineWidth = 2.0;
    aM9.lineColor = [UIColor whiteColor];
    aM9.fillColor = [UIColor yellowColor];
    aM9.centerPoint = CGPointMake(500 - (35 + 120) / 2, 210);
    
    ShotAreaModel *aM10 = [[ShotAreaModel alloc]init];
    NSArray *points10 = [self getArea10PointDataArray];
    aM10.points = points10;
    aM10.lineWidth = 2.0;
    aM10.lineColor = [UIColor whiteColor];
    aM10.fillColor = [UIColor blueColor];
    aM10.centerPoint = CGPointMake(500 - 35 / 2, 60);

    *areaPoints =  @[aM, aM2, aM3, aM4, aM5, aM6, aM7, aM8, aM9, aM10];
    *linePoints =   [self getLineArray];
}
-(NSArray *)getArea1PointDataArray{
    
    NSMutableArray * array = [NSMutableArray arrayWithCapacity:1];
    
    [array addObject:[NSValue valueWithCGPoint:CGPointMake(172, 0)]];
    
    NSInteger x = 172;
    for (NSInteger i = x ; i < 172 + litterCircleRadius * 2; i++) {
        
        CGFloat y = [self getLitterCircleYWithX:i];
        
        [array addObject:[NSValue valueWithCGPoint:CGPointMake(i, y)]];
        
    }
    
    [array addObject:[NSValue valueWithCGPoint:CGPointMake(172 + litterCircleRadius * 2, 0)]];
    return array;
    
}

-(NSArray *)getArea2PointDataArray{
    
    NSMutableArray * array = [NSMutableArray arrayWithCapacity:1];
    
    [array addObject:[NSValue valueWithCGPoint:CGPointMake(35, 0)]];
    
    NSInteger x = 35;
    for (NSInteger i = x ; i < 35 + 60; i++) {
        
        CGFloat y = [self getLargeCircleYWithX:i];
        
        [array addObject:[NSValue valueWithCGPoint:CGPointMake(i, y)]];
        
    }
    
    x = 35 + 137 + 30;
    for (NSInteger i = x; i >= 35 + 137; i--) {
        
        CGFloat y = [self getLitterCircleYWithX:i];
        
        [array addObject:[NSValue valueWithCGPoint:CGPointMake(i, y)]];
    }
    
    [array addObject:[NSValue valueWithCGPoint:CGPointMake(35 + 137, 0)]];
    
    return array;
}

-(NSArray *)getArea3PointDataArray{
    
    NSMutableArray * array = [NSMutableArray arrayWithCapacity:1];
    
    NSInteger x = 35 + 137 + 30;
    CGFloat y = [self getLitterCircleYWithX:x];
    [array addObject:[NSValue valueWithCGPoint:CGPointMake(x, y)]];
    
    x = 35 + 60;
    y = [self getLargeCircleYWithX:x];
    [array addObject:[NSValue valueWithCGPoint:CGPointMake(x, y)]];
    
    
    for (NSInteger i = x ; i < 250; i++) {
        
        CGFloat y = [self getLargeCircleYWithX:i];
        
        [array addObject:[NSValue valueWithCGPoint:CGPointMake(i, y)]];
        
    }
    
    x = 250;
    for (NSInteger i = x; i >= 35 + 137 + 30; i--) {
        
        CGFloat y = [self getLitterCircleYWithX:i];
        
        [array addObject:[NSValue valueWithCGPoint:CGPointMake(i, y)]];
    }
    
    return array;
}

-(NSArray *)getArea4PointDataArray{
    
    NSMutableArray * array = [NSMutableArray arrayWithCapacity:1];
    
    NSInteger x = 250;
    CGFloat y = [self getLitterCircleYWithX:x];
    [array addObject:[NSValue valueWithCGPoint:CGPointMake(x, y)]];
    
    //    x = 250;
    y = [self getLargeCircleYWithX:x];
    [array addObject:[NSValue valueWithCGPoint:CGPointMake(x, y)]];
    
    
    for (NSInteger i = x ; i < 500 - 35 - 60; i++) {
        
        CGFloat y = [self getLargeCircleYWithX:i];
        
        [array addObject:[NSValue valueWithCGPoint:CGPointMake(i, y)]];
        
    }
    
    x = 500 - 35 - 137 - 30;
    for (NSInteger i = x; i >= 250; i--) {
        
        CGFloat y = [self getLitterCircleYWithX:i];
        
        [array addObject:[NSValue valueWithCGPoint:CGPointMake(i, y)]];
    }
    
    return array;
}

-(NSArray *)getArea5PointDataArray{
    
    NSMutableArray * array = [NSMutableArray arrayWithCapacity:1];
    
    NSInteger x = 500 - 35 - 137;
    [array addObject:[NSValue valueWithCGPoint:CGPointMake(x, 0)]];
    
    
    for (NSInteger i = x; i >= 500 - 35 - 137 - 30; i--) {
        
        CGFloat y = [self getLitterCircleYWithX:i];
        
        [array addObject:[NSValue valueWithCGPoint:CGPointMake(i, y)]];
    }
    
    x = 500 - 35 - 60;
    for (NSInteger i = x ; i < 500 - 35; i++) {
        
        CGFloat y = [self getLargeCircleYWithX:i];
        
        [array addObject:[NSValue valueWithCGPoint:CGPointMake(i, y)]];
        
    }
    
    x = 500 - 35;
    [array addObject:[NSValue valueWithCGPoint:CGPointMake(x, 0)]];
    
    return array;
}

-(NSArray *)getArea6PointDataArray{
    
    NSMutableArray * array = [NSMutableArray arrayWithCapacity:1];
    
    NSInteger x = 0;
    CGFloat y = 0;
    [array addObject:[NSValue valueWithCGPoint:CGPointMake(x, y)]];
    
    y = 120;
    [array addObject:[NSValue valueWithCGPoint:CGPointMake(x, y)]];
    
    x = 35;
    [array addObject:[NSValue valueWithCGPoint:CGPointMake(x, y)]];
    
    y = 0;
    [array addObject:[NSValue valueWithCGPoint:CGPointMake(x, y)]];
    
    return array;
}

-(NSArray *)getArea7PointDataArray{
    
    NSMutableArray * array = [NSMutableArray arrayWithCapacity:1];
    
    NSInteger x = 0;
    CGFloat y = 120;
    [array addObject:[NSValue valueWithCGPoint:CGPointMake(x, y)]];
    
    y = 465;
    [array addObject:[NSValue valueWithCGPoint:CGPointMake(x, y)]];
    
    x = 35 + 120;
    for (NSInteger i = x; i >= 35; i--) {
        y = [self getLargeCircleYWithX:i];
        [array addObject:[NSValue valueWithCGPoint:CGPointMake(i, y)]];
    }
    
    x = 35;
    y = 120;
    
    [array addObject:[NSValue valueWithCGPoint:CGPointMake(x, y)]];
    
    return array;
}

-(NSArray *)getArea8PointDataArray{
    
    NSMutableArray * array = [NSMutableArray arrayWithCapacity:1];
    
    NSInteger x = 35 + 120;
    CGFloat y = [self getLargeCircleYWithX:x];
    [array addObject:[NSValue valueWithCGPoint:CGPointMake(x, y)]];
    
    x = 0;
    y = 465;
    [array addObject:[NSValue valueWithCGPoint:CGPointMake(x, y)]];
    
    x = 500;
    y = 465;
    [array addObject:[NSValue valueWithCGPoint:CGPointMake(x, y)]];
    
    x = 500 - 35 - 120;
    
    for (NSInteger i = x; i >= 35 + 120; i--) {
        y = [self getLargeCircleYWithX:i];
        [array addObject:[NSValue valueWithCGPoint:CGPointMake(i, y)]];
    }
    
    return array;
}

-(NSArray *)getArea9PointDataArray{
    
    NSMutableArray * array = [NSMutableArray arrayWithCapacity:1];
    
    NSInteger x = 500 - 35 - 120;
    CGFloat y = [self getLargeCircleYWithX:x];
    [array addObject:[NSValue valueWithCGPoint:CGPointMake(x, y)]];
    
    x = 500;
    y = 465;
    [array addObject:[NSValue valueWithCGPoint:CGPointMake(x, y)]];
    
    x = 500;
    y = 120;
    [array addObject:[NSValue valueWithCGPoint:CGPointMake(x, y)]];
    
    x = 500 - 35;
    y = 120;
    [array addObject:[NSValue valueWithCGPoint:CGPointMake(x, y)]];
    
    x = 500 - 35;
    for (NSInteger i = x; i >= 500 - 35 - 120; i--) {
        y = [self getLargeCircleYWithX:i];
        [array addObject:[NSValue valueWithCGPoint:CGPointMake(i, y)]];
    }
    
    return array;
}


-(NSArray *)getArea10PointDataArray{
    
    NSMutableArray * array = [NSMutableArray arrayWithCapacity:1];
    
    NSInteger x = 500 - 35;
    CGFloat y = 0;
    [array addObject:[NSValue valueWithCGPoint:CGPointMake(x, y)]];
    
    y = 120;
    [array addObject:[NSValue valueWithCGPoint:CGPointMake(x, y)]];
    
    x = 500;
    [array addObject:[NSValue valueWithCGPoint:CGPointMake(x, y)]];
    
    y = 0;
    [array addObject:[NSValue valueWithCGPoint:CGPointMake(x, y)]];
    
    return array;
}

#pragma mark - Get Circle Y
-(CGFloat)getLitterCircleYWithX:(NSInteger)x{
    
    NSInteger value = 78 * 78 - (250 - x) * (250 - x);
    CGFloat y = sqrtf(value) + 46;
    
    return y;
}

-(CGFloat)getLargeCircleYWithX:(NSInteger)x{
    
    NSInteger value = 230 * 230 - (250 - x) * (250 - x);
    CGFloat y = sqrtf(value) + 50;
    
    return y;
}


#pragma mark 非填充 线条点集合
-(NSArray *)getLineArray{
    
    NSMutableArray * array = [NSMutableArray arrayWithCapacity:1];
    [array addObject:[self getRectLine]];
    [array addObject:[self getThreeSecondsLine]];
    [array addObject:[self getFaQiuXianLine]];
    return array;
    
}

-(NSArray *)getRectLine{
    
    NSMutableArray * array = [NSMutableArray arrayWithCapacity:1];
    
    NSInteger x = 35 + 137;
    CGFloat y = 0;
    [array addObject:[NSValue valueWithCGPoint:CGPointMake(x, y)]];
    
    y = 186;
    [array addObject:[NSValue valueWithCGPoint:CGPointMake(x, y)]];
    
    x = 500 - 35 - 137;
    [array addObject:[NSValue valueWithCGPoint:CGPointMake(x, y)]];
    
    y = 0;
    [array addObject:[NSValue valueWithCGPoint:CGPointMake(x, y)]];
    
    return array;
}

-(NSArray *)getThreeSecondsLine{
    
    NSMutableArray * array = [NSMutableArray arrayWithCapacity:1];
    
    NSInteger x = 250 - 39;
    for (NSInteger i = x; i < 250 + 39; i++) {
        
        NSInteger value = 39 * 39 - (250 - i) * (250 - i);
        CGFloat y = sqrtf(value) + 31;
        
        [array addObject:[NSValue valueWithCGPoint:CGPointMake(i, y)]];
    }
    
    return array;
    
}

-(NSArray *)getFaQiuXianLine{
    
    NSMutableArray * array = [NSMutableArray arrayWithCapacity:1];
    
    NSInteger x = 250 - 58;
    for (NSInteger i = x; i < 250 + 58; i++) {
        
        NSInteger value = 58 * 58 - (250 - i) * (250 - i);
        CGFloat y = sqrtf(value) + 186;
        
        [array addObject:[NSValue valueWithCGPoint:CGPointMake(i, y)]];
    }
    
    x = 250 + 58;
    for (NSInteger i = x; i > 250 - 58; i--) {
        
        NSInteger value = 58 * 58 - (250 - i) * (250 - i);
        CGFloat y = 186 - sqrtf(value);
        
        [array addObject:[NSValue valueWithCGPoint:CGPointMake(i, y)]];
    }
    
    return array;
    
}
@end
