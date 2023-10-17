terraform force-unlock <lock id>

terraorm plan -chdir=Infrastructure plan

helm repo add eks https://aws.github.io/eks-charts

helm install aws-load-balancer-controller eks/aws-load-balancer-controller --set clusterName=my-eks-201 -n kube-system --set serviceAccount.create=false --set serviceAccount.name=aws-load-balancer-controller

kubectl apply -k "github.com/kubernetes-sigs/aws-ebs-csi-driver/deploy/kubernetes/overlays/stable/?ref=release-1.23"

When we create a cluster, Amazon EKS creates a security group that's named eks-cluster-sg-<cluster-name>-uniqueID. This security group has the following default rules:

Rule type  Protocol	Ports  	Source	      Destination
Inbound     All      All      Self	
Outbound    All      All            0.0.0.0/0 (IPv4) or ::/0 (IPv6)

ab -n100 -c10 'http://k8s-default-mypromet-4f45cf9855-60441221.us-east-1.elb.amazonaws.com/load?scale=100'