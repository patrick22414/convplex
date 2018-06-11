# convplex
Verilog implementation of a convolution complex.

## Project Summary

### Data formats
* 16-bit signed Q12 fixed-point numbers.

### Objective
1. Read the conv-kernel from an AXI memory (perhaps a blurring or sharpening filter).

1. Read data from the memory device sequentially.

1. Compute the convolution.

1. Write the result back to memory.

## Verilog HDL

### Modules
```
module ModuleName #(
    parameter para = x,  // comments
    //...
)(
    input wire input_name,
    //...

    output [para-1:0] output_name,
    //...
);

    // declarations

    always @(*) begin
        // statements
    end

    // statements

endmodule
```

### Sequential signals naming convention

* clock, posedge triggered: `clk`
* clock, negedge triggered: `clk_n`
* enable, active high: `en`
* reset, active high: `rst`

### Combinational signals naming convention

* data-in: `din`
* data-out: `dout`
