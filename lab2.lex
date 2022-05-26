%{
#include "y.tab.h"
%}
%%
a {return A;}
b {return B;}
"\n" {return ENTER;}
. {printf("invaliod input");exit(0);}
%%
