// Import needed model functions
import { getAllCategories } from '../models/categories.js';

// Define controller functions
const showCategoriesPage = async (req, res, next) => {
    try {
        const categories = await getAllCategories();
        const title = 'Service Categories';

        res.render('categories', { title, categories });
    } catch (error) {
        next(error);
    }
};

// Export controller functions
export { showCategoriesPage };