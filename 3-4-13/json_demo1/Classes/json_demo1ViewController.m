//
//  json_demo1ViewController.m
//  json_demo1
//
//  Created by Marin Todorov on 2/24/11.
//  Copyright 2011 Marin Todorov. All rights reserved.
//

#import "json_demo1ViewController.h"
#import "JSON.h"

#define kLatestKivaLoansURL @"http://api.kivaws.org/v1/loans/search.json?status=fundraising"

@implementation json_demo1ViewController

@synthesize responseData;

#pragma mark -
#pragma mark Fetch loans from internet
-(void)loadData
{
	self.responseData = [NSMutableData data];
	
    NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:kLatestKivaLoansURL]];
    [[NSURLConnection alloc] initWithRequest:request delegate:self];
}

- (void)connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)response {
    [responseData setLength:0];
}

- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data {
    [responseData appendData:data];
}

- (void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error {
	[connection release];
	self.responseData = nil;
}

#pragma mark -
#pragma mark Process loan data
- (void)connectionDidFinishLoading:(NSURLConnection *)connection {
    [connection release];
	
    NSString *responseString = [[NSString alloc] initWithData:responseData encoding:NSUTF8StringEncoding];
	self.responseData = nil;
	
	NSArray* latestLoans = [(NSDictionary*)[responseString JSONValue] objectForKey:@"loans"];//we are convert string into datadisc and tacking it in arr
	[responseString release];
	
	//choose a random loan
	NSDictionary* loan = [latestLoans objectAtIndex:0];
	
	//fetch the data
	NSNumber* fundedAmount = [loan objectForKey:@"funded_amount"];
	NSNumber* loanAmount = [loan objectForKey:@"loan_amount"];
	float outstandingAmount = [loanAmount floatValue] - [fundedAmount floatValue];
	
	NSString* name = [loan objectForKey:@"name"];
	NSString* country = [(NSDictionary*)[loan objectForKey:@"location"] objectForKey:@"country"];
	
	//set the text to the label
	label.text = [NSString stringWithFormat:@"Latest loan: %@ from %@ needs another $%.2f, please help",
				   name,country,outstandingAmount
				   ];
}

@end
