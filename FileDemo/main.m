//
//  main.m
//  FileDemo
//
//  Created by Sinosoft on 9/13/13.
//  Copyright (c) 2013 com.Sinosoft. All rights reserved.
//

#import <Foundation/Foundation.h>

void readAndWriteNSString()
{
    NSFileManager* fileM = [NSFileManager defaultManager];
    NSData* data = [[NSData alloc] init];
    
    //create file
    BOOL isCreate = [fileM createFileAtPath:@"/Users/sinosoft/Desktop/abc.text" contents:data attributes:nil];
    NSLog(@"create = %d",isCreate);
    
    // init string
    NSString* str = [[NSString alloc] initWithFormat:@"abcd"];
    NSError* error = nil;
    
    // write
    BOOL isSuc = [str writeToFile:@"/Users/sinosoft/Desktop/abc.text" atomically:YES encoding:NSUTF8StringEncoding error:&error];
    NSLog(@"isSuc = %d,error = %@",isSuc,[error localizedDescription]);
    
    // read
    NSString* str1 = [NSString stringWithContentsOfFile:@"/Users/sinosoft/Desktop/abc.text" encoding:NSUTF8StringEncoding error:&error];
    NSLog(@"%@",str1);
    
}


void readAndWriteArrayAndDictionary()
{
    NSFileManager* filem = [NSFileManager defaultManager];
    NSData* data = [[NSData alloc] init];
    
    BOOL isSuccess = [filem createFileAtPath:@"/Users/sinosoft/Desktop/test.plist" contents:data attributes:nil];
      NSLog(@"isSuccess = %d",isSuccess);
    
    NSArray* array = [[NSArray alloc] initWithObjects:@"abc",@"dec",[NSNumber numberWithInt:5], nil];
    
    // write
    BOOL isSuc = [array writeToFile:@"/Users/sinosoft/Desktop/test.plist" atomically:YES];
    NSLog(@"isSuc = %d",isSuc);
    
    // read
    NSArray* array1 = [[NSArray alloc] initWithContentsOfFile:@"/Users/sinosoft/Desktop/test.plist"];
    NSLog(@"array1 = %@",array1);
    
}

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // insert code here...
        NSLog(@"Hello, World!");
        
       
        readAndWriteNSString();
        
        readAndWriteArrayAndDictionary();
        
        
        
        
        
        /*
        //delete file
        NSError* error = nil;
        BOOL isRemove = [fileM removeItemAtPath:@"/Users/sinosoft/Desktop/fileTest" error:&error];
        NSLog(@"remove = %d,error = %@",isRemove,[error localizedDescription]);
         */
        
        
        
        /*
        // copy file
        NSError* error = nil;
        BOOL isMove = [fileM moveItemAtPath:@"/Users/sinosoft/Desktop/fileTest" toPath:@"/Users/sinosoft/Downloads/fileTest" error:&error];
        NSLog(@"move = %d,error = %@",isMove,[error localizedDescription]);
        */
        
        
        
    }
    return 0;
}

