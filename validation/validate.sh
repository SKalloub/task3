if docker exec clientside yum list installed | grep httpd; then
  echo "Installed successfully"
else
  echo "Not installed"
fi
