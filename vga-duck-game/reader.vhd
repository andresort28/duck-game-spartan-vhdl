----------------------------------------------------------------------------------
-- File Name: reader.vhd
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity reader is
    Port ( clk,reset,rot_a,rot_b:in STD_LOGIC;
			  row : in  STD_LOGIC_VECTOR (9 downto 0);
           col : in  STD_LOGIC_VECTOR (9 downto 0);
           addr : out  STD_LOGIC_VECTOR (15 downto 0);
			  datain : in  STD_LOGIC_VECTOR (2 downto 0);
			  R, G, B : out  STD_LOGIC;
			  shot : in STD_LOGIC;
			  xpos : in STD_LOGIC_VECTOR (9 downto 0);
			  ypos : in STD_LOGIC_VECTOR (9 downto 0)
			  );
end reader;

architecture Behavioral of reader is
   --posiciones P(x,y)para graficar la imagen centrada en la pantalla
	--Tamaño imagen: 224x224
	
         --  P1__________________P2			*---------> X	
			--  |							|			|
			--  |							|			|
			--  |							|			| SISTEMA DE COORDENADAS
			--  |		  IMAGEN			|			|
			--  |							|			V
			--  |							|			Y
			--  P3__________________P4
			
	--Imagen 1: (IMAGEN ORIGINAL) 
	--		P1=(208,128)
	--		P2=(431,128)
	--		P3=(208,351)
	--		P4=(431,351)
		
	
	constant inicio1 : STD_LOGIC_VECTOR (15 downto 0) := "0000000000000000";
	constant final1 : STD_LOGIC_VECTOR (15 downto 0)  := "0001111000111011";	
	constant inicio2 : STD_LOGIC_VECTOR (15 downto 0) := "0001111000111100";
	constant final2 : STD_LOGIC_VECTOR (15 downto 0)  := "0011110011010001";	
	constant inicio3 : STD_LOGIC_VECTOR (15 downto 0) := "0011110011010010";
	constant final3 : STD_LOGIC_VECTOR (15 downto 0)  := "0101101100001101";
	
	constant inicio4 : STD_LOGIC_VECTOR (15 downto 0) := "0101101100001110";
	constant final4 : STD_LOGIC_VECTOR (15 downto 0)  := "0111100101001001";	
	constant inicio5 : STD_LOGIC_VECTOR (15 downto 0) := "0111100101001010";
	constant final5 : STD_LOGIC_VECTOR (15 downto 0)  := "1001011110000101";	
	constant inicio6 : STD_LOGIC_VECTOR (15 downto 0) := "1001011110000110";
	constant final6 : STD_LOGIC_VECTOR (15 downto 0)  := "1011010111000001";
	
	
	
	
	--Direcciones imagen en memoria
	signal addr_normal : STD_LOGIC_VECTOR (15 downto 0) := (others => '0');
	
	signal rotary_left: STD_LOGIC;
	signal rotary_event:STD_LOGIC;
	signal rotary_q1: STD_LOGIC;
	signal rotary_q2: STD_LOGIC;
	signal rotary_in: STD_LOGIC_VECTOR(1 downto 0);
	signal delay_rotary_q1: STD_LOGIC;
	
