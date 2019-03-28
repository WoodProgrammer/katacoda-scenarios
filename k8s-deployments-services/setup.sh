cat > /root/.kube/config <<EOF
apiVersion: v1
clusters:
- cluster:
    certificate-authority-data: LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSURDekNDQWZPZ0F3SUJBZ0lRRnYzWVdFcmd5alZpcjYwU0dINWFHekFOQmdrcWhraUc5dzBCQVFzRkFEQXYKTVMwd0t3WURWUVFERXlSa09EUXhORGxtTkMxallXUTVMVFE1Tm1NdE9EQmpZaTAyWm1Zd1l6Sm1PRGd3WlRRdwpIaGNOTVRrd016STRNVGt4T0RNMldoY05NalF3TXpJMk1qQXhPRE0yV2pBdk1TMHdLd1lEVlFRREV5UmtPRFF4Ck5EbG1OQzFqWVdRNUxUUTVObU10T0RCallpMDJabVl3WXpKbU9EZ3daVFF3Z2dFaU1BMEdDU3FHU0liM0RRRUIKQVFVQUE0SUJEd0F3Z2dFS0FvSUJBUUMwK1hmSjB4c1RpRWt6MCtjQk83NE1zdnlqeUgrTUFxQkZDY0tCcUdTZApwVFhqY1hjdnp1bmZWNVp4UHVPakRxM0RGVlN3UWl0c1dhTUZ0YzNkakFpdWVBK3JkelNLV1BRRHFsS0J1WnFrCnZlZHRYM0NsMzdxcEVUbWd5UEE5QWZtaGF6TjFISXRwSHR4TFpCNmVwWVRFbllaRjY3UnVSRjduUWdBeFE3dlkKSlphR1BwV1d0YWFGVEFrNm95eFByMUY3eDlmSXlpa1Z3OFNZSlRUa1RtYWZtQmNacUNKczU3MDJEckRFR0tNaQo5OGFiZkVtS3BXRUpScmM0SzlMcFVpakpNSTJaejJjUzYyTEZBR210dkNWSEFxVnZRbDF0aUVnRThxV1VRNWVYCk1tc01LWFFWdHdWYTBPZy8zTUFGbSt1UHBZNVJnVHlCay8zMmEraUIvb3MxQWdNQkFBR2pJekFoTUE0R0ExVWQKRHdFQi93UUVBd0lDQkRBUEJnTlZIUk1CQWY4RUJUQURBUUgvTUEwR0NTcUdTSWIzRFFFQkN3VUFBNElCQVFCcApvRlR3UVJpRk1IRnJCOXNDVnBYaW51VmVuQmpuNVUvaGtrZ3NmU01UQ0NqUnVWRnVjRzdhc3VhanMyK3YybTNQCitqNFVyWlhrWUxIbEZGQnVIeWRlRWVNY3gwNDVqQ1Bld1hJNStWN0hiTVZJOStmR0crQjBiaWpxUE5JMGUrQW4KNi9VTkp3OUpCYjBlV0lIWHNwRlpwQVErdzJoRUFMWEt6SEdPdmdCVWFmZE5JTnBUODFrTEpVTHlGYU00SDdXRAo0Z2hQY0NDUlFoeGVwcTZseEVrTW96UGIxMTBxSTlYaFZnWVhpeUJZeHZqWnFxeHRBM3ZMenJUTTVGZEhMVVBxClQzeCtOZXBodVF0S002ZG5tbnJ1S3dTWTdteEVESDB4dEJVdC9RY2hQbEt3ODdmb3hKMG5VRkpZNUNzNWdxaGUKT1NOazJqcjdDNjJxRmJOZENZRGsKLS0tLS1FTkQgQ0VSVElGSUNBVEUtLS0tLQo=
    server: https://35.195.82.140
  name: k8s-dojo
contexts:
- context:
    cluster: k8s-dojo
    user: admin
  name: k8s-dojo
current-context: k8s-dojo
kind: Config
preferences: {}
users:
- name: admin
  user:
    password: s1aqing4wqeCDyaU
    username: admin
EOF