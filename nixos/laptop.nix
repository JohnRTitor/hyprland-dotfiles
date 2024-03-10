{ config, ... }:
{

  # Enable OpenGL
  hardware.opengl = {
	  enable = true; # Mesa
	  driSupport = true; # Vulkan
    driSupport32Bit = true;
    # Extra drivers
    extraPackages = with pkgs; [
      rocmPackages.clr.icd
      amdvlk
      vaapiVdpau
      libvdpau-va-gl
    ];
    # For 32 bit applications 
    extraPackages32 = with pkgs; [
      driversi686Linux.amdvlk
      libva
    ];
  };

  # AMDGPU driver
  services.xserver.videoDrivers = ["amdgpu"];


}