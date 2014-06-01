BEGIN         { silent = 1 }
/<!--pubs-->/ { silent = 0; next }
              { if(!silent) print }
