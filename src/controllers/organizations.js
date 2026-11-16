// Import needed model functions
import { getAllOrganizations } from '../models/organizations.js';

// Define controller functions
const showOrganizationsPage = async (req, res, next) => {
    try {
        const organizations = await getAllOrganizations();
        const title = 'Our Partner Organizations';

        res.render('organizations', { title, organizations });
    } catch (error) {
        next(error);
    }
};

// Export controller functions
export { showOrganizationsPage };