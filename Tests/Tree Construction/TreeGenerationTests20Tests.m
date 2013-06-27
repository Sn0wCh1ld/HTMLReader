// This file was autogenerated from Tests/html5lib/tree-construction/tests20.dat

#import <SenTestingKit/SenTestingKit.h>
#import "HTMLTreeConstructionTestUtilities.h"

@interface TreeGenerationTests20Tests : SenTestCase

@end

@implementation TreeGenerationTests20Tests

- (void)test000
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<!doctype html><p><button><button>" context:nil];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <p>\n|       <button>\n|       <button>\n");
    STAssertTrue(parser.errors.count == 0 && [parser.document.childNodes isEqual:fixture], nil);
}

- (void)test001
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<!doctype html><p><button><address>" context:nil];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <p>\n|       <button>\n|         <address>\n");
    STAssertTrue(parser.errors.count == 0 && [parser.document.childNodes isEqual:fixture], nil);
}

- (void)test002
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<!doctype html><p><button><blockquote>" context:nil];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <p>\n|       <button>\n|         <blockquote>\n");
    STAssertTrue(parser.errors.count == 0 && [parser.document.childNodes isEqual:fixture], nil);
}

- (void)test003
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<!doctype html><p><button><menu>" context:nil];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <p>\n|       <button>\n|         <menu>\n");
    STAssertTrue(parser.errors.count == 0 && [parser.document.childNodes isEqual:fixture], nil);
}

- (void)test004
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<!doctype html><p><button><p>" context:nil];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <p>\n|       <button>\n|         <p>\n");
    STAssertTrue(parser.errors.count == 0 && [parser.document.childNodes isEqual:fixture], nil);
}

- (void)test005
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<!doctype html><p><button><ul>" context:nil];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <p>\n|       <button>\n|         <ul>\n");
    STAssertTrue(parser.errors.count == 0 && [parser.document.childNodes isEqual:fixture], nil);
}

- (void)test006
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<!doctype html><p><button><h1>" context:nil];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <p>\n|       <button>\n|         <h1>\n");
    STAssertTrue(parser.errors.count == 0 && [parser.document.childNodes isEqual:fixture], nil);
}

- (void)test007
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<!doctype html><p><button><h6>" context:nil];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <p>\n|       <button>\n|         <h6>\n");
    STAssertTrue(parser.errors.count == 0 && [parser.document.childNodes isEqual:fixture], nil);
}

- (void)test008
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<!doctype html><p><button><listing>" context:nil];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <p>\n|       <button>\n|         <listing>\n");
    STAssertTrue(parser.errors.count == 0 && [parser.document.childNodes isEqual:fixture], nil);
}

- (void)test009
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<!doctype html><p><button><pre>" context:nil];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <p>\n|       <button>\n|         <pre>\n");
    STAssertTrue(parser.errors.count == 0 && [parser.document.childNodes isEqual:fixture], nil);
}

- (void)test010
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<!doctype html><p><button><form>" context:nil];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <p>\n|       <button>\n|         <form>\n");
    STAssertTrue(parser.errors.count == 0 && [parser.document.childNodes isEqual:fixture], nil);
}

- (void)test011
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<!doctype html><p><button><li>" context:nil];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <p>\n|       <button>\n|         <li>\n");
    STAssertTrue(parser.errors.count == 0 && [parser.document.childNodes isEqual:fixture], nil);
}

- (void)test012
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<!doctype html><p><button><dd>" context:nil];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <p>\n|       <button>\n|         <dd>\n");
    STAssertTrue(parser.errors.count == 0 && [parser.document.childNodes isEqual:fixture], nil);
}

- (void)test013
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<!doctype html><p><button><dt>" context:nil];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <p>\n|       <button>\n|         <dt>\n");
    STAssertTrue(parser.errors.count == 0 && [parser.document.childNodes isEqual:fixture], nil);
}

- (void)test014
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<!doctype html><p><button><plaintext>" context:nil];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <p>\n|       <button>\n|         <plaintext>\n");
    STAssertTrue(parser.errors.count == 0 && [parser.document.childNodes isEqual:fixture], nil);
}

- (void)test015
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<!doctype html><p><button><table>" context:nil];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <p>\n|       <button>\n|         <table>\n");
    STAssertTrue(parser.errors.count == 0 && [parser.document.childNodes isEqual:fixture], nil);
}

- (void)test016
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<!doctype html><p><button><hr>" context:nil];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <p>\n|       <button>\n|         <hr>\n");
    STAssertTrue(parser.errors.count == 0 && [parser.document.childNodes isEqual:fixture], nil);
}

- (void)test017
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<!doctype html><p><button><xmp>" context:nil];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <p>\n|       <button>\n|         <xmp>\n");
    STAssertTrue(parser.errors.count == 0 && [parser.document.childNodes isEqual:fixture], nil);
}

- (void)test018
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<!doctype html><p><button></p>" context:nil];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <p>\n|       <button>\n|         <p>\n");
    STAssertTrue(parser.errors.count == 0 && [parser.document.childNodes isEqual:fixture], nil);
}

- (void)test019
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<!doctype html><address><button></address>a" context:nil];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <address>\n|       <button>\n|     \"a\"\n");
    STAssertTrue(parser.errors.count == 0 && [parser.document.childNodes isEqual:fixture], nil);
}

