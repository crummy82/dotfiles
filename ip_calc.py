import argparse
from ipaddress import IPv4Address, IPv4Interface, IPv4Network

parser = argparse.ArgumentParser()
parser.add_argument("-a", "--address", help="info about an IP address")
parser.add_argument("-n", "--network", 
                    help="find subnet info. format is X.X.X.X/XX")
parser.add_argument("-d", "--address_details", help="calculate details for an IP with prefix length. Format is X.X.X.X/XX")

args = parser.parse_args()

if args.address and args.network:
    try:
        address = IPv4Address(args.address)
        net = IPv4Network(args.network)
        print(f"{address} is inside of subnet {net}: {address in net}")
    except ValueError:
        print("These are not valid arguments!")


elif args.address:
    try:
        address = IPv4Address(args.address)
        print("Is this IP a loopback address: ", address.is_loopback)
        print("Is this IP a multicast address: ", address.is_multicast)
        print("Is this IP a private address: ", address.is_private)
        print("Is this IP a reserved address: ", address.is_reserved)
    except ValueError:
        print("This is not a valid IP address!")
    

elif args.network:
    try:
        net = IPv4Network(args.network)
        print("Number of host addresses in this network:", net.num_addresses-2)
        print("Prefix length of this network: /", net.prefixlen, sep="")
        print("The subnet mask of this network:", net.netmask)
        print("The network address is:", net.network_address)
        print("The broadcast address is:", net.broadcast_address)
    except ValueError:
        print("This is not a valid subnet!")

elif args.address_details:
    try:
        interface = IPv4Interface(args.address_details)
        print("\nIP address:", interface.ip.exploded)
        print("Subnet mask:", interface.netmask)
        print("Network address:", interface.network.network_address)
        print("Broadcast address:", interface.network.broadcast_address)
        print("First host address:", interface.network.network_address+1)
        print("Last host address:", interface.network.broadcast_address-1, "\n")
    except ValueError:
        print("This is not a valid subnet!")


else:
    print("Error! You need to supply an argument!")
    quit()
    
