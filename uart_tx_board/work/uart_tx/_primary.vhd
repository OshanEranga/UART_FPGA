library verilog;
use verilog.vl_types.all;
entity uart_tx is
    generic(
        CLKS_PER_BIT    : integer := 5208
    );
    port(
        i_clk           : in     vl_logic;
        i_rst_n         : in     vl_logic;
        i_tx_dv         : in     vl_logic;
        i_tx_byte       : in     vl_logic_vector(7 downto 0);
        o_tx_serial     : out    vl_logic;
        o_tx_active     : out    vl_logic;
        o_tx_done       : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of CLKS_PER_BIT : constant is 1;
end uart_tx;
