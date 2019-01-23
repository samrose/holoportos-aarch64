{ pkgs, ...}:

{
  name = "boot";

  machine = { ... }: {
    imports = import ../modules/module-list.nix;
  };

  testScript =
    ''
      $machine->waitForUnit("multi-user.target");
      $machine->shutdown;
    '';
}
