class monitor extends uvm_monitor;
  `uvm_component_utils(monitor)
     virtual intf vif;
   uvm_analysis_port #(mem_seq_item) item_collected_port;
  mem_seq_item trans_collected;
  
  function new(string name="monitor",uvm_component parent);
    super.new(name,parent);
    trans_collected = new();
    item_collected_port = new("item_collected_port", this);
	endfunction
  
  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    `uvm_info("BUILD PHASE","Monitor",UVM_LOW)
    void'( uvm_config_db#(virtual intf)::get(this, "", "vif", vif));
  endfunction
  
  /* function void connect_phase(uvm_phase phase);
    `uvm_info("CONNECT PHASE","Monitor",UVM_LOW)
  endfunction */
 
  function void end_of_elaboration_phase(uvm_phase phase);
    `uvm_info("end_of_elaboration","Monitor",UVM_LOW)
  endfunction
  
   function void start_of_simulation_phase(uvm_phase phase);
     `uvm_info("start_of_simulation","Monitor",UVM_LOW)
  endfunction
  
  task run_phase(uvm_phase phase);
    `uvm_info("RUN","Monitor",UVM_LOW)
    trans_collected.addr=vif.MONITOR.monitor_cb.addr;
    trans_collected.print();
  endtask

   task reset_phase(uvm_phase phase);
     `uvm_info("RESET PHASE","Monitor",UVM_LOW)
  endtask

   task configure_phase(uvm_phase phase);
     `uvm_info("CONFIGURE PHASE","Monitor",UVM_LOW)
   endtask
  
   task main_phase(uvm_phase phase);
     `uvm_info("MAIN PHASE","Monitor",UVM_LOW)
   endtask
  
   task shutdown_phase(uvm_phase phase);
     `uvm_info("SHUTDOWN PHASE","Monitor",UVM_LOW)
   endtask
  
   function void extract_phase(uvm_phase phase);
     `uvm_info("Extract","Monitor",UVM_LOW)
  endfunction

  function void check_phase(uvm_phase phase);
    `uvm_info("Check","Monitor",UVM_LOW)
  endfunction
  
    function void report_phase(uvm_phase phase);
      `uvm_info("Report","Monitor",UVM_LOW)
  endfunction
  
    function void final_phase(uvm_phase phase);
      `uvm_info("Final","Monitor",UVM_LOW)
  endfunction
endclass 