import python

from CallExpr call
where call.getCallee().getName() = "eval"
select call, "Виклик eval() може бути небезпечним!"