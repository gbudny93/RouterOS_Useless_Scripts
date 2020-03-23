# RouterOS Fucntion 
# Copyright (c) Grzegorz Budny
# RouterOS Fibonacci Largest Common Divisor Euclides method application.

:global LargestCommonDivisor do={

    :local temp;
    :local a 18;
    :local b 12;

    :while ($b != 0) do={

        :set $temp $b;
        :set $b ($a % $b);
        :set $a $temp;
        
    }

    :return $a;
    
}

$LargestCommonDivisor;