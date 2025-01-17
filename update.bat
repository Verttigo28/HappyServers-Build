cd backend
git pull origin master
cd ..
cd frontend
git pull origin master
cd ..
git add backend frontend
git commit -m "Updated submodule references"
git push origin main