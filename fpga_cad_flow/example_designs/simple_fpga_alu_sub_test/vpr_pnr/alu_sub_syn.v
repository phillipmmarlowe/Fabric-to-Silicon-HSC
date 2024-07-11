/* Generated by Yosys 0.33+34 (git sha1 b84ed5d3a, clang 10.0.0-4ubuntu1 -fPIC -Os) */

(* top =  1  *)
(* src = "/home/kmgroup/projects/tutorial/fpga_cad_flow/example_designs/simple_fpga_alu_sub_test/inputs/alu_sub.v:1.1-39.10" *)
module alu_sub(IN, OUT, clk);
  (* src = "/home/kmgroup/projects/tutorial/fpga_cad_flow/example_designs/simple_fpga_alu_sub_test/inputs/alu_sub.v:3.19-3.21" *)
  input [127:0] IN;
  wire [127:0] IN;
  (* src = "/home/kmgroup/projects/tutorial/fpga_cad_flow/example_designs/simple_fpga_alu_sub_test/inputs/alu_sub.v:9.14-9.15" *)
  wire [15:0] O;
  (* src = "/home/kmgroup/projects/tutorial/fpga_cad_flow/example_designs/simple_fpga_alu_sub_test/inputs/alu_sub.v:4.21-4.24" *)
  output [127:0] OUT;
  wire [127:0] OUT;
  (* src = "/home/kmgroup/projects/tutorial/fpga_cad_flow/example_designs/simple_fpga_alu_sub_test/inputs/alu_sub.v:10.9-10.11" *)
  reg R0;
  (* src = "/home/kmgroup/projects/tutorial/fpga_cad_flow/example_designs/simple_fpga_alu_sub_test/inputs/alu_sub.v:10.13-10.17" *)
  reg R0_1;
  (* src = "/home/kmgroup/projects/tutorial/fpga_cad_flow/example_designs/simple_fpga_alu_sub_test/inputs/alu_sub.v:5.11-5.14" *)
  input clk;
  wire clk;
  (* src = "/home/kmgroup/projects/tutorial/fpga_cad_flow/example_designs/simple_fpga_alu_sub_test/inputs/alu_sub.v:22.2-25.5" *)
  always @(posedge clk)
    R0 <= R0_1;
  (* src = "/home/kmgroup/projects/tutorial/fpga_cad_flow/example_designs/simple_fpga_alu_sub_test/inputs/alu_sub.v:22.2-25.5" *)
  always @(posedge clk)
    R0_1 <= IN[0];
  (* module_not_derived = 32'd1 *)
  (* src = "/home/kmgroup/projects/tutorial/fpga_cad_flow/example_designs/simple_fpga_alu_sub_test/inputs/alu_sub.v:29.7-36.6" *)
  clbalu #(
    .MODE_ALU(32'sd1)
  ) alu (
    .C(clk),
    .CTRL(8'h00),
    .I0(IN[15:0]),
    .I1(IN[31:16]),
    .Q(O)
  );
  assign OUT = { 80'hxxxxxxxxxxxxxxxxxxxx, O, 30'hxxxxxxxx, R0, R0_1 };
endmodule
