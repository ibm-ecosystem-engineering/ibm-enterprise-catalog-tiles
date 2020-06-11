
data ibm_resource_group tools_resource_group {
  name = "${var.Resource_group}"
}

locals {
  role              = "Writer"
  cos_role              = "Manager"
  name_prefix       = "${var.Name_prefix != "" ? var.Name_prefix : var.Resource_group}"
  resource_location = "${var.Region}"
}


// AppID - App Authentication

resource "ibm_resource_instance" "appid_instance" {
  name              = "${replace(local.name_prefix, "/[^a-zA-Z0-9_\\-\\.]/", "")}-appid"
  service           = "appid"
  resource_group_id = "${data.ibm_resource_group.tools_resource_group.id}"
  location          = "${local.resource_location}"
  plan              = "${var.AppId_plan}"

  timeouts {
    create = "15m"
    update = "15m"
    delete = "15m"
  } 
}
resource "ibm_resource_key" "appid_key" {
  name                 = "${ibm_resource_instance.appid_instance.name}-key"
  role                 = "${local.role}"
  resource_instance_id = "${ibm_resource_instance.appid_instance.id}"

  timeouts {
    create = "15m"
    delete = "15m"
  }
}

resource "ibm_container_bind_service" "appid_service_binding" {
  
  cluster_name_id       = "${var.Cluster_id}"
  namespace_id          = "${var.Namespaces}"
  key                   = "${ibm_resource_key.appid_key.name}"
  service_instance_name = "${ibm_resource_instance.appid_instance.name}"
  resource_group_id     = "${data.ibm_resource_group.tools_resource_group.id}"

}

// Cloudant - Database

resource "ibm_resource_instance" "cloudant_instance" {
  name              = "${replace(local.name_prefix, "/[^a-zA-Z0-9_\\-\\.]/", "")}-cloudant"
  service           = "cloudantnosqldb"
  plan              = "${var.Plan}"
  location          = "${local.resource_location}"
  resource_group_id = "${data.ibm_resource_group.tools_resource_group.id}"
  

  timeouts {
    create = "15m"
    update = "15m"
    delete = "15m"
  }
}
resource "ibm_resource_key" "cloudant_key" {
  name                 = "${ibm_resource_instance.cloudant_instance.name}-key"
  role                 = "${local.cos_role}"
  resource_instance_id = "${ibm_resource_instance.cloudant_instance.id}"

  //User can increase timeouts
  timeouts {
    create = "15m"
    delete = "15m"
  }
}

resource "ibm_container_bind_service" "cloudant_binding" {
  cluster_name_id       = "${var.Cluster_id}"
  service_instance_name = "${ibm_resource_instance.cloudant_instance.name}"
  namespace_id          = "${var.Namespaces}"
  resource_group_id     = "${data.ibm_resource_group.tools_resource_group.id}"
  key                   = "${ibm_resource_key.cloudant_key.name}"
}


// COS Cloud Object Storage

resource "ibm_resource_instance" "cos_instance" {
  name              = "${replace(local.name_prefix, "/[^a-zA-Z0-9_\\-\\.]/", "")}-cos"
  service           = "cloud-object-storage"
  plan              = "${var.Plan}"
  location          = "${local.resource_location!="global" ? "global":"global"}"
  resource_group_id = "${data.ibm_resource_group.tools_resource_group.id}"
  

  timeouts {
    create = "15m"
    update = "15m"
    delete = "15m"
  }
}
resource "ibm_resource_key" "cos_credentials" {
  name                 = "${ibm_resource_instance.cos_instance.name}-key"
  role                 = "${local.cos_role}"
  resource_instance_id = "${ibm_resource_instance.cos_instance.id}"

  //User can increase timeouts
  timeouts {
    create = "15m"
    delete = "15m"
  }
}

resource "ibm_container_bind_service" "cos_binding" {
  cluster_name_id       = "${var.Cluster_id}"
  service_instance_name = "${ibm_resource_instance.cos_instance.name}"
  namespace_id          = "${var.Namespaces}"
  resource_group_id     = "${data.ibm_resource_group.tools_resource_group.id}"
  key                   = "${ibm_resource_key.cos_credentials.name}"
}