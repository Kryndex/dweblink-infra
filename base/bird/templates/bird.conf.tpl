log stderr all;

router id ${router_id};

protocol bgp vultr {
  local as ${local_as};
  source address ${source_address};
  import none;
  export all;
  graceful restart on;
  multihop 2;
  neighbor ${neighbor_address} as ${neighbor_as};
  password "${neighbor_password}";
}

protocol device {
  scan time 5;
}

protocol direct {
  interface "${interface}";
  import all;
}
