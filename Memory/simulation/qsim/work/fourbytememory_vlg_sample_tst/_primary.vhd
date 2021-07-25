library verilog;
use verilog.vl_types.all;
entity fourbytememory_vlg_sample_tst is
    port(
        adr             : in     vl_logic_vector(0 to 1);
        clk             : in     vl_logic;
        data            : in     vl_logic_vector(0 to 7);
        en              : in     vl_logic;
        wr              : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end fourbytememory_vlg_sample_tst;
