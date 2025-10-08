/**
 * Правило: знаходить виклики eval()
 * Виправлено: перевіряємо, що callable — це Name, і читаємо його через getId()
 */
import python

from Call call, Name name
where call.getFunc() = name and name.getId() = "eval"
select call, "⚠️ Виклик eval() може бути небезпечним!"
