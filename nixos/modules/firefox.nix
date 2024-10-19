{
  programs.firefox = {
    enable = true;

    policies = {
      AutofillCreditCardEnabled = false;
      DisableFirefoxAccounts = true;
      DisableFirefoxStudies = true;
      DisablePocket = true;
      DisableSetDesktopBackground = true;
      DisableTelemetry = true;
      HardwareAcceleration = true;
      HttpsOnlyMode = true;

      Permissions = {
        Camera = {
          BlockNewRequests = true;
        };
        Microphone = {
          BlockNewRequests = true;
        };
        Location = {
          BlockNewRequests = true;
        };
        Notifications = {
          BlockNewRequests = true;
        };
        Autoplay = {
          Default = "block-audio-video";
        };
      };

      PopupBlocking = {
        Default = true;
      };

      PromptForDownloadLocation = true;
      # TranslateEnabled = false;
    };
  };
}
