//
//  ActIndSnowman.h
//  ActivityTester
//
//  Created by dan schnabel on 2015-11-02.
//  Copyright (c) 2015 dan schnabel. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ActIndSnowman : UIView {
    NSTimer     *animationTimer;
    float       trueFrameSize;        // Although setFrame may be supplied anything, the trueFrameSize of the activity indicator is 100x50,
                                      // centred at the centre of the specified frame
    NSInteger   effectsStepCounter;
}

-(ActIndSnowman *) init;
-(void) setFrame:(CGRect)frame;
-(void) start;
-(void) stop;


@end
