{ pkgs, ...}:

{
  name = "boot";

  machine = { ... }: {
    imports = import ../modules/module-list.nix;
    #config.allowUnfree = true;
    #pkgs.config.allowUnfree = true;
  };

  testScript =
    ''
      $machine->waitForUnit("multi-user.target");
      $machine->shutdown;
    '';
}
