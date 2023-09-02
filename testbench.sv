`include "uvm_macros.svh"
`include "mem_package.svh"
`include "interface.svh"

module tb;
  import uvm_pkg::*; 
  import my_pkg::*;
  
  bit clk;
  bit reset;
   

  //---------------------------------------
  //clock generation
  //---------------------------------------
  always #5 clk = ~clk;
  
  //---------------------------------------
  //reset Generation
  //---------------------------------------
  initial begin
    reset = 1;
    #5 reset =0;
  end
  
   
  
  intf intf_inst(clk,reset);
  
  memory DUT (
    .clk(intf_inst.clk),
    .reset(intf_inst.reset),
    .addr(intf_inst.addr),
    .wr_en(intf_inst.wr_en),
    .rd_en(intf_inst.rd_en),
    .wdata(intf_inst.wdata),
    .rdata(intf_inst.rdata)
   );

  
 initial begin
   run_test("test");
 end
  
  initial
    begin
      uvm_config_db#(virtual intf)::set(uvm_root::get(),"*","vif",intf_inst);
    end

 /* initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars;
    end */
     
  initial
    begin
      #100;
      $finish();
    end
    
  
endmodule