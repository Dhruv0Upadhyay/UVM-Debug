class agent extends uvm_agent;
  `uvm_component_utils(agent)
   sequencer seqr;
   driver dri;
   monitor mon;
  function new(string name="agent",uvm_component parent);
    super.new(name,parent);
	endfunction
  
  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    seqr=sequencer::type_id::create("seqr",this);
    dri=driver::type_id::create("dri",this);
    mon=monitor::type_id::create("mon",this);
    `uvm_info("BUILD PHASE","Agent",UVM_LOW)
  endfunction

function void connect_phase(uvm_phase phase);
  dri.seq_item_port.connect(seqr.seq_item_export);
  `uvm_info("CONNECT PHASE","Agent",UVM_LOW)
endfunction
 
  function void end_of_elaboration_phase(uvm_phase phase);
    `uvm_info("end_of_elaboration","Agent",UVM_LOW)
  endfunction
  
   function void start_of_simulation_phase(uvm_phase phase);
     `uvm_info("start_of_simulation","Agent",UVM_LOW)
  endfunction
  
  task run_phase(uvm_phase phase);
    `uvm_info("RUN","Agent",UVM_LOW)
  endtask

   task reset_phase(uvm_phase phase);
     `uvm_info("RESET PHASE","Agent",UVM_LOW)
  endtask

   task configure_phase(uvm_phase phase);
     `uvm_info("CONFIGURE PHASE","Agent",UVM_LOW)
   endtask
  
   task main_phase(uvm_phase phase);
     `uvm_info("MAIN PHASE","Agent",UVM_LOW)
   endtask
  
   task shutdown_phase(uvm_phase phase);
     `uvm_info("SHUTDOWN PHASE","Agent",UVM_LOW)
   endtask
  
   function void extract_phase(uvm_phase phase);
     `uvm_info("Extract","Agent",UVM_LOW)
  endfunction

  function void check_phase(uvm_phase phase);
    `uvm_info("Check","Agent",UVM_LOW)
  endfunction
  
    function void report_phase(uvm_phase phase);
      `uvm_info("Report","Agent",UVM_LOW)
  endfunction
  
    function void final_phase(uvm_phase phase);
      `uvm_info("Final","Agent",UVM_LOW)
  endfunction
endclass 