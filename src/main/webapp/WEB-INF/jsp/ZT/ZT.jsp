<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<!-- This will only show the login link if the user is not authenticated -->
<sec:authorize access="isAuthenticated()">
    <li><a href="/login/loginPage">Login</a></li>
</sec:authorize>

<!-- This will show if the user is authenticated -->
<sec:authorize access="isAuthenticated()">
    <li><a href="login/logoutPage">Logout</a></li>
</sec:authorize>
