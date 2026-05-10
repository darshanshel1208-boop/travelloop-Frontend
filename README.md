# Travel Loop - Full Stack Application

A professional full-stack travel portal application with a Node.js/Express backend and HTML/CSS/JS frontend.

## 📁 Project Structure

```
Newtravelloop/
├── frontend/                    # Frontend files (HTML, CSS, JS)
│   ├── index.html              # Home page
│   ├── dashboard.html          # User dashboard
│   ├── create-trip.html        # Trip creation page
│   ├── login.html              # Login page
│   ├── register.html           # Registration page
│   ├── profile.html            # User profile page
│   ├── budget.html             # Budget management
│   ├── itinerary.html          # Trip itinerary
│   ├── packing.html            # Packing checklist
│   ├── community.html          # Community page
│   ├── invoice.html            # Invoice page
│   ├── assets/                 # Frontend assets
│   │   ├── css/                # Stylesheets
│   │   ├── js/                 # JavaScript files
│   │   ├── img/                # Images
│   │   └── video/              # Video files
│   ├── public/                 # Public files
│   └── vendors/                # Third-party libraries
│
├── backend/                    # Backend API (Node.js/Express)
│   ├── index.js               # Main server entry point
│   ├── controllers/           # Business logic
│   │   ├── authController.js  # Authentication logic
│   │   └── tripController.js  # Trip management logic
│   ├── models/                # Database models
│   │   ├── User.js            # User schema
│   │   └── Trip.js            # Trip schema
│   ├── routes/                # API endpoints
│   │   ├── authRoutes.js      # Auth endpoints
│   │   └── tripRoutes.js      # Trip endpoints
│   ├── package.json           # Backend dependencies
│   ├── package-lock.json      # Dependency lock file
│   └── .env                   # Environment variables
│
└── README.md                  # This file
```

## 🚀 Getting Started

### Prerequisites
- **Node.js** (v14 or higher)
- **MongoDB** (running locally or via MongoDB Atlas)
- A modern web browser

### Backend Setup

1. Navigate to the backend folder:
   ```bash
   cd backend
   ```

2. Install dependencies:
   ```bash
   npm install
   ```

3. Configure environment variables in `.env`:
   ```
   PORT=5000
   MONGODB_URI=mongodb://127.0.0.1:27017/traveloopDB
   JWT_SECRET=your_secret_key_here
   ```

4. Start the backend server:
   ```bash
   npm start
   ```
   - The server will run on `http://localhost:5000`
   - Test the backend with: `http://localhost:5000/`

### Frontend Setup

1. Open the frontend in your browser:
   - Simply open `index.html` in your browser, or
   - Use a local server (Live Server, Python, etc.)

2. Connect frontend to backend:
   - Frontend APIs will call `http://localhost:5000/api/*`
   - Update API endpoints in your JavaScript files if needed

## 📡 API Endpoints

### Authentication Routes (`/api/auth`)
- `POST /api/auth/register` - User registration
- `POST /api/auth/login` - User login
- Additional auth endpoints as defined in `authController.js`

### Trip Routes (`/api/trips`)
- Trip management endpoints
- See `tripController.js` for detailed operations

## 🔧 Key Technologies

### Backend
- **Express.js** - Web framework
- **MongoDB** - Database
- **Mongoose** - MongoDB ODM
- **JWT** - Authentication
- **bcryptjs** - Password hashing
- **CORS** - Cross-origin resource sharing

### Frontend
- **HTML5** - Markup
- **CSS3** - Styling (including RTL support)
- **JavaScript** - Interactivity
- **Bootstrap** - CSS framework
- **FontAwesome** - Icons

## 📝 Environment Variables

Create a `.env` file in the `backend` folder with:

```
PORT=5000
MONGODB_URI=mongodb://127.0.0.1:27017/traveloopDB
JWT_SECRET=your_jwt_secret
NODE_ENV=development
```

## 🔐 Security Notes

- Never commit `.env` file to version control
- Keep JWT_SECRET confidential
- Use HTTPS in production
- Implement proper input validation
- Set up proper CORS policies for production

## 📦 Installation & Deployment

For production deployment:
1. Build optimized frontend assets
2. Set up MongoDB Atlas for database
3. Deploy backend to hosting (Heroku, AWS, Azure, etc.)
4. Configure production environment variables
5. Set up CI/CD pipeline

## 🐛 Troubleshooting

**Backend won't start:**
- Ensure MongoDB is running
- Check if port 5000 is available
- Verify `.env` configuration

**Frontend can't connect to backend:**
- Ensure backend is running on port 5000
- Check browser console for CORS errors
- Verify API endpoint URLs in frontend code

**Database connection fails:**
- Ensure MongoDB is running locally or check MongoDB Atlas connection string
- Verify connection string in `.env`

## 📚 File Descriptions

### Controllers
- `authController.js` - Handles user authentication (login, register, JWT)
- `tripController.js` - Manages trip CRUD operations

### Models
- `User.js` - User schema with authentication fields
- `Trip.js` - Trip schema with travel details

### Routes
- `authRoutes.js` - Maps auth endpoints to controllers
- `tripRoutes.js` - Maps trip endpoints to controllers

## ✅ Integration Status

✅ Backend structure properly integrated  
✅ Frontend structure preserved  
✅ Full-stack ready for development  
✅ Database models configured  
✅ Authentication system ready  

---

**Last Updated:** May 2026  
**Version:** 1.0.0
