class environment extends uvm_env;
  `uvm_component_utils(environment)
   agent agn;  
   scoreboard scb;
  function new(string name="environment",uvm_component parent);
    super.new(name,parent);
	endfunction
  
  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    agn=agent::type_id::create("agn",this);
    scb=scoreboard::type_id::create("scb",this);
    `uvm_info("BUILD PHASE","Environment",UVM_LOW)
  endfunction
     
  function void connect_phase(uvm_phase phase);
    `uvm_info("Environmnet PHASE","Environment",UVM_LOW)
  endfunction 
 
  function void end_of_elaboration_phase(uvm_phase phase);
    `uvm_info("end_of_elaboration","Environment",UVM_LOW)
  endfunction
  
   function void start_of_simulation_phase(uvm_phase phase);
     `uvm_info("start_of_simulation","Environment",UVM_LOW)
  endfunction
  
  task run_phase(uvm_phase phase);
    uvm_top.print_topology();
    `uvm_info("RUN","Environment",UVM_LOW)
  endtask

   task reset_phase(uvm_phase phase);
     `uvm_info("RESET PHASE","Environment",UVM_LOW)
  endtask

   task configure_phase(uvm_phase phase);
     `uvm_info("CONFIGURE PHASE","Environment",UVM_LOW)
   endtask
  
   task main_phase(uvm_phase phase);
     `uvm_info("MAIN PHASE","Environment",UVM_LOW)
   endtask
  
   task shutdown_phase(uvm_phase phase);
     `uvm_info("SHUTDOWN PHASE","Environment",UVM_LOW)
   endtask
  
   function void extract_phase(uvm_phase phase);
     `uvm_info("Extract","Environment",UVM_LOW)
  endfunction

  function void check_phase(uvm_phase phase);
    `uvm_info("Check","Environment",UVM_LOW)
  endfunction
  
    function void report_phase(uvm_phase phase);
      `uvm_info("Report","Environment",UVM_LOW)
  endfunction
  
    function void final_phase(uvm_phase phase);
      `uvm_info("Final","Environment",UVM_LOW)
  endfunction
endclass 