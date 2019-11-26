钝化：session：内存--》硬盘
活化：反之

session对象的四种状态：
1. session.setAttribute("a",xxx);  将对象a绑定到session中【绑定】
2. session.removeAttribute("a");   将对象a从session中解绑

监听绑定与接绑：HttpSessionBindingListener
3. 钝化
4. 活化

监听钝化与活化：HttpSessionActivationListener