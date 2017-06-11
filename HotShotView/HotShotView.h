//
//  HotShotView.h
//  HotShotView
//
//  Created by zhaoyubin on 16/9/23.
//  Copyright © 2016年 zhaoyubin. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSUInteger, HotShotType) {
    
    HotShotTypeClose                = 1, // 三秒区
    
    HotShotTypeMiddleLeft           = 2, // 左翼中距离
    HotShotTypeMiddleLeftOblique    = 3, // 左侧中距离
    HotShotTypeMiddleRightOblique   = 4, // 右侧中距离
    HotShotTypeMiddleRight          = 5, // 右翼中距离
    
    HotShotTypeFarLeft              = 6, // 左侧底角三分
    HotShotTypeFarLeftOblique       = 7, // 左侧斜45度三分
    HotShotTypeFarCenter            = 8, // 顶角三分
    HotShotTypeFarRightOblique      = 9, // 右侧斜45度三分
    HotShotTypeFarRight             = 10 // 右侧底角三分
    
};
@interface ShotUpdeteModel : NSObject
@property(nonatomic,assign)HotShotType shotType;
@property(nonatomic,assign)NSInteger dividendValue; //被除数
@property(nonatomic,assign)NSInteger divisorValue; //除数
@end

@interface ShotAreaModel : NSObject
@property(nonatomic,retain)NSArray *points;
@property(nonatomic,retain)UIColor *fillColor;
@property(nonatomic,retain)UIColor *lineColor;
@property(nonatomic,assign)CGFloat lineWidth;
@property(nonatomic,assign)HotShotType shotType;
@property (nonatomic,assign) CGPoint centerPoint;
@end

@interface HotShotView : UIView
@property(nonatomic,retain)NSArray *hotShotArray;   //区域数组
@property(nonatomic,retain)NSArray *sitelineArray;  //场地线条数组
@end
