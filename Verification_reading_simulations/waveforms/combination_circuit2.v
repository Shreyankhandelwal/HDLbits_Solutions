module top_module (
    input a,
    input b,
    input c,
    input d,
    output q );//

//Every time the number of 1's is even, the output is 1.
//Every time the number of 1's is odd, the output is 0.

    assign q = ~(a^b^c^d); 

    /*
|  a  |  b  |  c  |  d  |  q  |
| :-: | :-: | :-: | :-: | :-: |
|  0  |  0  |  0  |  0  |  1  |
|  0  |  0  |  0  |  1  |  0  |
|  0  |  0  |  1  |  0  |  0  |
|  0  |  0  |  1  |  1  |  1  |
|  0  |  1  |  0  |  0  |  0  |
|  0  |  1  |  0  |  1  |  1  |
|  0  |  1  |  1  |  0  |  1  |
|  0  |  1  |  1  |  1  |  0  |
|  1  |  0  |  0  |  0  |  0  |
|  1  |  0  |  0  |  1  |  1  |
|  1  |  0  |  1  |  0  |  1  |
|  1  |  0  |  1  |  1  |  0  |
|  1  |  1  |  0  |  0  |  1  |
|  1  |  1  |  0  |  1  |  0  |
|  1  |  1  |  1  |  0  |  0  |
|  1  |  1  |  1  |  1  |  1  |

    */

endmodule
