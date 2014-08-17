package beans;

import java.util.List;

public class Recipe 
{
public String name;
public String image;
public String description;
//List<String> ingredients;
public String ingredients;

	public Recipe(String pName, String pDescription, String pIngredients, String pImage)
	{
		name = pName;
		description=pDescription;
		ingredients =  pIngredients;     // mParse(pIngredients);
		image = pImage;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	private List<String> mParse(String pIngredients) 
	{
		return null;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getIngredients() {
		return ingredients;
	}

	public void setIngredients(String ingredients) {
		this.ingredients = ingredients;
	}
	

}
