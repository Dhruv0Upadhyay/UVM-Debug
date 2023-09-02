class test extends uvm_test;
  `uvm_component_utils(test)
  environment env;
  mem_sequence mem_seq;
  function new(string name="test",uvm_component parent);
    super.new(name,parent);
	endfunction
  
  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    env=environment::type_id::create("env",this);
    mem_seq=mem_sequence::type_id::create("mem_seq",this);
    `uvm_info("BUILD PHASE","Test",UVM_LOW)
  endfunction
  
   /* function void connect_phase(uvm_phase phase);
    `uvm_info("CONNECT PHASE","Monitor",UVM_LOW)
  endfunction */
 
  function void end_of_elaboration_phase(uvm_phase phase);
    `uvm_info("end_of_elaboration","Test",UVM_LOW)
  endfunction
  
   function void start_of_simulation_phase(uvm_phase phase);
     `uvm_info("start_of_simulation","Test",UVM_LOW)
  endfunction
  
  task run_phase(uvm_phase phase);
    `uvm_info("RUN","Test",UVM_LOW)
     mem_seq.start(env.agn.seqr);
  endtask

   function void extract_phase(uvm_phase phase);
     `uvm_info("Extract","Test",UVM_LOW)
  endfunction

  function void check_phase(uvm_phase phase);
    `uvm_info("Check","Test",UVM_LOW)
  endfunction
  
    function void report_phase(uvm_phase phase);
      `uvm_info("Report","Test",UVM_LOW)
  endfunction
  
    function void final_phase(uvm_phase phase);
      `uvm_info("Final","Test",UVM_LOW)
  endfunction
endclass 