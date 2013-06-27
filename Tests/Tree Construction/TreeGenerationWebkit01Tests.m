// This file was autogenerated from Tests/html5lib/tree-construction/webkit01.dat

#import <SenTestingKit/SenTestingKit.h>
#import "HTMLTreeConstructionTestUtilities.h"

@interface TreeGenerationWebkit01Tests : SenTestCase

@end

@implementation TreeGenerationWebkit01Tests

- (void)test000
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"Test" context:nil];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     \"Test\"\n");
    STAssertTrue(parser.errors.count == 1 && [parser.document.childNodes isEqual:fixture], nil);
}

- (void)test001
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<div></div>" context:nil];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     <div>\n");
    STAssertTrue(parser.errors.count == 0 && [parser.document.childNodes isEqual:fixture], nil);
}

- (void)test002
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<div>Test</div>" context:nil];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     <div>\n|       \"Test\"\n");
    STAssertTrue(parser.errors.count == 0 && [parser.document.childNodes isEqual:fixture], nil);
}

- (void)test003
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<di" context:nil];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n");
    STAssertTrue(parser.errors.count == 0 && [parser.document.childNodes isEqual:fixture], nil);
}

- (void)test004
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<div>Hello</div>\n<script>\nconsole.log(\"PASS\");\n</script>\n<div>Bye</div>" context:nil];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     <div>\n|       \"Hello\"\n|     \"\n");
    STAssertTrue(parser.errors.count == 0 && [parser.document.childNodes isEqual:fixture], nil);
}

- (void)test005
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<div foo=\"bar\">Hello</div>" context:nil];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     <div>\n|       foo=\"bar\"\n|       \"Hello\"\n");
    STAssertTrue(parser.errors.count == 0 && [parser.document.childNodes isEqual:fixture], nil);
}

- (void)test006
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<div>Hello</div>\n<script>\nconsole.log(\"FOO<span>BAR</span>BAZ\");\n</script>\n<div>Bye</div>" context:nil];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     <div>\n|       \"Hello\"\n|     \"\n");
    STAssertTrue(parser.errors.count == 0 && [parser.document.childNodes isEqual:fixture], nil);
}

- (void)test007
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<foo bar=\"baz\"></foo><potato quack=\"duck\"></potato>" context:nil];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     <foo>\n|       bar=\"baz\"\n|     <potato>\n|       quack=\"duck\"\n");
    STAssertTrue(parser.errors.count == 0 && [parser.document.childNodes isEqual:fixture], nil);
}

- (void)test008
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<foo bar=\"baz\"><potato quack=\"duck\"></potato></foo>" context:nil];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     <foo>\n|       bar=\"baz\"\n|       <potato>\n|         quack=\"duck\"\n");
    STAssertTrue(parser.errors.count == 0 && [parser.document.childNodes isEqual:fixture], nil);
}

- (void)test009
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<foo></foo bar=\"baz\"><potato></potato quack=\"duck\">" context:nil];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     <foo>\n|     <potato>\n");
    STAssertTrue(parser.errors.count == 0 && [parser.document.childNodes isEqual:fixture], nil);
}

- (void)test010
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"</ tttt>" context:nil];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <!--  tttt -->\n| <html>\n|   <head>\n|   <body>\n");
    STAssertTrue(parser.errors.count == 0 && [parser.document.childNodes isEqual:fixture], nil);
}

- (void)test011
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<div FOO ><img><img></div>" context:nil];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     <div>\n|       foo=\"\"\n|       <img>\n|       <img>\n");
    STAssertTrue(parser.errors.count == 0 && [parser.document.childNodes isEqual:fixture], nil);
}

- (void)test012
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<p>Test</p<p>Test2</p>" context:nil];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     <p>\n|       \"TestTest2\"\n");
    STAssertTrue(parser.errors.count == 0 && [parser.document.childNodes isEqual:fixture], nil);
}

- (void)test013
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<rdar://problem/6869687>" context:nil];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     <rdar:>\n|       6869687=\"\"\n|       problem=\"\"\n");
    STAssertTrue(parser.errors.count == 0 && [parser.document.childNodes isEqual:fixture], nil);
}

- (void)test014
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<A>test< /A>" context:nil];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     <a>\n|       \"test< /A>\"\n");
    STAssertTrue(parser.errors.count == 0 && [parser.document.childNodes isEqual:fixture], nil);
}

- (void)test015
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"&lt;" context:nil];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     \"<\"\n");
    STAssertTrue(parser.errors.count == 0 && [parser.document.childNodes isEqual:fixture], nil);
}

- (void)test016
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<body foo='bar'><body foo='baz' yo='mama'>" context:nil];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     foo=\"bar\"\n|     yo=\"mama\"\n");
    STAssertTrue(parser.errors.count == 0 && [parser.document.childNodes isEqual:fixture], nil);
}

