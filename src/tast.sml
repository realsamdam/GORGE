structure TAst :> TAST = struct
  datatype ast = IntConstant of string
                   | FloatConstant of string
                   | StringConstant of CST.escaped_string
                   | Symbol of Symbol.symbol
                   | Keyword of Symbol.symbol_name
                   | Let of Type.typespec * ast
                   | The of RCST.rcst * ast
                   | Operator of Symbol.symbol * ast list
       and binding = Binding of Symbol.symbol * ast

  fun transform _ = raise Fail ""
end
