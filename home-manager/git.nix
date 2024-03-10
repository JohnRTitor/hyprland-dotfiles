let
  email = "50095635+JohnRTitor@users.noreply.github.com";
  name = "Masum Reza";
in {
  programs.git = {
    enable = true;
    extraConfig = {
      color.ui = true;
      core.editor = "nano";
      credential.helper = "store";
      github.user = name;
      push.autoSetupRemote = true;
    };
    userEmail = email;
    userName = name;
  };
}
