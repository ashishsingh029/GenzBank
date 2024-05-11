<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<section id="all-transactions">
    <div class="container">
        <p class="sub-heading" style="text-decoration: underline; text-decoration-style: dotted" >
            Transaction history:
        </p>
        <table>
            <tbody>
                <tr>
                    <td>
                        Debit of <span class="debit">₹1000 </span> on <%= %> at <%= %>
                    </td>
                </tr>
                <tr>
                    <td>
                        Credit of <span class="credit">₹1000 </span> on <%=  %> at <%= %>
                    </td>
                </tr>
            </tbody>
        </table>
    </div>
</section>
    