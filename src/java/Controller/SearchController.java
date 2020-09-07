/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.FoodItem;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author tien_do
 */
public class SearchController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            String sortDow = request.getParameter("sortDow");

            String search = request.getParameter("search");
            if (search == null || search =="") {
                FoodItem fi = new FoodItem();
                List<FoodItem> searchList;
                try {
                    searchList = fi.getAllFoodItems();
                    request.setAttribute("searchList", searchList);
                    request.getRequestDispatcher("Search.jsp").forward(request, response);
                } catch (Exception ex) {
                    System.out.println("loi search: " + ex);
                }
            }else{
                String searchWord = request.getParameter("seach-dropdow");
                FoodItem fi = new FoodItem();
                List<FoodItem> searchList;
                try {
                    searchList = fi.searchproduct(searchWord);
                    request.setAttribute("searchList", searchList);
                    request.getRequestDispatcher("Search.jsp").forward(request, response);
                } catch (Exception ex) {
                    System.out.println("loi search: " + ex);
                }
            }

            if (sortDow != null) {
                FoodItem fi = new FoodItem();
                List<FoodItem> searchList;
                try {
                    searchList = fi.SortDow();
                    request.setAttribute("searchList", searchList);
                    request.getRequestDispatcher("Search.jsp").forward(request, response);
                } catch (Exception e) {
                    System.out.println("loi sort: " + e);
                }

            }
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
