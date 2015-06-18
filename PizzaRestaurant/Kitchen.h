//
//  Kitchen.h
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "Pizza.h"

@class Kitchen;

@protocol  kitchenDelegate <NSObject>

-(BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(Pizzasize)size andToppings:(NSArray *)toppings;
-(BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen;


@optional
-(void)kitchenDidMakePizza:(Pizza *)pizza;

@end

#import <Foundation/Foundation.h>

@interface Kitchen : NSObject
@property (nonatomic,assign) id <kitchenDelegate>delegate;

- (Pizza *)makePizzaWithSize:(Pizzasize)size toppings:(NSArray *)toppings;

@end
