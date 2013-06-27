// This file was autogenerated from Tests/html5lib/tree-construction/tests24.dat

#import <SenTestingKit/SenTestingKit.h>
#import "HTMLTreeConstructionTestUtilities.h"

@interface TreeGenerationTests24Tests : SenTestCase

@end

@implementation TreeGenerationTests24Tests

- (void)test000
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<!DOCTYPE html>&NotEqualTilde;" context:nil];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     \"≂̸\"\n");
    STAssertTrue(parser.errors.count == 0 && [parser.document.childNodes isEqual:fixture], nil);
}

- (void)test001
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<!DOCTYPE html>&NotEqualTilde;A" context:nil];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     \"≂̸A\"\n");
    STAssertTrue(parser.errors.count == 0 && [parser.document.childNodes isEqual:fixture], nil);
}

- (void)test002
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<!DOCTYPE html>&ThickSpace;" context:nil];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     \"  \"\n");
    STAssertTrue(parser.errors.count == 0 && [parser.document.childNodes isEqual:fixture], nil);
}

- (void)test003
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<!DOCTYPE html>&ThickSpace;A" context:nil];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     \"  A\"\n");
    STAssertTrue(parser.errors.count == 0 && [parser.document.childNodes isEqual:fixture], nil);
}

- (void)test004
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<!DOCTYPE html>&NotSubset;" context:nil];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     \"⊂⃒\"\n");
    STAssertTrue(parser.errors.count == 0 && [parser.document.childNodes isEqual:fixture], nil);
}

- (void)test005
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<!DOCTYPE html>&NotSubset;A" context:nil];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     \"⊂⃒A\"\n");
    STAssertTrue(parser.errors.count == 0 && [parser.document.childNodes isEqual:fixture], nil);
}

- (void)test006
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<!DOCTYPE html>&Gopf;" context:nil];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     \"𝔾\"\n");
    STAssertTrue(parser.errors.count == 0 && [parser.document.childNodes isEqual:fixture], nil);
}

- (void)test007
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<!DOCTYPE html>&Gopf;A" context:nil];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     \"𝔾A\"\n");
    STAssertTrue(parser.errors.count == 0 && [parser.document.childNodes isEqual:fixture], nil);
}

@end
