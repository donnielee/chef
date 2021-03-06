default[:elasticsearch][:version] = "1.7"
default[:elasticsearch][:cluster][:routing][:allocation][:disk][:watermark][:low] = "85%"
default[:elasticsearch][:cluster][:routing][:allocation][:disk][:watermark][:high] = "90%"
default[:elasticsearch][:script][:disable_dynamic] = true
default[:elasticsearch][:path][:data] = "/var/lib/elasticsearch"

default[:apt][:sources] |= ["elasticsearch#{node[:elasticsearch][:version]}"]
