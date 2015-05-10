
-- VHDL Instantiation Created from source file reader.vhd -- 14:20:14 10/24/2012
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT reader
	PORT(
		clk : IN std_logic;
		reset : IN std_logic;
		rot_a : IN std_logic;
		rot_b : IN std_logic;
		row : IN std_logic_vector(9 downto 0);
		col : IN std_logic_vector(9 downto 0);
		datain : IN std_logic_vector(2 downto 0);          
		addr : OUT std_logic_vector(15 downto 0);
		R : OUT std_logic;
		G : OUT std_logic;
		B : OUT std_logic
		);
	END COMPONENT;

	Inst_reader: reader PORT MAP(
		clk => ,
		reset => ,
		rot_a => ,
		rot_b => ,
		row => ,
		col => ,
		addr => ,
		datain => ,
		R => ,
		G => ,
		B => 
	);


