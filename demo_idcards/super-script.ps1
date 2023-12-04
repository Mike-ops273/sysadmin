echo "starting super-script" 
echo "running a fetch with NodeJS" 
node .\fetchData.js  
echo "extracting data" 
python .\pick_data.py 
echo "writing the data to target csv"  
python .\write_data.py 
echo "super-script done"
echo "ready" 

