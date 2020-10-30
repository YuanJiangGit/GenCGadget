void bad()
int64_t * data ;
int64_t * dataArray [ 5 ] ;
int64_t * dataBadBuffer = ( int64_t * ) ALLOCA ( 50 * sizeof ( int64_t ) ) ;
data = dataBadBuffer;
dataArray [ 2 ] = data;
badSink ( dataArray );
void badSink(int64_t * dataArray[])
int64_t * data = dataArray [ 2 ] ;
int64_t source [ 100 ] = { 0 } ;
memmove ( data , source , 100 * sizeof ( int64_t ) );
printLongLongLine ( data [ 0 ] );
void printLongLongLine (int64_t longLongIntNumber)
printf ( "%lld\n" , longLongIntNumber );
