# !/bin/sh

for region in 'aws ec2 describe-regions --output text | cut -f3'
do
    echo "\nListing snapshots in region:'$region'..."
    aws ec2 describe-snapshots --region $region > snaps_$region.txt
done