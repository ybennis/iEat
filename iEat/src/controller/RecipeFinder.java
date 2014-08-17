package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Array;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.Account;
import beans.ConnectionUtilities;
import beans.Recipe;
import beans.User;

@WebServlet("/ISpy")
public class RecipeFinder extends HttpServlet 
{
	private static final long serialVersionUID = 5197573135108471370L;
	public static String ISPY_link = "/ISpy.jsp";
	public RecipeFinder() {
	super();
	}
	public List<Recipe> mFindRecipe(String pName)
	{
		System.out.println("Recipe searched : " + pName);
		if(pName==null)
		{
			return null;
		}
	
		String sql = "SELECT * FROM webshop.recipe where recipe.name LIKE ?";
			sql += " or recipe.description LIKE ?";
			sql += " or recipe.ingredients LIKE ?";
			Connection conn = ConnectionUtilities.getInstance();
		try 
		{
			PreparedStatement statement = conn.prepareStatement(sql);
			statement.setString(1, "%"+pName+"%");
			statement.setString(2, "%"+pName+"%");
			statement.setString(3, "%"+pName+"%");
			System.out.println("statement : " + statement.toString());
			ResultSet rs = statement.executeQuery();
			//int count = 0;
			List<Recipe> lRecipes = new ArrayList<Recipe>();
			while (rs.next()) 
			{
				String name = rs.getString("name");
				String description = rs.getString("description");
				String ingredients = rs.getString("ingredients");
				String image = rs.getString("image");
				lRecipes.add(new Recipe(name,description,ingredients, image));
			}
			rs.close();
		return lRecipes;
		} 
		catch (SQLException e) 
		{
			e.printStackTrace();
		}		
	   return null;
	}
	
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String action = req.getParameter("action");
		System.out.println("action "+action);

		if (action == "find") {
			req.getRequestDispatcher("/ISpy.jsp").forward(req,
					resp);
		}
	}
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		// use connection
		PrintWriter out = response.getWriter();

		String action = request.getParameter("action");

		System.out.println("action request is "+action);
		if (action == null) {
			out.println("unrecognised action in do post method");
			return;
		}



		if (action.equals("FindRecipe")) {
			String RecipeName = request.getParameter("recipe");
			System.out.println("parameter map : "+request.getParameterMap().toString());
			 Enumeration<String> lHeaderEnum = request.getHeaderNames();
			 while(lHeaderEnum.hasMoreElements())
			 {
				 System.out.println("header : "+lHeaderEnum.nextElement());
			 }
			List<Recipe> recipes = mFindRecipe(RecipeName);

			if (recipes==null || recipes.isEmpty()) 
			{
				request.setAttribute("message",
						"No recipe is found for such criteria "+RecipeName);
			} 
			else 
			{
				request.setAttribute("recipes",
						recipes);
			}
			request.getRequestDispatcher(ISPY_link).forward(
					request, response);

		}else {
			out.println("unknown action " + action.toString());
		}


	}

}
