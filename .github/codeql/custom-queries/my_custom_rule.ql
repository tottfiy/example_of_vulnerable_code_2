/**
 * Правило: знаходить виклики eval()
 */
import python

from Call call
where call.getFunc().getName() = "eval"
select call, "Виклик eval() може бути небезпечним!"