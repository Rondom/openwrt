. /lib/functions/system.sh

preinit_set_mac_address() {
	case $(board_name) in
	genexis,pulse-ex400)
		ethaddr=$(get_mac_ascii /dev/ubi0_0 ethaddr)
		ip link set dev wan address $(macaddr_add $ethaddr 1)
		ip link set dev eth0 address $ethaddr
		ip link set dev lan address $ethaddr
		;;
	esac
}

boot_hook_add preinit_main preinit_set_mac_address
