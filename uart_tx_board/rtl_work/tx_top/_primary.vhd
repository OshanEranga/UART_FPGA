library verilog;
use verilog.vl_types.all;
entity tx_top is
    generic(
        CLKS_PER_BIT    : integer := 5208
    );
    port(
        CLOCK_50        : in     vl_logic;
        SW              : in     vl_logic_vector(3 downto 0);
        KEY             : in     vl_logic_vector(1 downto 0);
        LED             : out    vl_logic_vector(7 downto 0);
        UART_TX         : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of CLKS_PER_BIT : constant is 1;
end tx_top;
