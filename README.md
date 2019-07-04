# Retomo

[![CI Status](https://img.shields.io/travis/bonadenys@gmail.com/Retomo.svg?style=flat)](https://travis-ci.org/bonadenys@gmail.com/Retomo)
[![Version](https://img.shields.io/cocoapods/v/Retomo.svg?style=flat)](https://cocoapods.org/pods/Retomo)
[![License](https://img.shields.io/cocoapods/l/Retomo.svg?style=flat)](https://cocoapods.org/pods/Retomo)
[![Platform](https://img.shields.io/cocoapods/p/Retomo.svg?style=flat)](https://cocoapods.org/pods/Retomo)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

To make a new connection
`` Retomo *request = [Retomo alloc]init]; ``
`` [request setup:(BASE_URL+Endpoint) setMethod:{GET,POST,PUTS} setHeader:(NSDictionary / nil) 
            withCompletion:^(NSDictionary * result) {
                    RMModel *model = [[RMModel alloc]init:result];
                    NSLog(@"Title: %@",model.title);
                    NSLog(@"Rows: %@",[model.rows[0] valueForKey:@"title"]);
            }
     ]; ``

## Requirements

## Installation

Retomo is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'Retomo'
```

## Author

Bona Deny S, bonadenys@gmail.com

## License

Retomo is available under the MIT license. See the LICENSE file for more info.
