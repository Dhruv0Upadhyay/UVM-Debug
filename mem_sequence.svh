class mem_sequence extends uvm_sequence;
  `uvm_object_utils(mem_sequence)
  function new(string name = "mem_sequence");
    super.new(name);
  endfunction
  
   virtual task body();
    req = mem_seq_item::type_id::create("req");
    wait_for_grant();
    req.randomize();
    req.print();
    send_request(req);
    wait_for_item_done();
  endtask
endclass
