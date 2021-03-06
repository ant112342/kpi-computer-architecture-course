// 1-bit "flip-flop" register


module register(i_clk, i_d, i_arstn, i_we, o_q);


input i_clk; //clock
input i_d; // input data
input i_we; // write enable
input i_arstn; // async reset (active low)
output reg  o_q; // output data


always @(posedge i_clk or negedge i_arstn ) begin
	if (!i_arstn) begin
		o_q <= 1'b0;
	end else if (i_we) begin
		o_q <= i_d;
	end else begin
		o_q <= o_q;
	end
end


endmodule
