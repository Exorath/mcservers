docker network create mc
docker stop etcd
docker rm etcd
docker run -d -v /usr/share/ca-certificates/:/etc/ssl/certs -p 4001 -p 2380 -p 2379 \
 --net=mc --name etcd quay.io/coreos/etcd \
 -name etcd0 \
 -advertise-client-urls http://etcd:2379,http://etcd:4001 \
 -listen-client-urls http://0.0.0.0:2379,http://0.0.0.0:4001 \
 -initial-advertise-peer-urls http://${HostIP}:2380 \
 -listen-peer-urls http://0.0.0.0:2380 \
 -initial-cluster-token etcd-cluster-1 \
 -initial-cluster etcd0=http://${HostIP}:2380 \
 -initial-cluster-state new
