/**
 * @id custom.python.eval-call
 * @name Виклик eval()
 * @description Знаходить виклики eval(), які можуть бути небезпечними.
 * @kind problem
 * @problem.severity warning
 * @tags security;external/cwe/cwe-94
 */

import python

from Call call, Name name
where call.getFunc() = name and name.getId() = "eval"
select call, "⚠️ Виклик eval() може бути небезпечним!"

