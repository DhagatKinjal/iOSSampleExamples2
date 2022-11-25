//
//  ViewController.m
//  jsonParsingExample
//
//  Created by Lion User on 27/12/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"
#import "DetailsViewController.h"

@interface ViewController ()
@property(nonatomic,retain)NSMutableData *webData;
@property(nonatomic,retain)NSMutableArray *aray;
@end

@implementation ViewController
@synthesize tblView,aray,webData;


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.webData=[NSMutableData data];
    NSURL *url=[[NSURL alloc]initWithString:@"http://api.geonames.org/citiesJSON?north=44.1&south=-9.9&east=-22.4&west=55.2&lang=de&username=demo"];
    NSURLRequest *request=[[NSURLRequest alloc]initWithURL:url];
    NSURLConnection *conn=[[NSURLConnection alloc]initWithRequest:request delegate:self];
    if(conn)
    {
 }
    else {
        NSLog(@"connection could not be staiblish");
    }

}

- (void)connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)response
{
    [self.webData setLength:0];
}
-(void)connection:(NSURLConnection*)connection didReceiveData:(NSData *)data
{
    [self.webData appendData:data];
}
-(void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error
{
    NSLog(@"connection could not be stablish");
    self.webData=nil;
}

//json wed data
//{"geonames":[{"fcodeName":"capital of a political entity","toponymName":"Mexico City","countrycode":"MX","fcl":"P","fclName":"city, village,...","name":"Mexiko-Stadt","wikipedia":"","lng":-99.12766456604,"fcode":"PPLC","geonameId":3530597,"lat":19.428472427036,"population":12294193},{"fcodeName":"capital of a political entity","toponymName":"Manila","countrycode":"PH","fcl":"P","fclName":"city, village,...","name":"Manila","wikipedia":"","lng":120.9822,"fcode":"PPLC","geonameId":1701668,"lat":14.6042,"population":10444527},{"fcodeName":"capital of a political entity","toponymName":"Dhaka","countrycode":"BD","fcl":"P","fclName":"city, village,...","name":"Dhaka","wikipedia":"","lng":90.40743827819824,"fcode":"PPLC","geonameId":1185241,"lat":23.710395616597037,"population":10356500},{"fcodeName":"capital of a political entity","toponymName":"Seoul","countrycode":"KR","fcl":"P","fclName":"city, village,...","name":"Seoul","wikipedia":"","lng":126.977834701538,"fcode":"PPLC","geonameId":1835848,"lat":37.5682561388953,"population":10349312},{"fcodeName":"capital of a political entity","toponymName":"Jakarta","countrycode":"ID","fcl":"P","fclName":"city, village,...","name":"Jakarta","wikipedia":"","lng":106.84513092041016,"fcode":"PPLC","geonameId":1642911,"lat":-6.214623197035775,"population":8540121},{"fcodeName":"capital of a political entity","toponymName":"Tokyo","countrycode":"JP","fcl":"P","fclName":"city, village,...","name":"Tokyo","wikipedia":"","lng":139.69171,"fcode":"PPLC","geonameId":1850147,"lat":35.6895,"population":8336599},{"fcodeName":"capital of a political entity","toponymName":"Taipei","countrycode":"TW","fcl":"P","fclName":"city, village,...","name":"Taipeh","wikipedia":"","lng":121.531846,"fcode":"PPLC","geonameId":1668341,"lat":25.047763,"population":7871900},{"fcodeName":"capital of a political entity","toponymName":"Beijing","countrycode":"CN","fcl":"P","fclName":"city, village,...","name":"Peking","wikipedia":"","lng":116.397228240967,"fcode":"PPLC","geonameId":1816670,"lat":39.9074977414405,"population":7480601},{"fcodeName":"capital of a political entity","toponymName":"Bogotá","countrycode":"CO","fcl":"P","fclName":"city, village,...","name":"Bogotá","wikipedia":"","lng":-74.08175468444824,"fcode":"PPLC","geonameId":3688689,"lat":4.609705849789108,"population":7102602},{"fcodeName":"capital of a political entity","toponymName":"Hong Kong","countrycode":"HK","fcl":"P","fclName":"city, village,...","name":"Hong Kong","wikipedia":"","lng":114.157691001892,"fcode":"PPLC","geonameId":1819729,"lat":22.2855225817732,"population":7012738}]}
- (void)connectionDidFinishLoading:(NSURLConnection *)connection 
{
    aray=[[NSMutableArray alloc]init];
    id jsonData=[NSJSONSerialization JSONObjectWithData:self.webData options:NSJSONReadingMutableContainers error:nil];
    NSArray *keys=[jsonData objectForKey:@"geonames"];
    for(NSDictionary *key in keys)
    {
        [self.aray addObject:key];
        NSLog(@"%@",aray);
    }
    [self.tblView reloadData];
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
    
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.aray count];
}

-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
NSString *cellIdentifier=@"cell";
    UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if(cell==nil)
    {
        cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    cell.textLabel.text=[[aray objectAtIndex:indexPath.row]valueForKey:@"name"];
   
return cell;
    
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    DetailsViewController *detailVC=[[DetailsViewController alloc]init];
    detailVC.dictDetails=[self.aray objectAtIndex:indexPath.row ];
    [self.navigationController pushViewController:detailVC animated:YES];
}
- (void)viewDidUnload
{
    [self setTblView:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (void)dealloc {
    [tblView release];
    [super dealloc];
}
@end
