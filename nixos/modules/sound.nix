{
  hardware.pulseaudio.enable = false;

  security.rtkit.enable = true; # Recommended

  services.pipewire = {
    enable = true;
    alsa.enable = true;       # ALSA support
    alsa.support32Bit = true; # 32-bit apps support
    pulse.enable = true;      # PulseAudio support
    jack.enable = true;       # JACK support
  };
}
