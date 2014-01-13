package tooltwist.employeeManagement.requestHandlers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dinaa.data.XData;
import com.dinaa.ui.UiModuleException;
import com.dinaa.ui.UimHelper;
import com.dinaa.xpc.Xpc;

import tooltwist.wbd.WbdRequestHandler;

/**
 * Request handler "employee" - Employee
 * 
 * This handler can be called from a client browser before control is passed to a normal
 * navpoint. To call it, add this parameter to a normal ToolTwist URL:
 * 
 *         op=employeeManagement_widgets.addEmployee.employee
 * 
 * After this method is called, the requested navpoint will be displayed in the usual
 * manner. To pass control to a different navpoint, use RoutingUIM.gotoNavpoint(), and
 * then return true.
 *
 * @author ?
 */
public class EmployeeRequestHandler extends WbdRequestHandler
{

	@Override
	public boolean handler(UimHelper uh, String widgetId, String method) throws UiModuleException, ServletException, IOException
	{
		
		String employeeId = uh.getRequestValue("employeeId");
		String username = uh.getRequestValue("username");
		String password = uh.getRequestValue("password");
		String firstName = uh.getRequestValue("firstName");
		String middleName = uh.getRequestValue("middleName");
		String lastName = uh.getRequestValue("lastName");
		
		HttpServletResponse request = uh.getResponse();
		
		try {
			
			if (!employeeId.equals("null")) 
			{
				Xpc xpc = uh.getXpc();
				xpc.start("phinza.D.employee", "update");
				xpc.attrib("employeeId", employeeId);
				xpc.attrib("username", username);
				xpc.attrib("password", password);
				xpc.attrib("firstName", firstName);
				xpc.attrib("middleName", middleName);
				xpc.attrib("lastName", lastName);
				xpc.run();
				request.sendRedirect("employeeManagement-14");
			}
			else
			{
				Xpc xpc = uh.getXpc();
				xpc.start("phinza.D.employee", "insert");
				xpc.attrib("username", username);
				xpc.attrib("password", password);
				xpc.attrib("firstName", firstName);
				xpc.attrib("middleName", middleName);
				xpc.attrib("lastName", lastName);
				xpc.run();
				request.sendRedirect("employeeManagement-14");
			}
			
		} catch (Exception e) {
			e.getStackTrace();
		}
		return false;
	}

}
