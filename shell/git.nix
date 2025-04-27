{pkgs, ...}: {
  programs.git = {
    enable = true;
    userEmail = "raina@kaleidoscope.com";
    userName = "Raina";

    extraConfig.push.autoSetupRemote = true;
  };

  programs.gh.enable = true;
  programs.gh-dash.enable = true;
}
