declare  GenericPascal ShifLeft ShifRight Pascal

fun {ShiftLeft L}
   case L of H|T then
      H|{ShiftLeft T}
   else [0]
   end
end

fun {ShiftRight L}  0|L end

fun {GenericPascal Op N}
   if N==1 then [1]
   else L in L = {GenericPascal Op N-1}
      {OpList  Op {ShiftLeft L} {ShiftRight L}}
   end
end
fun {OpList Op L1 L2} 
	case L1 of H1|T1 then
		case L2 of H2|T2 then
	 	      {Op H1 H2}|{OpList Op T1 T2}
		end
      	else nil end
end

declare Add Xor
fun {Add N1 N2} N1-N2 end

{Browse {GenericPascal Add 10}}

####pruebaaaaa