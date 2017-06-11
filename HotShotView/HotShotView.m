//
//  HotShotView.m
//  HotShotView
//
//  Created by zhaoyubin on 16/9/23.
//  Copyright © 2016年 zhaoyubin. All rights reserved.
//

#import "HotShotView.h"

@implementation ShotUpdeteModel

@end
@implementation ShotAreaModel

@end


@implementation HotShotView

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
-(instancetype)init
{
    self = [super init];
    if (self)
    {
        self.backgroundColor = [UIColor whiteColor];
    }
    return self;
}
-(instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self)
    {
        self.backgroundColor = [UIColor whiteColor];
    }
    return self;
}
- (void)drawRect:(CGRect)rect {
    // Drawing code
    [self createHotShotView];
}
-(void)setHotShotArray:(NSArray *)hotShotArray
{
    NSMutableArray *modelArr = [[NSMutableArray alloc]init];
    for (ShotAreaModel *model in hotShotArray)
    {
        NSMutableArray *array = [[NSMutableArray alloc]init];
        for (NSValue *value in model.points)
        {
            CGFloat screenW = [UIScreen mainScreen].bounds.size.width;
            CGPoint point = [value CGPointValue];
            CGPoint afterPoint = CGPointMake(point.x*screenW/500, point.y*screenW/500);
            [array addObject:[NSValue valueWithCGPoint:afterPoint]];
        }
        model.points = array;
        [modelArr addObject:model];
    }
    
    _hotShotArray =modelArr;
}
-(void)setSitelineArray:(NSArray *)sitelineArray
{
    NSMutableArray *lineArr = [[NSMutableArray alloc]init];
    for (NSArray *lines in sitelineArray)
    {
        NSMutableArray *array = [[NSMutableArray alloc]init];
        for (NSValue *value in lines)
        {
            CGFloat screenW = [UIScreen mainScreen].bounds.size.width;
            CGPoint point = [value CGPointValue];
            CGPoint afterPoint = CGPointMake(point.x*screenW/500, point.y*screenW/500);
            [array addObject:[NSValue valueWithCGPoint:afterPoint]];

        }
        [lineArr addObject:array];
    }
    _sitelineArray = lineArr;
}
-(void)createHotShotView
{
    for (ShotAreaModel *areaModel in _hotShotArray)
    {
        [self drawAreaWithPoints:areaModel.points lineColor:areaModel.lineColor fillColor:areaModel.fillColor lineWidth:areaModel.lineWidth];
        //画文字
        /*
        switch (areaModel.shotType)
        {
            case HotShotTypeClose:
                
                break;
                
            default:
                break;
        }
         */
    }
    for (NSArray *linesArray  in _sitelineArray)
    {
        [self drawLineWithPoints:linesArray lineColor:[UIColor whiteColor] lineWidth:3.0];
    }
}
-(void)drawAreaWithPoints:(NSArray *)points lineColor:(UIColor *)lcolor fillColor:(UIColor *)fcolor lineWidth:(CGFloat)lwidth
{
    CGPoint firstPoint = [[points firstObject]CGPointValue];
    UIBezierPath* bezierPath = UIBezierPath.bezierPath;
    [bezierPath moveToPoint:firstPoint];
    for (int i = 1; i < points.count; i++)
    {
        CGPoint point = [[points objectAtIndex:i]CGPointValue];
        [bezierPath addLineToPoint:point];
    }
    bezierPath.lineWidth = lwidth;
    [bezierPath closePath];
    [lcolor setStroke];
    [fcolor setFill];
    [bezierPath fill];
    [bezierPath stroke];
}
-(void)drawLineWithPoints:(NSArray *)points lineColor:(UIColor *)lcolor lineWidth:(CGFloat)lwidth
{
    CGPoint firstPoint = [[points firstObject]CGPointValue];
    UIBezierPath* bezierPath = UIBezierPath.bezierPath;
    [bezierPath moveToPoint:firstPoint];
    for (int i = 1; i < points.count; i++)
    {
        CGPoint point = [[points objectAtIndex:i]CGPointValue];
        [bezierPath addLineToPoint:point];
    }
    bezierPath.lineWidth = lwidth;
    [lcolor setStroke];
    [bezierPath stroke];
}
@end
