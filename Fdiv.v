module fdiv(
	input clkin,Pn,reset,
	output reg clkout,buz
);
integer cont;
integer lvl;
initial buz=0;
initial cont=0;
initial lvl=1;

always@(posedge clkin)
begin
	if(reset==1)
	begin
		lvl<=1;
	end
	if (lvl==1)
		begin
			if(Pn==0)
			begin
				lvl<=lvl+1;
			end
			if(cont==25000000)
				begin
					cont<=0;
					clkout<=~clkout;
				end
			else
				begin
					cont<=cont+1;
				end
			end
	if (lvl==2)
		begin
			if(Pn==0)
				begin
					lvl<=lvl+1;
				end
			if(cont==21875000)
				begin
					cont<=0;
					clkout<=~clkout;
				end
			else
				begin
					cont<=cont+1;
				end
		end
	if (lvl==3)
		begin
			if (Pn==0)
				begin
					lvl<=lvl+1;
				end
			if (cont==20312500)
				begin
					cont<=0;
					clkout<=~clkout;
				end
			else
				begin
					cont<=cont+1;
				end
		end
	if (lvl==4)
		begin
			if (Pn==0)
				begin
					lvl<=lvl+1;
				end
			if (cont==18750000)
				begin
					cont<=0;
					clkout<=~clkout;
				end
			else
				begin
					cont<=cont+1;
				end
		end
		if (lvl==5)
		begin
			if (Pn==0)
				begin
					lvl<=lvl+1;
				end
			if (cont==17187500)
				begin
					cont<=0;
					clkout<=~clkout;
				end
			else
				begin
					cont<=cont+1;
				end
		end
		if (lvl==6)
		begin
			if (Pn==0)
				begin
					lvl<=lvl+1;
				end
			if (cont==15625000)
				begin
					cont<=0;
					clkout<=~clkout;
				end
			else
				begin
					cont<=cont+1;
				end
		end
		if (lvl==7)
		begin
			if (Pn==0)
				begin
					lvl<=lvl+1;
				end
			if (cont==14062500)
				begin
					cont<=0;
					clkout<=~clkout;
				end
			else
				begin
					cont<=cont+1;
				end
		end
		if (lvl==8)
		begin
			if (Pn==0)
				begin
					lvl<=0;
					buz<=1;
				end
			if (cont==12500000)
				begin
					cont<=0;
					clkout<=~clkout;
				end
			else
				begin
					cont<=cont+1;
				end
		end
	end
endmodule