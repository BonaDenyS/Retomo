//
//  RMModel.h
//  Retomo_Example
//
//  Created by Bona Deny Suryana on 19/06/19.
//  Copyright © 2019 bonadenys@gmail.com. All rights reserved.
//

#import <Foundation/Foundation.h>

@class RMModel;
@class RMRow;

NS_ASSUME_NONNULL_BEGIN

#pragma mark - Object interfaces

@interface RMModel : NSObject
@property (nonatomic, nullable, copy) NSString *title;
@property (nonatomic, nullable, copy) NSArray<RMRow *> *rows;

    - (instancetype) init:(NSDictionary *) array;
@end

@interface RMRow : NSObject
@property (nonatomic, nullable, copy) NSString *title;
@property (nonatomic, nullable, copy) NSString *theDescription;
@property (nonatomic, nullable, copy) NSString *imageHref;

    - (instancetype) init:(NSDictionary *) array;
@end

NS_ASSUME_NONNULL_END
