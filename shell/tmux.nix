{pkgs, ...}: {
  programs.tmux.enable = true;
  programs.tmux.prefix = "C-a";
  programs.tmux.plugins = with pkgs.tmuxPlugins; [
    {
	plugin = gruvbox;
	extraConfig = ''
	  run ${gruvbox}/tmux-gruvbox.nix
	  set -g @tmux-gruvbox 'dark'
	'';
    }
  ]; 
}
