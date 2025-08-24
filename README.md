# MERN Deployment Project - README

# TaskMaster - Task Management Application

A full-stack MERN (MongoDB, Express.js, React, Node.js) application for managing tasks with user authentication.

## Live Demo

The application is deployed and accessible at: [Your Live Deployment Link Here]

## Features

- User Authentication (Register/Login with JWT)
- Create, Read, Update, and Delete Tasks
- User-specific task management
- Responsive design
- RESTful API architecture

## Tech Stack

- **Frontend**: React, React Router, Context API, Axios
- **Backend**: Node.js, Express.js, JWT Authentication
- **Database**: MongoDB with Mongoose ODM
- **Deployment**: [Specify your deployment platforms - e.g., Netlify/Vercel for frontend, Render/Heroku for backend]

## Project Structure

```
mern-deployment-project/
├── client/                 # React frontend
│   ├── public/
│   ├── src/
│   │   ├── components/     # Reusable UI components
│   │   ├── context/        # React Context for state management
│   │   ├── pages/          # Page components
│   │   └── utils/          # Utility functions and API calls
│   ├── package.json
│   └── ...
├── server/                 # Express backend
│   ├── config/             # Database configuration
│   ├── controllers/        # Route controllers
│   ├── middleware/         # Custom middleware (auth, validation)
│   ├── models/             # MongoDB models
│   ├── routes/             # API routes
│   ├── package.json
│   └── ...
└── README.md
```

## Installation & Setup

### Prerequisites
- Node.js (v14 or higher)
- MongoDB Atlas account or local MongoDB installation
- Git

### Local Development

1. **Clone the repository**
   ```bash
   git clone https://github.com/Sadanki/mern-deployment-project.git
   cd mern-deployment-project
   ```

2. **Backend Setup**
   ```bash
   cd server
   npm install
   ```
   
   - Create a `.env` file in the server directory with:
   ```
   PORT=5000
   MONGODB_URI=your_mongodb_connection_string
   JWT_SECRET=your_jwt_secret_key
   ```

3. **Frontend Setup**
   ```bash
   cd ../client
   npm install
   ```
   
   - Create a `.env` file in the client directory with:
   ```
   REACT_APP_API_BASE_URL=http://localhost:5000
   ```

4. **Run the Application**
   - Start the backend server:
     ```bash
     cd server
     npm run dev
     ```
   - Start the frontend (in a new terminal):
     ```bash
     cd client
     npm start
     ```
   
   The app will be available at `http://localhost:3000`

## Deployment

### Backend Deployment (Example: Render)
1. Push your code to GitHub
2. Connect your repository to Render
3. Set environment variables in Render dashboard
4. Deploy

### Frontend Deployment (Example: Netlify/Vercel)
1. Build the React app: `npm run build`
2. Connect your repository to Netlify/Vercel
3. Set environment variables (REACT_APP_API_BASE_URL to your deployed backend URL)
4. Deploy

## API Endpoints

| Method | Endpoint | Description | Authentication |
|--------|----------|-------------|----------------|
| POST | /api/auth/register | User registration | No |
| POST | /api/auth/login | User login | No |
| GET | /api/tasks | Get all tasks for user | Yes |
| POST | /api/tasks | Create a new task | Yes |
| PUT | /api/tasks/:id | Update a task | Yes |
| DELETE | /api/tasks/:id | Delete a task | Yes |

## Environment Variables

### Server (.env)
- `PORT`: Server port (default: 5000)
- `MONGODB_URI`: MongoDB connection string
- `JWT_SECRET`: Secret key for JWT token generation

### Client (.env)
- `REACT_APP_API_BASE_URL`: Base URL for API requests

## Contributing

1. Fork the repository
2. Create a feature branch: `git checkout -b feature-name`
3. Commit changes: `git commit -m 'Add feature'`
4. Push to the branch: `git push origin feature-name`
5. Submit a pull request

## License

This project is licensed under the MIT License - see the LICENSE file for details.

## Acknowledgments

- Inspired by various task management applications
- Built as a learning project for MERN stack development and deployment

## Contact

For questions or support, please contact:
- GitHub: [Sadanki](https://github.com/Sadanki)
- Email: [Sadanki190@gmail.com]