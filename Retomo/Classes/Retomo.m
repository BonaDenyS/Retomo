//
//  Retomo.m
//  Pods-Retomo_Example
//
//  Created by Bona Deny Suryana on 25/06/19.
//

#import "Retomo.h"

@implementation Retomo
- (void)setup:(NSString *)url setMethod:(Method)method setHeader:(NSDictionary*)headers withCompletion:(void (^)(NSDictionary *result))callback{
    NSMutableURLRequest *request = [[NSMutableURLRequest alloc] init];
    [request setURL:[NSURL URLWithString:url]];
    [request setHTTPMethod:[self methodToString:method]];
    [request addValue:@"text/plain" forHTTPHeaderField:@"Content-Type"];
    [request addValue:@"text/plain" forHTTPHeaderField:@"Accept"];
    [request setAllHTTPHeaderFields:headers];
    
    NSURLSession *session = [NSURLSession sessionWithConfiguration:[NSURLSessionConfiguration defaultSessionConfiguration]];
    
    [[session dataTaskWithRequest:request completionHandler:^(NSData *data, NSURLResponse *response, NSError *error){
        NSDictionary *jsonDict;
        @try{
            NSString *requestReply = [[NSString alloc] initWithData:data encoding:NSASCIIStringEncoding];
            NSData *responseData = [requestReply dataUsingEncoding:NSUTF8StringEncoding];
            jsonDict = [NSJSONSerialization JSONObjectWithData:responseData options:kNilOptions error:&error];
        }@catch(NSException * e){
            NSLog(@"Reterror because of: %@",e.reason);
        }@finally{
            callback(jsonDict);
        }
    }]resume];
}

- (void)setup_array:(NSString *)url setMethod:(Method)method setHeader:(NSDictionary*)headers withCompletion:(void (^)(NSArray *result))callback{
    NSMutableURLRequest *request = [[NSMutableURLRequest alloc] init];
    [request setURL:[NSURL URLWithString:url]];
    [request setHTTPMethod:[self methodToString:method]];
    [request addValue:@"text/plain" forHTTPHeaderField:@"Content-Type"];
    [request addValue:@"text/plain" forHTTPHeaderField:@"Accept"];
    [request setAllHTTPHeaderFields:headers];
    
    NSURLSession *session = [NSURLSession sessionWithConfiguration:[NSURLSessionConfiguration defaultSessionConfiguration]];
    
    [[session dataTaskWithRequest:request completionHandler:^(NSData *data, NSURLResponse *response, NSError *error){
        NSMutableArray *jsonDict;
        @try{
            NSString *requestReply = [[NSString alloc] initWithData:data encoding:NSASCIIStringEncoding];
            NSData *responseData = [requestReply dataUsingEncoding:NSUTF8StringEncoding];
            jsonDict = [NSJSONSerialization JSONObjectWithData:responseData options:kNilOptions error:&error];
        }@catch(NSException * e){
            NSLog(@"Reterror because of: %@",e.reason);
        }@finally{
            callback(jsonDict);
        }
    }]resume];
}

- (NSString *)methodToString:(Method)method{
    switch (method) {
        case GET:
            return @"GET";
            break;
        case POST:
            return @"POST";
        case PUT:
            return @"PUT";
        default:
            return @"GET";
            break;
    }
}
@end
