//
//  Deliveryservice.h
//  PizzaRestaurant
//
//  Created by Arsalan Vakili on 2015-06-13.
//  Copyright (c) 2015 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Happymanager.h"
@class  Pizza;

@protocol deliverydelegate <NSObject>


@end

@interface Deliveryservice : NSObject
@property (nonatomic,assign) id <deliverydelegate>delegate;

-(void *) deliverPizza: (Pizza *) pizza;
-(NSArray *) deliverPizzas:(Pizza *)pizza;

@end
