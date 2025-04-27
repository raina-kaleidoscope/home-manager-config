{ lib, config, pkgs, ... }:

let
  mountDir_gdrive = "${config.home.homeDirectory}/Documents/GoogleDrive";
in {
  home.packages = with pkgs; [
    fuse3
    rclone
    rclone-browser
  ];

  # to view status, `systemctl --user status rclone-mount-gdrive.service`
  # to view errors, `journalctl --user-unit rclone-mount-gdrive.service`
#   systemd.user.services.rclone-mount-gdrive = {
#     Unit = {
#       Description = "Mount Google Drive";
#       After = [ "network-online.target" ];
#       Wants = [ "network-online.target" ];
#     };

#     Service = with pkgs; {
#       ExecStartPre= "/bin/sh -c 'until ${unixtools.ping}/bin/ping -c1 google.com; do ${coreutils}/bin/sleep 1; done;'";
#       ExecStart = ''
#         ${rclone}/bin/rclone mount gdrive: '${mountDir_gdrive}' --vfs-cache-mode writes --allow-non-empty
#         ${coreutils}/bin/ls ${mountDir_gdrive}
#       '';
      
#       ExecStop = ''
#         ${fuse3}/bin/fusermount3 -u '${mountDir_gdrive}'
#       '';
#       Restart = "on-failure";
#     };

#     Install = {
#       WantedBy = [ "default.target" ];
#     };
#   };
}