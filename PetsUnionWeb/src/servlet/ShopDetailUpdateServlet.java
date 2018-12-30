package servlet;

import service.ShopService;
import tools.StaticPara.ShopDetailUpdateServletPara;
import tools.StaticPara.SqlPara;
import tools.URICoder;
import org.json.JSONArray;
import org.json.JSONObject;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "ShopDetailUpdateServlet")
public class ShopDetailUpdateServlet extends HttpServlet {

    public ShopDetailUpdateServlet() {
        super();
    }

    /**
     * @param request  request from jsp
     * @param response response to jsp
     * @throws ServletException servlet exception
     * @throws IOException      ioe exception
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int flag = Integer.parseInt(request.getParameter("flag"));
        if (flag == ShopDetailUpdateServletPara.priceInsert || flag == ShopDetailUpdateServletPara.priceDelete) {
            String returnPath = request.getParameter("returnPath");
            String shopName = URICoder.getURLDecoderString(request.getParameter("shopName"));
            JSONArray serviceTable = new JSONArray(URICoder.getURLDecoderString(request.getParameter("serviceTable")));
            for (int i = 0; i < serviceTable.length(); i++) {
                JSONObject service = serviceTable.getJSONObject(i);
                String serviceIntro = service.getString("serviceIntro");
                String serviceType = service.getString("serviceType");
                String petsType = service.getString("petsType");
                String price = service.getString("price");

                int result = -1;
                if (flag == ShopDetailUpdateServletPara.priceInsert) {
                    result = ShopService.updateServiceByShop(shopName, serviceIntro, serviceType, petsType, price);
                } else {
                    result = ShopService.deleteServiceByShop(shopName, serviceIntro, serviceType, petsType, price);
                }

                if (result == SqlPara.sqlError) {
                    request.setAttribute("errorMessage", "SqlError");
                    request.getRequestDispatcher("/404.jsp").forward(request, response);
                }
            }
            if (returnPath != null) {
                request.getRequestDispatcher(returnPath).forward(request, response);
            } else {
                request.getRequestDispatcher("/shopDetailUpdate.jsp").forward(request, response);
            }

        } else if (flag == ShopDetailUpdateServletPara.basic) {
            String returnPath = request.getParameter("returnPath");
            String shopName = URICoder.getURLDecoderString(request.getParameter("shopName"));
            String instruction = URICoder.getURLDecoderString(request.getParameter("instruction"));
            String shopImgUrl = request.getParameter(" shopImgUrl");
            String address = URICoder.getURLDecoderString(request.getParameter("address"));
            String shopHours = URICoder.getURLDecoderString(request.getParameter("shopHours"));
            String shopTel = request.getParameter("shopTel");

            int result = ShopService.updateInfoByShop(shopName, instruction, shopImgUrl, address, shopHours, shopTel);
            if (result == SqlPara.success) {
                if (returnPath != null) {
                    request.getRequestDispatcher(returnPath).forward(request, response);
                } else {
                    request.getRequestDispatcher("/shopDetailUpdate.jsp").forward(request, response);
                }
            } else if (result == SqlPara.sqlError) {
                request.setAttribute("errorMessage", "SqlError");
                request.getRequestDispatcher("/404.jsp").forward(request, response);
            }

        } else {
            request.setAttribute("errorMessage", "InvalidRequest");
            request.getRequestDispatcher("/404.jsp").forward(request, response);
        }
    }

    /**
     * @param request  request from jsp
     * @param response response to jsp
     * @throws ServletException servlet exception
     * @throws IOException      ioe exception
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