begin

	c_normal: process (clk, reset)
	--habilita la visualizacion de la imagen
	variable en_img : std_logic:= '0';
	variable contador : integer := 0;
	
	variable xtop : integer := 10;
	variable ytop : integer := 10;
	variable xbottom : integer := 99;
	variable ybottom : integer := 95;
	
	variable yapaso : boolean := false;
	variable yapaso2 : boolean := false;
	variable off : boolean := false;
	variable der : boolean := true;
	variable izq : boolean := false;
	
	variable change : integer := 0;	
	variable change2 : boolean := false;
	variable mouse : boolean := false;
	
	variable x : STD_LOGIC_VECTOR (9 downto 0) := "0000000000";
	variable y : STD_LOGIC_VECTOR (9 downto 0) := "0000000000";
	
	variable cx : integer := 0;
	variable cy : integer := 0;
	
	begin
	
			off := false;
			
			if reset = '0' then
				en_img:='0';
			else
				en_img:='1';
			end if;	
			
			

			if clk'event and clk='1' then	
			
								
				--CAMBIOS DEL MOUSE...				
				if xpos > x then
					cx := 5;
					der := true;
					izq := false;
					mouse := true;
				elsif xpos < x then
					cx := -5;
					der := false;
					izq := true;
					mouse := true;
				end if;
				
				if ypos > y then
					cy := 5;
					mouse := true;
				elsif ypos < y then
					cy := -5;
					mouse := true;
				end if;

				x := xpos;
				y := ypos;	
				
				--Efectua el movimiento del mouse
				if (row = inicio1) and (col = inicio1) and mouse then
				
					if (xtop + cx) > 10 and (xbottom + cx) < 615 then
						xtop := xtop + cx;
						xbottom := xbottom + cx;
					elsif (ytop + cy) > 10 and (ybottom + cy) < 465 then	
						ytop := ytop + cy;
						ybottom := ybottom + cy;
					end if;	
						
					if der and not(izq) then
						addr_normal <= inicio1;
					elsif izq and not(der) then
						addr_normal <= inicio4;
					end if;	
					
					mouse := false;
					cx := 0;
					cy := 0;
				end if;	
					
				
				-- A LA DERECHA
					if rotary_event = '1' and rotary_left = '1' and xbottom < 615 then
						change := 10;
						der := true;
						izq := false;
						contador := 0;
						change2 := true;
					end if;
				
				
					-- A LA IZQUIERDA
					if rotary_event = '1' and rotary_left = '0' and xtop > 15 then	
						change := -10;
						der := false;
						izq := true;
						contador := 0;
						change2 := true;
					end if;
					
					
					-- ASIGNA EL NUEVO VALOR DEL CAMBIO DEBIDO A ROT_A Y ROT_B
					if (row = inicio1) and (col = inicio1) and change2 then
						xtop := xtop + change;
						xbottom := xbottom + change;				
						change := 0;
						if der and not(izq) then
							addr_normal <= inicio1;
						elsif izq and not(der) then
							addr_normal <= inicio4;
						end if;	
						change2 := false;
					end if;	
					
					
			
			--si el controlador esta mostrando los pixeles ubicados dentro del marco de la imagen en la pantalla
			--entonces se lee la informacion de color almacenada en la memoria. Caso contrario pinta el pixel de color
			--negro
			if (row >= ytop) and (row <= ybottom) then
				if (col >= xtop) and (col <= xbottom) then
					
					
					-- A LA DERECHA
					if der and not(izq) then
						
								if addr_normal = final1 then
									if contador = 8 then
										contador := 0;
										addr_normal <= inicio2;
										ybottom := ytop + 86;								
									else
										contador := contador + 1;
										addr_normal <= inicio1;
									end if;		
									
								elsif addr_normal = final2 then
									if contador = 8 then
										contador := 0;
										ybottom := ytop + 85;
										
										if yapaso then								
											addr_normal <= inicio1;
											yapaso := false;								
										else								
											addr_normal <= inicio3;
											yapaso := true;
										end if;							
									else
										contador := contador + 1;
										addr_normal <= inicio2;
									end if;
								
								elsif addr_normal = final3 then
									if contador = 8 then
										addr_normal <= inicio2;
										contador := 0;
										ybottom := ytop + 86;
									else
										contador := contador + 1;
										addr_normal <= inicio3;
									end if;
								else
									addr_normal <= addr_normal + 1;
								end if;					
					
					-- A LA IZQUIERDA
					elsif izq and not(der) then
					
							if addr_normal = final4 then
									if contador = 8 then
										contador := 0;
										addr_normal <= inicio5;
										ybottom := ytop + 85;
									else
										contador := contador + 1;
										addr_normal <= inicio4;
									end if;		
									
								elsif addr_normal = final5 then
									if contador = 8 then
										contador := 0;
										ybottom := ytop + 85;
										
										if yapaso2 then								
											addr_normal <= inicio4;
											yapaso2 := false;								
										else								
											addr_normal <= inicio6;
											yapaso2 := true;
										end if;
										
									else
										contador := contador + 1;
										addr_normal <= inicio5;
									end if;
								
								elsif addr_normal = final6 then
									if contador = 8 then
										addr_normal <= inicio5;
										contador := 0;
										ybottom := ytop + 85;
									else
										contador := contador + 1;
										addr_normal <= inicio6;
									end if;
								else
									addr_normal <= addr_normal + 1;
								end if;
					else
						off := true;
					end if;
					
				else
					off := true;
				end if;
			end if;
			
			--pintar
			 if(en_img='0') then
				R<='0';
				G<='0';
				B<='0';				
			 else				
				if off then
					R<='0';
					G<='0';
					B<='1';				
				else				
					R<=datain(2);
					G<=datain(1);
					B<=datain(0);
				end if;	
			 end if; 
			 
					
			
			end if;
	end process c_normal;
	
	--La variable rotary_q2 me indica direccion
	
	rotary_filter: process(clk)
		begin
		if clk'event and clk='1' then
			rotary_in <= rot_b & rot_a;
			case rotary_in is
				when "00" => rotary_q1 <= '0';
				rotary_q2 <= rotary_q2;
				when "01" => rotary_q1 <= rotary_q1;
				rotary_q2 <= '0'; --Se movio a la izquierda
				when "10" => rotary_q1 <= rotary_q1;
				rotary_q2 <= '1'; --Se movio a la derecha
				when "11" => rotary_q1 <= '1';
				rotary_q2 <= rotary_q2;
				when others => rotary_q1 <= rotary_q1;
				rotary_q2 <= rotary_q2;
			end case;
		end if;
	end process rotary_filter;
	
	
	direction: process(clk)

		begin
		if clk'event and clk='1' then
			delay_rotary_q1 <= rotary_q1;
			if rotary_q1='1' and delay_rotary_q1='0' then
				rotary_event <= '1';
				rotary_left <= rotary_q2;
			else
				rotary_event <= '0';
				rotary_left <= rotary_left;
			end if;
		end if;
	end process direction;

	
	addr <= addr_normal; 

end Behavioral;
