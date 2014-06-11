in .h 
@property (strong, nonatomic) NSstring *contents; 
// @property (strong) NSstring *contents; // would produce locking code inaddition to the getters and the setters. 

produces in at runtime  

@synthesize contents = _contents; 

-(NSString *)contents 
{
	return _contents; 
} 

-(void)setContents:(NSString *)contents 
{
	_contents = contents; 
} 


// @property (strong, nonatomic) NSstring *contents; --> produces a _contents which is how we will access getters and setters. 
/////////////////////////////////
// in .h 
@property (nonatomic) BOOL chosen; 
@property (nonatomic) BOOL matched; 

// produces ... 

@synthesize chosen = _chosen;
@synesized matched = _matched; 

-(BOOL) matched 
{
	return _matched; 
} 

-(void)setMatched:(BOOL)matched
{
	_matched = matched; 
} 


// we don't access setters and getters directly // generally 


