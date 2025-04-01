{pkgs, ...}: {
  programs.git = {
    enable = true;
    userEmail = "chenganlin990326@gmail.com";
    userName = "Raina";
  };

  programs.gh.enable = true;
  programs.gh-dash.enable = true;
}
