//
//  Retomo.h
//  Pods-Retomo_Example
//
//  Created by Bona Deny Suryana on 25/06/19.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef enum method {
    GET,
    POST,
    PUT
} Method;

@interface Retomo : NSObject
- (void)setup:(NSString *)url setMethod:(Method)method setHeader:(NSDictionary* _Nullable)headers withCompletion:(void (^)(NSDictionary *result))callback;
- (void)setup_array:(NSString *)url setMethod:(Method)method setHeader:(NSDictionary* _Nullable)headers withCompletion:(void (^)(NSArray *result))callback;
@end

NS_ASSUME_NONNULL_END