- (void)test017
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<body></br foo=\"bar\"></body>" context:nil];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     <br>\n");
    STAssertTrue(parser.errors.count == 0 && [parser.document.childNodes isEqual:fixture], nil);
}

- (void)test018
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<bdy><br foo=\"bar\"></body>" context:nil];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     <bdy>\n|       <br>\n|         foo=\"bar\"\n");
    STAssertTrue(parser.errors.count == 0 && [parser.document.childNodes isEqual:fixture], nil);
}

- (void)test019
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<body></body></br foo=\"bar\">" context:nil];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     <br>\n");
    STAssertTrue(parser.errors.count == 0 && [parser.document.childNodes isEqual:fixture], nil);
}

- (void)test020
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<bdy></body><br foo=\"bar\">" context:nil];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     <bdy>\n|       <br>\n|         foo=\"bar\"\n");
    STAssertTrue(parser.errors.count == 0 && [parser.document.childNodes isEqual:fixture], nil);
}

- (void)test021
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<html><body></body></html><!-- Hi there -->" context:nil];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n| <!--  Hi there  -->\n");
    STAssertTrue(parser.errors.count == 0 && [parser.document.childNodes isEqual:fixture], nil);
}

- (void)test022
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<html><body></body></html>x<!-- Hi there -->" context:nil];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     \"x\"\n|     <!--  Hi there  -->\n");
    STAssertTrue(parser.errors.count == 0 && [parser.document.childNodes isEqual:fixture], nil);
}

- (void)test023
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<html><body></body></html>x<!-- Hi there --></html><!-- Again -->" context:nil];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     \"x\"\n|     <!--  Hi there  -->\n| <!--  Again  -->\n");
    STAssertTrue(parser.errors.count == 0 && [parser.document.childNodes isEqual:fixture], nil);
}

- (void)test024
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<html><body></body></html>x<!-- Hi there --></body></html><!-- Again -->" context:nil];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     \"x\"\n|     <!--  Hi there  -->\n| <!--  Again  -->\n");
    STAssertTrue(parser.errors.count == 0 && [parser.document.childNodes isEqual:fixture], nil);
}

- (void)test025
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<html><body><ruby><div><rp>xx</rp></div></ruby></body></html>" context:nil];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     <ruby>\n|       <div>\n|         <rp>\n|           \"xx\"\n");
    STAssertTrue(parser.errors.count == 0 && [parser.document.childNodes isEqual:fixture], nil);
}

- (void)test026
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<html><body><ruby><div><rt>xx</rt></div></ruby></body></html>" context:nil];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     <ruby>\n|       <div>\n|         <rt>\n|           \"xx\"\n");
    STAssertTrue(parser.errors.count == 0 && [parser.document.childNodes isEqual:fixture], nil);
}

- (void)test027
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<html><frameset><!--1--><noframes>A</noframes><!--2--></frameset><!--3--><noframes>B</noframes><!--4--></html><!--5--><noframes>C</noframes><!--6-->" context:nil];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <frameset>\n|     <!-- 1 -->\n|     <noframes>\n|       \"A\"\n|     <!-- 2 -->\n|   <!-- 3 -->\n|   <noframes>\n|     \"B\"\n|   <!-- 4 -->\n|   <noframes>\n|     \"C\"\n| <!-- 5 -->\n| <!-- 6 -->\n");
    STAssertTrue(parser.errors.count == 0 && [parser.document.childNodes isEqual:fixture], nil);
}

- (void)test028
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<select><option>A<select><option>B<select><option>C<select><option>D<select><option>E<select><option>F<select><option>G<select>" context:nil];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     <select>\n|       <option>\n|         \"A\"\n|     <option>\n|       \"B\"\n|       <select>\n|         <option>\n|           \"C\"\n|     <option>\n|       \"D\"\n|       <select>\n|         <option>\n|           \"E\"\n|     <option>\n|       \"F\"\n|       <select>\n|         <option>\n|           \"G\"\n");
    STAssertTrue(parser.errors.count == 0 && [parser.document.childNodes isEqual:fixture], nil);
}

- (void)test029
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<dd><dd><dt><dt><dd><li><li>" context:nil];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     <dd>\n|     <dd>\n|     <dt>\n|     <dt>\n|     <dd>\n|       <li>\n|       <li>\n");
    STAssertTrue(parser.errors.count == 0 && [parser.document.childNodes isEqual:fixture], nil);
}

- (void)test030
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<div><b></div><div><nobr>a<nobr>" context:nil];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     <div>\n|       <b>\n|     <div>\n|       <b>\n|         <nobr>\n|           \"a\"\n|         <nobr>\n");
    STAssertTrue(parser.errors.count == 0 && [parser.document.childNodes isEqual:fixture], nil);
}

- (void)test031
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<head></head>\n<body></body>" context:nil];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   \"\n");
    STAssertTrue(parser.errors.count == 0 && [parser.document.childNodes isEqual:fixture], nil);
}

