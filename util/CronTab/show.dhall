let show =
          \ ( cronTab
            :   ./Type.dhall sha256:96d534737ce8212a4ba983e3477d2b3f797532ac553725713f59d80bdb300e4a
              ? ./Type.dhall
            )
      ->  "${cronTab.minute} ${cronTab.hour} ${cronTab.day} ${cronTab.month} ${cronTab.weekday}"

let example0 =
        assert
      :     show
              (   ./default.dhall sha256:a2e2d1f18e5cde460286340094277234b3d9e111334fe9becdc42f06ea7c2fe1
                ? ./default.dhall
              )
        ===  "* * * * *"

let example1 =
        assert
      :     show
              (     (   ./default.dhall sha256:a2e2d1f18e5cde460286340094277234b3d9e111334fe9becdc42f06ea7c2fe1
                      ? ./default.dhall
                    )
                //  { minute = "*/15" }
              )
        ===  "*/15 * * * *"

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
