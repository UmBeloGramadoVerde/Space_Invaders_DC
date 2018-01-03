library verilog;
use verilog.vl_types.all;
entity \Mux3-8\ is
    port(
        S               : out    vl_logic_vector(7 downto 0);
        Y3              : in     vl_logic;
        Y2              : in     vl_logic;
        Y1              : in     vl_logic
    );
end \Mux3-8\;
