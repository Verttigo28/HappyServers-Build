cd backend
git pull origin main
cd ..
cd frontend
git pull origin main
cd ..
git add backend frontend
git commit -m "Updated submodule references"
git push origin main