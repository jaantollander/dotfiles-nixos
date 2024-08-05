{ config, pkgs, callPackage }:

{
  fonts.packages = with pkgs; [
    (nerdfonts.override { fonts = [ "Inconsolata" ]; })
  ];

  # links /libexec from derivations to /run/current-system/sw
  environment.pathsToLink = [ "/libexec" ];

  services.xserver = {
    enable = true;

    desktopManager = {
      xterm.enable = false;
    };

    displayManager = {
        defaultSession = "none+i3";
    };

    windowManager.i3 = {
      enable = true;
      extraPackages = with pkgs; [
        rofi
        i3status
        i3lock
     ];
    };
  };

  programs.dconf.enable = true;
}
