//
//  Pizza.h
//  PizzaRestaurant
//
//  Created by Arsalan Vakili on 2015-06-12.
//  Copyright (c) 2015 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum {
    ksmall,
    kmedium,
    klarge,
    kemptyPizza
    
} Pizzasize;

@interface Pizza : NSObject


@property(nonatomic,strong) NSArray *pizzaToppings;
@property Pizzasize size;


+(Pizzasize) returnPizzeSize : (NSString*) intakestring;
-(NSString*) returnstringsize;



- (instancetype)initMakePizzeWithSize:(Pizzasize) size toppings: (NSArray *) toppings;
@end
