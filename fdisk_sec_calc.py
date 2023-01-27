# swap_bytes = 2 * 1024 * 1024 * 1024
# hdr_bytes = X * 1024

# sector_size = 512
# part_sectors = (swap_bytes + hdr_bytes) / sector_size
sector_size = 512 #int(input('Sektorgrösse: '))
sector_count= 41943039 #int(input('Anzahl Sektoren: '))
x = 1024

hdd_size = round(sector_size*sector_count)
print(hdd_size, ' B')
# kb = round(hdd_size/x)
# print(kb, ' KB')
# mb = round(hdd_size/x/x)
# print(mb, ' MB')
gb = (hdd_size/x/x/x)
print(gb, ' GB')
# tb = round(hdd_size/x/x/x/x)
# print(tb, ' TB')
# pb = round(hdd_size/x/x/x/x/x)
# print(pb, ' PB')
# eb = round(hdd_size/x/x/x/x/x/x)
# print(eb, ' EB')




# Bit 	Single Binary Digit (1 or 0)
# Byte 	8 bits
# Kilobyte (KB) 	1,024 Bytes
# Megabyte (MB) 	1,024 Kilobytes
# Gigabyte (GB) 	1,024 Megabytes
# Terabyte (TB) 	1,024 Gigabytes
# Petabyte (PB) 	1,024 Terabytes
# Exabyte (EB) 	1,024 Petabyte

###41943039