# Download nginx
```bash
cd $OPENSHIFT_TMP_DIR
wget http://nginx.org/download/nginx-1.6.0.tar.gz
tar zxf nginx-1.6.0.tar.gz
```

# Download pcre
```bash
wget ftp://ftp.csx.cam.ac.uk/pub/software/programming/pcre/pcre-8.35.tar.bz2
tar jxf pcre-8.35.tar.bz2
```

# Install nginx
```bash
cd nginx-1.6.0
./configure --prefix=$OPENSHIFT_DATA_DIR --with-pcre=$OPENSHIFT_TMP_DIR/pcre-8.35
make install
```