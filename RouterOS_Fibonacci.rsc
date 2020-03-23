# RouterOS Fucntion 
# Copyright (c) Grzegorz Budny
# RouterOS Fibonacci sequence application.
# Prints n Fibonacci numbers. 

:global Fibonacci do={

    :local array [ :toarray "" ];
    :set array ( $array, 0 );
    :set array ( $array, 1 );
    
    :for a from=2 to=$n step=1 do= \
    {
        
        :set array ( $array, ([:pick $array ($a-1)] + [:pick $array ($a-2)]) );
    
    }

    :put ("Fibonacci sequence of length: ".$n);
    :put $array;

}

#Example 
#$Fibonacci n=10;





