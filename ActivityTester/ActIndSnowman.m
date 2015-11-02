//
//  ActIndSnowman.m
//  ActivityTester
//
//  Created by dan schnabel on 2015-11-02.
//  Copyright (c) 2015 dan schnabel. All rights reserved.
//

#import "ActIndSnowman.h"

@implementation ActIndSnowman


CGFloat     AIWhiteColour[4] = {1,1,1,1};
CGFloat     AIBlackColour[4] = {0,0,0,1};

//
//   Being an activity indicator we do not want to dedicate CPU resources to doing a lot of rescaling.
//   Therefore the sizes are fixed and most of the constants are hard-coded.
//


- (void)drawRect:(CGRect)rect {
    CGRect    varyingDrawingRect;    //  This is used as the rectangle each and every time a piece of the snowman is to be drawn

    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetStrokeColor(context, AIWhiteColour);
    CGContextSetFillColor(context, AIWhiteColour);

    if (effectsStepCounter < 25) {
        //
        //   Draw the expanding base
        //
        varyingDrawingRect.size.width = 2 * effectsStepCounter;
        varyingDrawingRect.size.height = varyingDrawingRect.size.width;
        varyingDrawingRect.origin.x = rect.size.width / 2 - effectsStepCounter;
        varyingDrawingRect.origin.y = 105 - 2 * effectsStepCounter;
        UIBezierPath *movingCirclePath = [UIBezierPath bezierPathWithOvalInRect:varyingDrawingRect];
        [movingCirclePath fill];
    } else {
        //
        //   Draw the complete base
        //
        varyingDrawingRect.size.width = 50;
        varyingDrawingRect.size.height = 50;
        varyingDrawingRect.origin.x = 0;
        varyingDrawingRect.origin.y = 60;
        UIBezierPath *movingCirclePath = [UIBezierPath bezierPathWithOvalInRect:varyingDrawingRect];
        [movingCirclePath fill];
        
        if (effectsStepCounter < 45) {
            //
            //   Draw the expanding middle
            //
            NSInteger temp = effectsStepCounter - 25;
            varyingDrawingRect.size.width = 2 * temp;
            varyingDrawingRect.size.height = varyingDrawingRect.size.width;
            varyingDrawingRect.origin.x = 25 - temp;
            varyingDrawingRect.origin.y = 65 - 2 * temp;
            UIBezierPath *movingCirclePath = [UIBezierPath bezierPathWithOvalInRect:varyingDrawingRect];
            [movingCirclePath fill];
        } else {
            //
            //   Draw the complete middle
            //
            varyingDrawingRect.size.width = 40;
            varyingDrawingRect.size.height = 40;
            varyingDrawingRect.origin.x = 5;
            varyingDrawingRect.origin.y = 30;
            UIBezierPath *movingCirclePath = [UIBezierPath bezierPathWithOvalInRect:varyingDrawingRect];
            [movingCirclePath fill];
            
            if (effectsStepCounter < 60) {
                //
                //   Draw the expanding head
                //
                NSInteger temp = effectsStepCounter - 45;
                varyingDrawingRect.size.width = 2 * temp;
                varyingDrawingRect.size.height = varyingDrawingRect.size.width;
                varyingDrawingRect.origin.x = 25 - temp;
                varyingDrawingRect.origin.y = 35 - 2 * temp;
                UIBezierPath *movingCirclePath = [UIBezierPath bezierPathWithOvalInRect:varyingDrawingRect];
                [movingCirclePath fill];
            } else {
                //
                //   Draw the completed head
                //
                varyingDrawingRect.size.width = 30;
                varyingDrawingRect.size.height = 30;
                varyingDrawingRect.origin.x = 10;
                varyingDrawingRect.origin.y = 10;
                UIBezierPath *movingCirclePath = [UIBezierPath bezierPathWithOvalInRect:varyingDrawingRect];
                [movingCirclePath fill];
                
                //
                //   Any remaining objects to draw - hat, buttons, eyes, nosse, mouth will all be black
                //
                CGContextSetStrokeColor(context, AIBlackColour);
                CGContextSetFillColor(context, AIBlackColour);
                
                if (effectsStepCounter < 63) {
                    //
                    //  Draw the rising brim of the hat
                    //
                    NSInteger   temp = effectsStepCounter - 59;
                    varyingDrawingRect.size.width = 30;
                    varyingDrawingRect.size.height = temp;
                    varyingDrawingRect.origin.x = 10;
                    varyingDrawingRect.origin.y = 15 - temp;
                    UIBezierPath *movingCirclePath = [UIBezierPath bezierPathWithRect:varyingDrawingRect];
                    [movingCirclePath fill];
                } else {
                    //
                    //  Draw the completed brim of the hat
                    //
                    varyingDrawingRect.size.width = 30;
                    varyingDrawingRect.size.height = 3;
                    varyingDrawingRect.origin.x = 10;
                    varyingDrawingRect.origin.y = 12;
                    UIBezierPath *movingCirclePath = [UIBezierPath bezierPathWithRect:varyingDrawingRect];
                    [movingCirclePath fill];
                    
                    if (effectsStepCounter < 75) {
                        //
                        //  Draw the rising pipe of the hat
                        //
                        NSInteger   temp = effectsStepCounter - 62;
                        varyingDrawingRect.size.width = 20;
                        varyingDrawingRect.size.height = temp;
                        varyingDrawingRect.origin.x = 15;
                        varyingDrawingRect.origin.y = 12 - temp;
                        UIBezierPath *movingCirclePath = [UIBezierPath bezierPathWithRect:varyingDrawingRect];
                        [movingCirclePath fill];
                    } else {
                        //
                        //  Draw the completed pipe of the hat
                        //
                        varyingDrawingRect.size.width = 20;
                        varyingDrawingRect.size.height = 12;
                        varyingDrawingRect.origin.x = 15;
                        varyingDrawingRect.origin.y = 0;
                        UIBezierPath *movingCirclePath = [UIBezierPath bezierPathWithRect:varyingDrawingRect];
                        [movingCirclePath fill];
                        
                        if (effectsStepCounter > 78) {
                            //
                            //   Draw the lowest button
                            //
                            varyingDrawingRect.size.width = 4;
                            varyingDrawingRect.size.height = 4;
                            varyingDrawingRect.origin.x = 23;
                            varyingDrawingRect.origin.y = 56;
                            UIBezierPath *movingCirclePath = [UIBezierPath bezierPathWithOvalInRect:varyingDrawingRect];
                            [movingCirclePath fill];
                            if (effectsStepCounter > 81) {
                                //
                                //   Draw the middle button
                                //
                                varyingDrawingRect.origin.x = 23;
                                varyingDrawingRect.origin.y = 48;
                                movingCirclePath = [UIBezierPath bezierPathWithOvalInRect:varyingDrawingRect];
                                [movingCirclePath fill];
                                if (effectsStepCounter > 84) {
                                    //
                                    //   Draw the lowest button
                                    //
                                    varyingDrawingRect.origin.x = 23;
                                    varyingDrawingRect.origin.y = 40;
                                    movingCirclePath = [UIBezierPath bezierPathWithOvalInRect:varyingDrawingRect];
                                    [movingCirclePath fill];
                                    if (effectsStepCounter > 87) {
                                        //
                                        //   Draw the eyes
                                        //
                                        varyingDrawingRect.origin.x = 18;
                                        varyingDrawingRect.origin.y = 20;
                                        movingCirclePath = [UIBezierPath bezierPathWithOvalInRect:varyingDrawingRect];
                                        [movingCirclePath fill];
                                        varyingDrawingRect.origin.x = 29;
                                        movingCirclePath = [UIBezierPath bezierPathWithOvalInRect:varyingDrawingRect];
                                        [movingCirclePath fill];
                                        if (effectsStepCounter > 90) {
                                            //
                                            //   Draw the nose
                                            //
                                            varyingDrawingRect.size.width = 8;
                                            varyingDrawingRect.size.height = 3;
                                            varyingDrawingRect.origin.x = 25;
                                            varyingDrawingRect.origin.y = 26;
                                            movingCirclePath = [UIBezierPath bezierPathWithRect:varyingDrawingRect];
                                            [movingCirclePath fill];
                                        }
                                    }
                               }
                            }
                        }
                    }
               }
            }
        }
    }
}

