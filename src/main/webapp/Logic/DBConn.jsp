<%@ page import="java.sql.*" %>
<%!
        static Connection con = null;
        ResultSet rs = null;
        PreparedStatement sm = null;
        final String url = "jdbc:oracle:thin:@localhost:1521:xe";
        final String user = "AKS";
        final String pass = "nitroDB";
        public void jspInit() {
        	try {
            	Class.forName("oracle.jdbc.driver.OracleDriver");
            	con = DriverManager.getConnection(url,user,pass);
        	} catch (Exception e) {
        		e.printStackTrace();
        	}
        }
        public void jspDestroy() {
        	try {
        		if(rs != null) {
        			rs.close();
        		}
        		if(sm != null) {
        			sm.close();
        		}
        		if(con != null) {
        			con.close();
        		}
        	} catch (Exception e) {
        		e.printStackTrace();
        	}
        }
%>
