# 🚀 QUICK START GUIDE - Travel Loop Full Stack

## Step 1: Install Backend Dependencies
```bash
cd backend
npm install
```

## Step 2: Configure MongoDB
Make sure MongoDB is running:
- **Local**: Start MongoDB service or use MongoDB Compass
- **Or use MongoDB Atlas**: Update `.env` with your connection string

## Step 3: Configure Environment Variables
Edit `backend/.env`:
```
PORT=5000
MONGODB_URI=mongodb://127.0.0.1:27017/traveloopDB
JWT_SECRET=your_secret_key_change_in_production
NODE_ENV=development
```

## Step 4: Start Backend Server
```bash
npm start
```
✅ Backend running on: http://localhost:5000

## Step 5: Start Frontend
**Option A - Local Server (Recommended):**
- Use VS Code Live Server extension
- Or use: `python -m http.server 8000` (then visit http://localhost:8000)

**Option B - Direct File:**
- Open `index.html` directly in your browser

## 📡 Testing API Connection

1. Open browser console (F12)
2. Visit: `http://localhost:5000/`
3. You should see: "Traveloop Backend is Flying High!"

## 🔗 API Endpoints

- **Auth Routes**: `http://localhost:5000/api/auth/*`
- **Trip Routes**: `http://localhost:5000/api/trips/*`

## 📁 Project Structure

```
backend/              - Node.js/Express API
├── controllers/      - Business logic
├── models/          - MongoDB schemas
├── routes/          - API endpoints
└── index.js         - Server entry point

frontend/            - HTML/CSS/JS website
├── index.html       - Home page
├── dashboard.html   - Dashboard
├── assets/          - CSS, JS, images
└── vendors/         - Bootstrap, FontAwesome
```

## 🛠️ Development Commands

**Backend only:**
```bash
cd backend
npm start
```

**From root (if npm is installed globally):**
```bash
npm start
```

## 📝 Important Files to Update

1. **Connect Frontend to Backend:**
   - Update API calls in frontend JavaScript files
   - Change hardcoded URLs to `http://localhost:5000/api/*`

2. **Database Configuration:**
   - Modify `backend/.env` with your MongoDB connection

3. **Authentication:**
   - Update JWT_SECRET in `.env`
   - Keep it secure in production!

## ⚠️ Common Issues & Solutions

| Issue | Solution |
|-------|----------|
| Backend won't start | Check if MongoDB is running |
| Port 5000 in use | Change PORT in `.env` |
| CORS errors | Backend is running on http://localhost:5000 |
| Can't connect to DB | Verify MongoDB URI in `.env` |

## 🎯 Next Steps

1. ✅ Set up backend
2. ✅ Configure database
3. ✅ Test API endpoints
4. ✅ Connect frontend to backend
5. 🔄 Integrate authentication flow
6. 🔄 Build trip management features
7. 🚀 Deploy to production

## 📞 Support & Documentation

- See `README.md` for detailed documentation
- Check `backend/package.json` for dependencies
- Review controllers for business logic
- Inspect models for database schema

---

**Status**: ✅ Full Stack Integration Complete  
**Ready for**: Development & Testing