-(ActIndSnowman *) init {
    self = [super init];
    [self setBackgroundColor:[UIColor clearColor]];
    [self setAlpha:0.5];
    return self;
}

-(void) setFrame:(CGRect)frame {
    CGPoint  centrePoint;         // The centre of the frame given
    CGRect   trueFrame;
    
    centrePoint.x = frame.origin.x + frame.size.width / 2;
    centrePoint.y = frame.origin.y + frame.size.height / 2;
    trueFrame.size.width = 50;
    trueFrame.size.height = 100;
    trueFrame.origin.x = centrePoint.x - 25;
    trueFrame.origin.y = centrePoint.y - 50;
    
    [super setFrame:trueFrame];
}

-(void) start {
    //
    //   Calling this method starts the animation of the activity indicator
    //
    effectsStepCounter = 0;
    [self setNeedsDisplay];
    animationTimer = [NSTimer scheduledTimerWithTimeInterval:0.03 target:self selector:@selector(animationStep) userInfo:nil repeats:YES];
}

-(void) animationStep {
    effectsStepCounter++;
    effectsStepCounter = effectsStepCounter % 100;
    [self setNeedsDisplay];
}

-(void) stop {
    //
    //  Calling this method stops the animation of the activity timer
    //
    [animationTimer invalidate];
    effectsStepCounter = 99;
    [self setNeedsDisplay];
}



@end
