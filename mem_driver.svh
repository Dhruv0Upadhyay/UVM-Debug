class driver extends uvm_driver;
  `uvm_component_utils(driver)
  
    virtual intf vif;
  
  function new(string name="driver",uvm_component parent);
    super.new(name,parent);
	endfunction
  
  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
     `uvm_info("BUILD PHASE","Driver",UVM_LOW)
   
    if(!(uvm_config_db#(virtual intf)::get(this, "", "vif", vif)))
      `uvm_fatal("NO_VIF",{"virtual interface must be get for: ",get_full_name(),".vif"})
    else
      `uvm_info("PASSED",$sformatf("The value of interface is getting properly"),UVM_LOW)
   
  endfunction
  
/*function void connect_phase(uvm_phase phase);
  `uvm_info("CONNECT PHASE","Driver",UVM_LOW)
  endfunction */
  
   function void end_of_elaboration_phase(uvm_phase phase);
     `uvm_info("end_of_elaboration","Driver",UVM_LOW)
  endfunction
  
   function void start_of_simulation_phase(uvm_phase phase);
    `uvm_info("start_of_simulation","Driver",UVM_LOW)
  endfunction
  
  task run_phase(uvm_phase phase);
    
    `uvm_info("RUN","Driver",UVM_LOW)
      seq_item_port.get_next_item(req);
    req.print();
    //  drive();
       
       vif.DRIVER.driver_cb.addr<=3;
    
      seq_item_port.item_done();
  endtask
  /* virtual task drive();
    vif.DRIVER.driver_cb.wr_en <= 0;
    vif.DRIVER.driver_cb.rd_en <= 0;
    @(posedge vif.DRIVER.clk);
    
    vif.DRIVER.driver_cb.addr <= req.addr;
    
    if(req.wr_en) begin // write operation
      vif.DRIVER.driver_cb.wr_en <= req.wr_en;
      vif.DRIVER.driver_cb.wdata <= req.wdata;
      @(posedge vif.DRIVER.clk);
    end
    else if(req.rd_en) begin //read operation
     vif.DRIVER.driver_cb.rd_en <= req.rd_en;
      @(posedge vif.DRIVER.clk);
      vif.DRIVER.driver_cb.rd_en <= 0;
      @(posedge vif.DRIVER.clk);
      req.rdata = vif.DRIVER.driver_cb.rdata;
    end
    
  endtask */

   function void extract_phase(uvm_phase phase);
     `uvm_info("Extract","Driver",UVM_LOW)
  endfunction

  function void check_phase(uvm_phase phase);
    `uvm_info("Check","Driver",UVM_LOW)
  endfunction
  
    function void report_phase(uvm_phase phase);
      `uvm_info("Report","Driver",UVM_LOW)
  endfunction
  
    function void final_phase(uvm_phase phase);
      `uvm_info("Final","Driver",UVM_LOW)
  endfunction
endclass 