USE MealPlanning;

/* a */
SELECT r.RecipeName,
	   r.CookbookName,
	   COUNT(m.IngredientID) AS NumberOfIngredients
FROM Recipe r
JOIN Meal m ON r.RecipeName = m.RecipeName
GROUP BY r.RecipeName, r.CookbookName
ORDER BY NumberOfIngredients, r.RecipeName, r.CookbookName;
/*# RecipeName	CookbookName	NumberOfIngredients
Chicken Stew	Dude Diet	5
Fajitas	Dude Diet	6
Stuffing	Domesticate Me	6
Stir Fry	Dude Diet Dinner	7
*/

/* b */
SELECT 
    Recipe.RecipeName, 
    Recipe.CookbookName
FROM Recipe
WHERE Recipe.RecipeName NOT IN (
    SELECT Meal.RecipeName 
    FROM Meal 
    WHERE Meal.IngredientId IN (
        SELECT Ingredients.Id 
        FROM Ingredients 
        WHERE Ingredients.IngredientName LIKE '%Pepper%'
    )
)
GROUP BY Recipe.RecipeName, Recipe.CookbookName;
/*# RecipeName	CookbookName
Stuffing	Domesticate Me
*/