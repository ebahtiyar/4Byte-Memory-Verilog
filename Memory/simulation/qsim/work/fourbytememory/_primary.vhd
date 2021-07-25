library verilog;
use verilog.vl_types.all;
entity fourbytememory is
    port(
        data            : in     vl_logic_vector(0 to 7);
        clk             : in     vl_logic;
        en              : in     vl_logic;
        wr              : in     vl_logic;
        adr             : in     vl_logic_vector(0 to 1);
        \out\           : out    vl_logic_vector(0 to 7)
    );
end fourbytememory;
