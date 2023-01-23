# Check status of cluster resources in a remote computer
Get-ClusterResource -Cluster CATHL100NOD04.corp.pbwan.net  | Select-Object Name, State, OwnerGroup, OwnerNode