dnf update -y
dnf clean all
# if you run this, then git is most likelyy installed
dnf install -y git
# psycopg2 requires pg_config from -devel, gcc and redhat-hardened-cc1 for some reason
dnf install -y postgresql-devel gcc redhat-rpm-config python-devel
# Pillow dependencies until pip reaches 8.1 for manylinux wheels
dnf install -y zlib-devel libjpeg-devel
pip install -r requirements/dev.txt
