{ pkgs }: {
    deps = [
      pkgs.nodejs-16_x
      pkgs.tree
      pkgs.q-text-as-data
      pkgs.elmPackages.elm
      pkgs.elmPackages.elm-live
      pkgs.elmPackages.elm-language-server
    ];
}