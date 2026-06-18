Author: yukanth
Date:   2024-01-15
Module: good_module

module good_module (
    input  logic clk,
    input  logic rst_n,
    output logic q
);

    // 'logic' used correctly — no 'reg' keyword
    logic q_internal;

    always_ff @(posedge clk or negedge rst_n) begin
        if (!rst_n)
            q_internal <= 1'b0;
        else
            q_internal <= ~q_internal;
    end

    assign q = q_internal;

endmodule
