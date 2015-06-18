

//  Kitchen.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "Kitchen.h"
#import "Pizza.h"

@implementation Kitchen

- (Pizza *)makePizzaWithSize:(Pizzasize)size toppings:(NSArray *)toppings{
    
    
    if ([self.delegate kitchen:self shouldMakePizzaOfSize:size andToppings:toppings]) {
        if ([self.delegate kitchenShouldUpgradeOrder: self ]){
            size= klarge;
        }
        
        
        Pizza *pizzamade= [[Pizza alloc] initMakePizzeWithSize:size toppings:toppings];
        
        
        
        return pizzamade;
    }
 

 
    return nil;
    
}



@end