- (void)test020
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<!doctype html><address><button></address>a" context:nil];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <address>\n|       <button>\n|     \"a\"\n");
    STAssertTrue(parser.errors.count == 0 && [parser.document.childNodes isEqual:fixture], nil);
}

- (void)test021
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<p><table></p>" context:nil];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     <p>\n|       <p>\n|       <table>\n");
    STAssertTrue(parser.errors.count == 0 && [parser.document.childNodes isEqual:fixture], nil);
}

- (void)test022
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<!doctype html><svg>" context:nil];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <svg svg>\n");
    STAssertTrue(parser.errors.count == 0 && [parser.document.childNodes isEqual:fixture], nil);
}

- (void)test023
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<!doctype html><p><figcaption>" context:nil];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <p>\n|     <figcaption>\n");
    STAssertTrue(parser.errors.count == 0 && [parser.document.childNodes isEqual:fixture], nil);
}

- (void)test024
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<!doctype html><p><summary>" context:nil];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <p>\n|     <summary>\n");
    STAssertTrue(parser.errors.count == 0 && [parser.document.childNodes isEqual:fixture], nil);
}

- (void)test025
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<!doctype html><form><table><form>" context:nil];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <form>\n|       <table>\n");
    STAssertTrue(parser.errors.count == 0 && [parser.document.childNodes isEqual:fixture], nil);
}

- (void)test026
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<!doctype html><table><form><form>" context:nil];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <table>\n|       <form>\n");
    STAssertTrue(parser.errors.count == 0 && [parser.document.childNodes isEqual:fixture], nil);
}

- (void)test027
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<!doctype html><table><form></table><form>" context:nil];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <table>\n|       <form>\n");
    STAssertTrue(parser.errors.count == 0 && [parser.document.childNodes isEqual:fixture], nil);
}

- (void)test028
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<!doctype html><svg><foreignObject><p>" context:nil];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <svg svg>\n|       <svg foreignObject>\n|         <p>\n");
    STAssertTrue(parser.errors.count == 0 && [parser.document.childNodes isEqual:fixture], nil);
}

- (void)test029
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<!doctype html><svg><title>abc" context:nil];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <svg svg>\n|       <svg title>\n|         \"abc\"\n");
    STAssertTrue(parser.errors.count == 0 && [parser.document.childNodes isEqual:fixture], nil);
}

- (void)test030
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<option><span><option>" context:nil];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     <option>\n|       <span>\n|         <option>\n");
    STAssertTrue(parser.errors.count == 0 && [parser.document.childNodes isEqual:fixture], nil);
}

- (void)test031
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<option><option>" context:nil];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     <option>\n|     <option>\n");
    STAssertTrue(parser.errors.count == 0 && [parser.document.childNodes isEqual:fixture], nil);
}

- (void)test032
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<math><annotation-xml><div>" context:nil];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     <math math>\n|       <math annotation-xml>\n|     <div>\n");
    STAssertTrue(parser.errors.count == 0 && [parser.document.childNodes isEqual:fixture], nil);
}

- (void)test033
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<math><annotation-xml encoding=\"application/svg+xml\"><div>" context:nil];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     <math math>\n|       <math annotation-xml>\n|         encoding=\"application/svg+xml\"\n|     <div>\n");
    STAssertTrue(parser.errors.count == 0 && [parser.document.childNodes isEqual:fixture], nil);
}

- (void)test034
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<math><annotation-xml encoding=\"application/xhtml+xml\"><div>" context:nil];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     <math math>\n|       <math annotation-xml>\n|         encoding=\"application/xhtml+xml\"\n|         <div>\n");
    STAssertTrue(parser.errors.count == 0 && [parser.document.childNodes isEqual:fixture], nil);
}

- (void)test035
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<math><annotation-xml encoding=\"aPPlication/xhtmL+xMl\"><div>" context:nil];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     <math math>\n|       <math annotation-xml>\n|         encoding=\"aPPlication/xhtmL+xMl\"\n|         <div>\n");
    STAssertTrue(parser.errors.count == 0 && [parser.document.childNodes isEqual:fixture], nil);
}

- (void)test036
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<math><annotation-xml encoding=\"text/html\"><div>" context:nil];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     <math math>\n|       <math annotation-xml>\n|         encoding=\"text/html\"\n|         <div>\n");
    STAssertTrue(parser.errors.count == 0 && [parser.document.childNodes isEqual:fixture], nil);
}

- (void)test037
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<math><annotation-xml encoding=\"Text/htmL\"><div>" context:nil];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     <math math>\n|       <math annotation-xml>\n|         encoding=\"Text/htmL\"\n|         <div>\n");
    STAssertTrue(parser.errors.count == 0 && [parser.document.childNodes isEqual:fixture], nil);
}

- (void)test038
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<math><annotation-xml encoding=\" text/html \"><div>" context:nil];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     <math math>\n|       <math annotation-xml>\n|         encoding=\" text/html \"\n|     <div>\n");
    STAssertTrue(parser.errors.count == 0 && [parser.document.childNodes isEqual:fixture], nil);
}

@end
