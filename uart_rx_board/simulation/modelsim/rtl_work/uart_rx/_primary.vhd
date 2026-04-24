library verilog;
use verilog.vl_types.all;
entity uart_rx is
    generic(
        CLKS_PER_BIT    : integer := 5208
    );
    port(
        i_clk           : in     vl_logic;
        i_rst_n         : in     vl_logic;
        i_rx_serial     : in     vl_logic;
        o_rx_dv         : out    vl_logic;
        o_rx_byte       : out    vl_logic_vector(7 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of CLKS_PER_BIT : constant is 1;
end uart_rx;
