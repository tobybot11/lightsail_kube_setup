

# AWS lightsail k8s setup


## experiments
 * 1st - nano_1_0 (.5Gram too small) - paging.. slow after weave starts ( attempted twice )
 * 2nd - micro_1_0 (1G) .. just about right .. up to weave .. might need more for openstack-helm efforts

v1_create.sh
v1_ssh.sh

You will need your AWS .pem file in this directory


## helpful lightsail commands  .. i always use with jq to refine my json parsing skills
aws lightsail get-bundles
aws lightsail get-instances
