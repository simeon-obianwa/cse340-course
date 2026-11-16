// Define controller functions
const showHomePage = async (req, res, next) => {
    try {
        const title = 'Home';
        res.render('home', { title });
    } catch (error) {
        next(error);
    }
};

// Export controller functions
export { showHomePage };