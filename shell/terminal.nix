{pkgs, ...}: {
    programs.kitty.enable = true;
    programs.kitty.themeFile = "gruvbox-dark-hard";
    programs.kitty.package = pkgs.writeShellScriptBin "kitty" ''
        ${pkgs.nixgl.nixGLIntel}/bin/nixGLIntel ${pkgs.kitty}/bin/kitty "$@"
    '';
}
