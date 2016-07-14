# Overview

This collector is meant to run on a Joyent Triton headnode.

It uses the Triton `cnapi` to return "unreserved" resources for all compute nodes in the Triton deployment. These unreserved shares / resources define how much close your deployment is to capacity.

(Note: The RAM and disk metrics are available via the Triton adminui, but not CPU.)

# Returns

```json
{"gp2|unreserved_cpu": 337}
{"gp2|unreserved_ram": 23178}
{"gp2|unreserved_disk": 1890998}
{"gp1|unreserved_cpu": 375}
{"gp1|unreserved_ram": 26250}
{"gp1|unreserved_disk": 1789551}
{"gp0|unreserved_cpu": 518}
{"gp0|unreserved_ram": 19082}
{"gp0|unreserved_disk": 1552117}
{"headnode|unreserved_cpu": 425}
{"headnode|unreserved_ram": 66186}
{"headnode|unreserved_disk": 1219037}
```
