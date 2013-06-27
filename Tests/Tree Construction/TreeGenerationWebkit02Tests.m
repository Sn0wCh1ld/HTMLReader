// This file was autogenerated from Tests/html5lib/tree-construction/webkit02.dat

#import <SenTestingKit/SenTestingKit.h>
#import "HTMLTreeConstructionTestUtilities.h"

@interface TreeGenerationWebkit02Tests : SenTestCase

@end

@implementation TreeGenerationWebkit02Tests

- (void)test000
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<foo bar=qux/>" context:nil];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     <foo>\n|       bar=\"qux/\"\n");
    STAssertTrue(parser.errors.count == 0 && [parser.document.childNodes isEqual:fixture], nil);
}

- (void)test001
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<p id=\"status\"><noscript><strong>A</strong></noscript><span>B</span></p>" context:nil];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     <p>\n|       id=\"status\"\n|       <noscript>\n|         \"<strong>A</strong>\"\n|       <span>\n|         \"B\"\n");
    STAssertTrue(parser.errors.count == 0 && [parser.document.childNodes isEqual:fixture], nil);
}

- (void)test002
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<div><sarcasm><div></div></sarcasm></div>" context:nil];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     <div>\n|       <sarcasm>\n|         <div>\n");
    STAssertTrue(parser.errors.count == 0 && [parser.document.childNodes isEqual:fixture], nil);
}

- (void)test003
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<html><body><img src=\"\" border=\"0\" alt=\"><div>A</div></body></html>" context:nil];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n");
    STAssertTrue(parser.errors.count == 0 && [parser.document.childNodes isEqual:fixture], nil);
}

- (void)test004
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<table><td></tbody>A" context:nil];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     \"A\"\n|     <table>\n|       <tbody>\n|         <tr>\n|           <td>\n");
    STAssertTrue(parser.errors.count == 0 && [parser.document.childNodes isEqual:fixture], nil);
}

- (void)test005
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<table><td></thead>A" context:nil];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     <table>\n|       <tbody>\n|         <tr>\n|           <td>\n|             \"A\"\n");
    STAssertTrue(parser.errors.count == 0 && [parser.document.childNodes isEqual:fixture], nil);
}

- (void)test006
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<table><td></tfoot>A" context:nil];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     <table>\n|       <tbody>\n|         <tr>\n|           <td>\n|             \"A\"\n");
    STAssertTrue(parser.errors.count == 0 && [parser.document.childNodes isEqual:fixture], nil);
}

- (void)test007
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<table><thead><td></tbody>A" context:nil];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     <table>\n|       <thead>\n|         <tr>\n|           <td>\n|             \"A\"\n");
    STAssertTrue(parser.errors.count == 0 && [parser.document.childNodes isEqual:fixture], nil);
}

@end
