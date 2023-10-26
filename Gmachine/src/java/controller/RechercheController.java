package controller;

import entities.Machine;
import entities.Salle;
import services.MachineService;
import services.SalleService;
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "RechercheController", urlPatterns = {"/RechercheController"})
public class RechercheController extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
    }

    public List<Machine> findMachinesBySalle(Salle s){
    return s.getMachines();
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String salleId = request.getParameter("salleId");

        if (salleId != null && !salleId.isEmpty()) {
            try {
                int salleIdInt = Integer.parseInt(salleId);
                SalleService salleService = new SalleService();
                Salle salle = salleService.findById(salleIdInt);
                if (salle != null) {
                    MachineService machineService = new MachineService();
                    List<Machine> machines = findMachinesBySalle(salle);
                    request.setAttribute("machines", machines);
                } else {
                    request.setAttribute("errorMessage", "Salle not found for ID: " + salleId);
                }
            } catch (NumberFormatException e) {
                request.setAttribute("errorMessage", "Invalid Salle ID");
            }
        } else {
            request.setAttribute("errorMessage", "Please select a Salle.");
        }

        request.getRequestDispatcher("Recherche.jsp").forward(request, response);
    }
  
    @Override
    public String getServletInfo() {
        return "Recherche Controller";
    }
}
