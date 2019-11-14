let show =
          \ ( cronTab
            : ./Type.dhall
            )
      ->  "${cronTab.minute} ${cronTab.hour} ${cronTab.day} ${cronTab.month} ${cronTab.weekday}"

let example0 = assert : show ./default.dhall === "* * * * *"

let example1 =
      assert : show (./default.dhall // { minute = "*/15" }) === "*/15 * * * *"

let example2 =
        assert
      :     show
              { minute = "1"
              , hour = "2"
              , day = "3"
              , month = "4"
              , weekday = "5"
              }
        ===  "1 2 3 4 5"

in  show