- (void)test032
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<head></head> <style></style>ddd" context:nil];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|     <style>\n|   \" \"\n|   <body>\n|     \"ddd\"\n");
    STAssertTrue(parser.errors.count == 0 && [parser.document.childNodes isEqual:fixture], nil);
}

- (void)test033
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<kbd><table></kbd><col><select><tr>" context:nil];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     <kbd>\n|       <select>\n|       <table>\n|         <colgroup>\n|           <col>\n|         <tbody>\n|           <tr>\n");
    STAssertTrue(parser.errors.count == 0 && [parser.document.childNodes isEqual:fixture], nil);
}

- (void)test034
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<kbd><table></kbd><col><select><tr></table><div>" context:nil];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     <kbd>\n|       <select>\n|       <table>\n|         <colgroup>\n|           <col>\n|         <tbody>\n|           <tr>\n|       <div>\n");
    STAssertTrue(parser.errors.count == 0 && [parser.document.childNodes isEqual:fixture], nil);
}

- (void)test035
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<a><li><style></style><title></title></a>" context:nil];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     <a>\n|     <li>\n|       <a>\n|         <style>\n|         <title>\n");
    STAssertTrue(parser.errors.count == 0 && [parser.document.childNodes isEqual:fixture], nil);
}

- (void)test036
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<font></p><p><meta><title></title></font>" context:nil];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     <font>\n|       <p>\n|     <p>\n|       <font>\n|         <meta>\n|         <title>\n");
    STAssertTrue(parser.errors.count == 0 && [parser.document.childNodes isEqual:fixture], nil);
}

- (void)test037
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<a><center><title></title><a>" context:nil];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     <a>\n|     <center>\n|       <a>\n|         <title>\n|       <a>\n");
    STAssertTrue(parser.errors.count == 0 && [parser.document.childNodes isEqual:fixture], nil);
}

- (void)test038
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<svg><title><div>" context:nil];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     <svg svg>\n|       <svg title>\n|         <div>\n");
    STAssertTrue(parser.errors.count == 0 && [parser.document.childNodes isEqual:fixture], nil);
}

- (void)test039
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<svg><title><rect><div>" context:nil];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     <svg svg>\n|       <svg title>\n|         <rect>\n|           <div>\n");
    STAssertTrue(parser.errors.count == 0 && [parser.document.childNodes isEqual:fixture], nil);
}

- (void)test040
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<svg><title><svg><div>" context:nil];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     <svg svg>\n|       <svg title>\n|         <svg svg>\n|         <div>\n");
    STAssertTrue(parser.errors.count == 0 && [parser.document.childNodes isEqual:fixture], nil);
}

- (void)test041
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<img <=\"\" FAIL>" context:nil];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     <img>\n|       <=\"\"\n|       fail=\"\"\n");
    STAssertTrue(parser.errors.count == 0 && [parser.document.childNodes isEqual:fixture], nil);
}

- (void)test042
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<ul><li><div id='foo'/>A</li><li>B<div>C</div></li></ul>" context:nil];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     <ul>\n|       <li>\n|         <div>\n|           id=\"foo\"\n|           \"A\"\n|       <li>\n|         \"B\"\n|         <div>\n|           \"C\"\n");
    STAssertTrue(parser.errors.count == 0 && [parser.document.childNodes isEqual:fixture], nil);
}

- (void)test043
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<svg><em><desc></em>" context:nil];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     <svg svg>\n|     <em>\n|       <desc>\n");
    STAssertTrue(parser.errors.count == 0 && [parser.document.childNodes isEqual:fixture], nil);
}

- (void)test044
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<svg><tfoot></mi><td>" context:nil];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     <svg svg>\n|       <svg tfoot>\n|         <svg td>\n");
    STAssertTrue(parser.errors.count == 0 && [parser.document.childNodes isEqual:fixture], nil);
}

- (void)test045
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<math><mrow><mrow><mn>1</mn></mrow><mi>a</mi></mrow></math>" context:nil];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <html>\n|   <head>\n|   <body>\n|     <math math>\n|       <math mrow>\n|         <math mrow>\n|           <math mn>\n|             \"1\"\n|         <math mi>\n|           \"a\"\n");
    STAssertTrue(parser.errors.count == 0 && [parser.document.childNodes isEqual:fixture], nil);
}

- (void)test046
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<!doctype html><input type=\"hidden\"><frameset>" context:nil];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <frameset>\n");
    STAssertTrue(parser.errors.count == 0 && [parser.document.childNodes isEqual:fixture], nil);
}

- (void)test047
{
    HTMLParser *parser = [[HTMLParser alloc] initWithString:@"<!doctype html><input type=\"button\"><frameset>" context:nil];
    NSArray *fixture = ReifiedTreeForTestDocument(@"| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <input>\n|       type=\"button\"\n");
    STAssertTrue(parser.errors.count == 0 && [parser.document.childNodes isEqual:fixture], nil);
}

@end
