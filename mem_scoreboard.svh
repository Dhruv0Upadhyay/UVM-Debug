class scoreboard extends uvm_scoreboard;
  `uvm_component_utils(scoreboard)
  function new(string name="scoreboard",uvm_component parent);
    super.new(name,parent);
	endfunction
  
  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    `uvm_info("BUILD PHASE","Scoreboard",UVM_LOW)
  endfunction
   /* function void connect_phase(uvm_phase phase);
    `uvm_info("CONNECT PHASE","Scoreboard",UVM_LOW)
  endfunction */
 
  function void end_of_elaboration_phase(uvm_phase phase);
    `uvm_info("end_of_elaboration","Scoreboard",UVM_LOW)
  endfunction
  
   function void start_of_simulation_phase(uvm_phase phase);
     `uvm_info("start_of_simulation","Scoreboard",UVM_LOW)
  endfunction
  
  task run_phase(uvm_phase phase);
    `uvm_info("Dhruv","Scoreboard",UVM_LOW)
  endtask

   task reset_phase(uvm_phase phase);
     `uvm_info("RESET PHASE","Scoreboard",UVM_LOW)
  endtask

   task configure_phase(uvm_phase phase);
     `uvm_info("CONFIGURE PHASE","Scoreboard",UVM_LOW)
   endtask
  
   task main_phase(uvm_phase phase);
     `uvm_info("MAIN PHASE","Scoreboard",UVM_LOW)
   endtask
  
   task shutdown_phase(uvm_phase phase);
     `uvm_info("SHUTDOWN PHASE","Scoreboard",UVM_LOW)
   endtask
  
   function void extract_phase(uvm_phase phase);
     `uvm_info("Extract","Scoreboard",UVM_LOW)
  endfunction

  function void check_phase(uvm_phase phase);
    `uvm_info("Check","Scoreboard",UVM_LOW)
  endfunction
  
    function void report_phase(uvm_phase phase);
      `uvm_info("Report","Scoreboard",UVM_LOW)
  endfunction
  
    function void final_phase(uvm_phase phase);
      `uvm_info("Final","Scoreboard",UVM_LOW)
  endfunction
  
endclass 