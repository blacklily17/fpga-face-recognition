# Standalone/OOC constraints for wp3_frame_safe_pipeline only.
# The board-level project must replace these clocks with the actual clock-tree
# constraints and must not add this file a second time.
create_clock -name cam_pclk -period 20.000 [get_ports cam_pclk]
create_clock -name aclk     -period 10.000 [get_ports aclk]
set_clock_groups -asynchronous \
    -group [get_clocks cam_pclk] \
    -group [get_clocks aclk]

# Resets are asynchronously asserted and synchronously released in their own
# domains. Recovery/removal is checked at the board-level reset synchronizers.
set_false_path -from [get_ports cam_rst_n]
set_false_path -from [get_ports aresetn]
