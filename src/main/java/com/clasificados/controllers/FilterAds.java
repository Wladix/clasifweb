package com.clasificados.controllers;

import com.clasificados.classes.Ads;
import com.clasificados.models.ModelAds;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author pedro
 */
public class FilterAds extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }
    
     public String getFilterAds() {
        ModelAds mp = new ModelAds();
        String htmlCode = "";
        for (Ads ads : mp.getAllAds(1)) {
            
            htmlCode += "<div class=\"item-list\">\n"            
                +"<div class=\"col-sm-2 no-padding photobox\">\n"
                           +"<div class=\"add-image\">\n"
                                +"<a href=\"#\"><img src=\""+ ads.getImage() +"\" alt=\"\"></a>\n"
                                +"<span class=\"photo-count\"><i class=\"fa fa-camera\"></i>2</span>\n"
                            +"</div>\n"
                        +"</div>\n"
                
                        +"<div class=\"col-sm-7 add-desc-box\">\n"
                            +"<div class=\"add-details\">\n"
                                +"<h5 class=\"add-title\"><a href=\"ads-details.jsp\">"+ads.getTitle()+"</a></h5>\n"
                                +"<div class=\"info\">\n"
                                    +"<span class=\"add-type\">B</span>\n"
                                    +"<span class=\"date\">\n"
                                        +"<i class=\"fa fa-clock\"></i>\n"
                                        +ads.getPublicationDate()+"\n"
                                    +"</span> -\n"
                                    +"<span class=\"category\">Vehiculo</span> -\n"
                                    +"<span class=\"item-location\"><i class=\"fa fa-map-marker\"></i>"+ads.getCity_location()+"</span>\n"
                                +"</div>\n"
                                +"<div class=\"item_desc\">\n"
                                    +"<a href=\"#\">"+ads.getDescription()+"</a>\n"
                                +"</div>\n"
                            +"</div>\n"
                        +"</div>\n"
                      
                        +"<div class=\"col-sm-3 text-right  price-box\">\n"
                            +"<h2 class=\"item-price\">"+ads.getPrice()+"</h2>\n"
                            +"<a class=\"btn btn-danger btn-sm\"><i class=\"fa fa-certificate\"></i>\n"
                                +"<span>Top Anuncio</span></a> \n"
                            +"<a class=\"btn btn-common btn-sm\"> <i class=\"fa fa-eye\"></i> <span>215</span> </a>\n"
                        +"</div>\n"
                    +"</div>\"";     
        }
        return htmlCode;
    }

}
