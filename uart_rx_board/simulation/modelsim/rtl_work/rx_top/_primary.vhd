library verilog;
use verilog.vl_types.all;
entity rx_top is
    generic(
        CLKS_PER_BIT    : integer := 5208
    );
    port(
        CLOCK_50        : in     vl_logic;
        KEY             : in     vl_logic_vector(1 downto 0);
        UART_RX         : in     vl_logic;
        LED             : out    vl_logic_vector(7 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of CLKS_PER_BIT : constant is 1;
end rx_top;
