locals {
    policy_data = tolist(jsondecode(data.http.policies.body))
  all_data = flatten([
        for vm in var.vm_list : [
            for policy in local.policy_data : {
            assignmentType = "${policy.assignmentType}"
            config_name = "${policy.config_name}"
            content_hash = "${policy.content_hash}"
            content_uri = "${policy.content_uri}"
            id = "${policy.id}"
            key = "${policy.id}"
            keyed_uri = "${policy.keyed_uri}"
            parameters = "${policy.parameters}"
            }
        ]
    ])
  all_data_map = {
    for data in local.all_data : "${data.vm_name}-${data.config_name}" => data
  }
}
