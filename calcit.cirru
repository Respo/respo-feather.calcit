
{} (:package |feather)
  :configs $ {} (:compact-output? true) (:extension |.cljs) (:init-fn |feather.main/main!) (:output |src) (:port 6001) (:reload-fn |feather.main/reload!) (:storage-key |calcit.cirru) (:version |0.3.0-a3)
    :modules $ [] |respo.calcit/compact.cirru |lilac/compact.cirru |memof/compact.cirru |respo-ui.calcit/compact.cirru |respo-markdown.calcit/compact.cirru |reel.calcit/compact.cirru
  :entries $ {}
  :files $ {}
    |feather.comp.container $ %{} :FileEntry
      :defs $ {}
        |comp-container $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1499755354983) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |defcomp)
              |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |comp-container)
              |r $ %{} :Expr (:at 1499755354983) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1507461830530) (:by |root) (:text |reel)
              |v $ %{} :Expr (:at 1507461832154) (:by |root)
                :data $ {}
                  |D $ %{} :Leaf (:at 1507461833421) (:by |root) (:text |let)
                  |L $ %{} :Expr (:at 1507461834351) (:by |root)
                    :data $ {}
                      |T $ %{} :Expr (:at 1507461834650) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1507461835738) (:by |root) (:text |store)
                          |j $ %{} :Expr (:at 1507461836110) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1507461837276) (:by |root) (:text |:store)
                              |j $ %{} :Leaf (:at 1507461838285) (:by |root) (:text |reel)
                      |j $ %{} :Expr (:at 1509727104820) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1509727105928) (:by |root) (:text |states)
                          |j $ %{} :Expr (:at 1509727106316) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1509727107223) (:by |root) (:text |:states)
                              |j $ %{} :Leaf (:at 1509727108033) (:by |root) (:text |store)
                      |n $ %{} :Expr (:at 1584780921790) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1584780923771) (:by |rJG4IHzWf) (:text |cursor)
                          |j $ %{} :Expr (:at 1584780991636) (:by |rJG4IHzWf)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1610793422595) (:by |rJG4IHzWf) (:text |either)
                              |T $ %{} :Expr (:at 1584780923944) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1584780925829) (:by |rJG4IHzWf) (:text |:cursor)
                                  |j $ %{} :Leaf (:at 1584780926681) (:by |rJG4IHzWf) (:text |states)
                              |j $ %{} :Expr (:at 1584780993270) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1584780994497) (:by |rJG4IHzWf) (:text |[])
                      |r $ %{} :Expr (:at 1584780887905) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1584780889620) (:by |rJG4IHzWf) (:text |state)
                          |j $ %{} :Expr (:at 1584780889933) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1610793424867) (:by |rJG4IHzWf) (:text |either)
                              |j $ %{} :Expr (:at 1584780894090) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1584780894689) (:by |rJG4IHzWf) (:text |:data)
                                  |j $ %{} :Leaf (:at 1584780900314) (:by |rJG4IHzWf) (:text |states)
                              |r $ %{} :Expr (:at 1584780901014) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1584780901408) (:by |rJG4IHzWf) (:text |{})
                                  |j $ %{} :Expr (:at 1584780901741) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1584780906050) (:by |rJG4IHzWf) (:text |:content)
                                      |j $ %{} :Leaf (:at 1584780907617) (:by |rJG4IHzWf) (:text "|\"")
                      |v $ %{} :Expr (:at 1615656188570) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1615656188570) (:by |rJG4IHzWf) (:text |icons)
                          |j $ %{} :Expr (:at 1615656188570) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1615656404906) (:by |rJG4IHzWf) (:text |to-calcit-data)
                              |j $ %{} :Expr (:at 1615656188570) (:by |rJG4IHzWf)
                                :data $ {}
                                  |j $ %{} :Leaf (:at 1646938659209) (:by |rJG4IHzWf) (:text |js/Object.keys)
                                  |r $ %{} :Expr (:at 1615656188570) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1615656188570) (:by |rJG4IHzWf) (:text |.-icons)
                                      |j $ %{} :Leaf (:at 1621359726176) (:by |rJG4IHzWf) (:text |feather-icons)
                  |T $ %{} :Expr (:at 1615655674660) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1615655674660) (:by |rJG4IHzWf) (:text |div)
                      |j $ %{} :Expr (:at 1615655674660) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1615655674660) (:by |rJG4IHzWf) (:text |{})
                          |j $ %{} :Expr (:at 1615655674660) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1675007289969) (:by |rJG4IHzWf) (:text |:class-name)
                              |j $ %{} :Expr (:at 1615655674660) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1675007293614) (:by |rJG4IHzWf) (:text |str-spaced)
                                  |j $ %{} :Leaf (:at 1675007295694) (:by |rJG4IHzWf) (:text |css/global)
                                  |r $ %{} :Leaf (:at 1675007299815) (:by |rJG4IHzWf) (:text |css/fullscreen)
                      |r $ %{} :Expr (:at 1615655674660) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1615655674660) (:by |rJG4IHzWf) (:text |if)
                          |j $ %{} :Expr (:at 1615655674660) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1615655674660) (:by |rJG4IHzWf) (:text |some?)
                              |j $ %{} :Expr (:at 1615655674660) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1615655674660) (:by |rJG4IHzWf) (:text |:icon)
                                  |j $ %{} :Leaf (:at 1615655674660) (:by |rJG4IHzWf) (:text |store)
                          |r $ %{} :Expr (:at 1615655674660) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1615655674660) (:by |rJG4IHzWf) (:text |div)
                              |j $ %{} :Expr (:at 1615655674660) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1615655674660) (:by |rJG4IHzWf) (:text |{})
                                  |j $ %{} :Expr (:at 1615655674660) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1615655674660) (:by |rJG4IHzWf) (:text |:style)
                                      |j $ %{} :Expr (:at 1615655674660) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1615655674660) (:by |rJG4IHzWf) (:text |merge)
                                          |j $ %{} :Leaf (:at 1615655674660) (:by |rJG4IHzWf) (:text |ui/row-center)
                                          |r $ %{} :Expr (:at 1615655674660) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1615655674660) (:by |rJG4IHzWf) (:text |{})
                                              |j $ %{} :Expr (:at 1615655674660) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1615655674660) (:by |rJG4IHzWf) (:text |:padding)
                                                  |j $ %{} :Leaf (:at 1615655674660) (:by |rJG4IHzWf) (:text "|\"16px")
                                              |r $ %{} :Expr (:at 1615655674660) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1615655674660) (:by |rJG4IHzWf) (:text |:position)
                                                  |j $ %{} :Leaf (:at 1615655674660) (:by |rJG4IHzWf) (:text |:fixed)
                                              |v $ %{} :Expr (:at 1615655674660) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1615655674660) (:by |rJG4IHzWf) (:text |:top)
                                                  |j $ %{} :Leaf (:at 1615655674660) (:by |rJG4IHzWf) (:text |0)
                                              |x $ %{} :Expr (:at 1615655674660) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1615655674660) (:by |rJG4IHzWf) (:text |:width)
                                                  |j $ %{} :Leaf (:at 1615655674660) (:by |rJG4IHzWf) (:text "|\"100%")
                                              |y $ %{} :Expr (:at 1615655674660) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1615655674660) (:by |rJG4IHzWf) (:text |:background-color)
                                                  |j $ %{} :Expr (:at 1615655674660) (:by |rJG4IHzWf)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1615655674660) (:by |rJG4IHzWf) (:text |hsl)
                                                      |j $ %{} :Leaf (:at 1615655674660) (:by |rJG4IHzWf) (:text |0)
                                                      |r $ %{} :Leaf (:at 1615655674660) (:by |rJG4IHzWf) (:text |0)
                                                      |v $ %{} :Leaf (:at 1615655674660) (:by |rJG4IHzWf) (:text |100)
                                                      |x $ %{} :Leaf (:at 1615655674660) (:by |rJG4IHzWf) (:text |0.8)
                                              |yT $ %{} :Expr (:at 1615655674660) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1615655674660) (:by |rJG4IHzWf) (:text |:border-bottom)
                                                  |j $ %{} :Expr (:at 1615655674660) (:by |rJG4IHzWf)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1615655674660) (:by |rJG4IHzWf) (:text |str)
                                                      |j $ %{} :Leaf (:at 1615655674660) (:by |rJG4IHzWf) (:text "|\"1px solid ")
                                                      |r $ %{} :Expr (:at 1615655674660) (:by |rJG4IHzWf)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1615655674660) (:by |rJG4IHzWf) (:text |hsl)
                                                          |j $ %{} :Leaf (:at 1615655674660) (:by |rJG4IHzWf) (:text |0)
                                                          |r $ %{} :Leaf (:at 1615655674660) (:by |rJG4IHzWf) (:text |0)
                                                          |v $ %{} :Leaf (:at 1615655674660) (:by |rJG4IHzWf) (:text |92)
                              |r $ %{} :Expr (:at 1615655674660) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1615655674660) (:by |rJG4IHzWf) (:text |<>)
                                  |j $ %{} :Expr (:at 1615655674660) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1615655674660) (:by |rJG4IHzWf) (:text |str)
                                      |j $ %{} :Leaf (:at 1615655674660) (:by |rJG4IHzWf) (:text "|\"Copied ")
                                      |r $ %{} :Leaf (:at 1615655674660) (:by |rJG4IHzWf) (:text "|\":")
                                      |v $ %{} :Expr (:at 1615655674660) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1615655674660) (:by |rJG4IHzWf) (:text |:icon)
                                          |j $ %{} :Leaf (:at 1615655674660) (:by |rJG4IHzWf) (:text |store)
                              |v $ %{} :Expr (:at 1615655674660) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1615655674660) (:by |rJG4IHzWf) (:text |=<)
                                  |j $ %{} :Leaf (:at 1615655674660) (:by |rJG4IHzWf) (:text |16)
                                  |r $ %{} :Leaf (:at 1615655674660) (:by |rJG4IHzWf) (:text |nil)
                              |x $ %{} :Expr (:at 1615655674660) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1615655674660) (:by |rJG4IHzWf) (:text |comp-i)
                                  |j $ %{} :Expr (:at 1615655674660) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1615655674660) (:by |rJG4IHzWf) (:text |str)
                                      |j $ %{} :Expr (:at 1615655674660) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1615655674660) (:by |rJG4IHzWf) (:text |:icon)
                                          |j $ %{} :Leaf (:at 1615655674660) (:by |rJG4IHzWf) (:text |store)
                                  |r $ %{} :Leaf (:at 1615655674660) (:by |rJG4IHzWf) (:text |40)
                                  |v $ %{} :Leaf (:at 1615655674660) (:by |rJG4IHzWf) (:text "|\"black")
                      |v $ %{} :Expr (:at 1615655674660) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1675007630594) (:by |rJG4IHzWf) (:text |list->)
                          |j $ %{} :Expr (:at 1615655674660) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1615655674660) (:by |rJG4IHzWf) (:text |{})
                              |j $ %{} :Expr (:at 1615655674660) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1615655674660) (:by |rJG4IHzWf) (:text |:style)
                                  |j $ %{} :Expr (:at 1615655674660) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1615655674660) (:by |rJG4IHzWf) (:text |{})
                                      |j $ %{} :Expr (:at 1615655674660) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1615655674660) (:by |rJG4IHzWf) (:text |:width)
                                          |j $ %{} :Leaf (:at 1615655674660) (:by |rJG4IHzWf) (:text "|\"100%")
                                      |r $ %{} :Expr (:at 1615655674660) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1615655674660) (:by |rJG4IHzWf) (:text |:padding)
                                          |j $ %{} :Leaf (:at 1615655674660) (:by |rJG4IHzWf) (:text |16)
                                      |v $ %{} :Expr (:at 1615655674660) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1615655674660) (:by |rJG4IHzWf) (:text |:overflow)
                                          |j $ %{} :Leaf (:at 1615655674660) (:by |rJG4IHzWf) (:text |:auto)
                                      |x $ %{} :Expr (:at 1615655674660) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1615655674660) (:by |rJG4IHzWf) (:text |:margin-top)
                                          |j $ %{} :Leaf (:at 1615655674660) (:by |rJG4IHzWf) (:text |80)
                          |r $ %{} :Expr (:at 1615655674660) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1619600699080) (:by |rJG4IHzWf) (:text |->)
                              |j $ %{} :Leaf (:at 1615656390578) (:by |rJG4IHzWf) (:text |icons)
                              |r $ %{} :Expr (:at 1615655674660) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1615655674660) (:by |rJG4IHzWf) (:text |map)
                                  |j $ %{} :Expr (:at 1615655674660) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1615655674660) (:by |rJG4IHzWf) (:text |fn)
                                      |j $ %{} :Expr (:at 1615655674660) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1615655674660) (:by |rJG4IHzWf) (:text |icon)
                                      |r $ %{} :Expr (:at 1675007624484) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |D $ %{} :Leaf (:at 1675007625379) (:by |rJG4IHzWf) (:text |[])
                                          |L $ %{} :Leaf (:at 1675007626513) (:by |rJG4IHzWf) (:text |icon)
                                          |P $ %{} :Expr (:at 1675007712852) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1675007712308) (:by |rJG4IHzWf) (:text |memof1-call-by)
                                              |b $ %{} :Leaf (:at 1675007721603) (:by |rJG4IHzWf) (:text |icon)
                                              |h $ %{} :Leaf (:at 1675007804248) (:by |rJG4IHzWf) (:text |comp-icon-demo)
                                              |l $ %{} :Leaf (:at 1675007742578) (:by |rJG4IHzWf) (:text |icon)
                                              |o $ %{} :Expr (:at 1675007767520) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1675007767520) (:by |rJG4IHzWf) (:text |=)
                                                  |b $ %{} :Leaf (:at 1675007767520) (:by |rJG4IHzWf) (:text |icon)
                                                  |h $ %{} :Expr (:at 1675007767520) (:by |rJG4IHzWf)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1675007767520) (:by |rJG4IHzWf) (:text |:icon)
                                                      |b $ %{} :Leaf (:at 1675007767520) (:by |rJG4IHzWf) (:text |store)
                      |x $ %{} :Expr (:at 1615655674660) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1615655674660) (:by |rJG4IHzWf) (:text |when)
                          |j $ %{} :Leaf (:at 1615655674660) (:by |rJG4IHzWf) (:text |dev?)
                          |r $ %{} :Expr (:at 1615655674660) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1615655674660) (:by |rJG4IHzWf) (:text |comp-reel)
                              |j $ %{} :Expr (:at 1615655674660) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1615655674660) (:by |rJG4IHzWf) (:text |>>)
                                  |j $ %{} :Leaf (:at 1615655674660) (:by |rJG4IHzWf) (:text |states)
                                  |r $ %{} :Leaf (:at 1615655674660) (:by |rJG4IHzWf) (:text |:reel)
                              |r $ %{} :Leaf (:at 1615655674660) (:by |rJG4IHzWf) (:text |reel)
                              |v $ %{} :Expr (:at 1615655674660) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1615655674660) (:by |rJG4IHzWf) (:text |{})
        |comp-icon-demo $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1675007745480) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1675007746506) (:by |rJG4IHzWf) (:text |defcomp)
              |b $ %{} :Leaf (:at 1675007812360) (:by |rJG4IHzWf) (:text |comp-icon-demo)
              |h $ %{} :Expr (:at 1675007745480) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1675007749028) (:by |rJG4IHzWf) (:text |icon)
                  |b $ %{} :Leaf (:at 1675007765447) (:by |rJG4IHzWf) (:text |selected?)
              |l $ %{} :Expr (:at 1675007749796) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1675007749796) (:by |rJG4IHzWf) (:text |div)
                  |b $ %{} :Expr (:at 1675007749796) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1675007749796) (:by |rJG4IHzWf) (:text |{})
                      |b $ %{} :Expr (:at 1675007749796) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1675007749796) (:by |rJG4IHzWf) (:text |:class-name)
                          |b $ %{} :Expr (:at 1675007749796) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1675007749796) (:by |rJG4IHzWf) (:text |str-spaced)
                              |b $ %{} :Leaf (:at 1675007749796) (:by |rJG4IHzWf) (:text |css/center)
                              |h $ %{} :Leaf (:at 1675007749796) (:by |rJG4IHzWf) (:text |css-cell)
                      |h $ %{} :Expr (:at 1675007749796) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1675007749796) (:by |rJG4IHzWf) (:text |:style)
                          |b $ %{} :Expr (:at 1675007749796) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1675007749796) (:by |rJG4IHzWf) (:text |if)
                              |a $ %{} :Leaf (:at 1675007762936) (:by |rJG4IHzWf) (:text |selected?)
                              |h $ %{} :Expr (:at 1675007749796) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1675007749796) (:by |rJG4IHzWf) (:text |{})
                                  |b $ %{} :Expr (:at 1675007749796) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1675007749796) (:by |rJG4IHzWf) (:text |:background-color)
                                      |b $ %{} :Expr (:at 1675007749796) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1675007749796) (:by |rJG4IHzWf) (:text |hsl)
                                          |b $ %{} :Leaf (:at 1675007749796) (:by |rJG4IHzWf) (:text |0)
                                          |h $ %{} :Leaf (:at 1675007749796) (:by |rJG4IHzWf) (:text |0)
                                          |l $ %{} :Leaf (:at 1675007749796) (:by |rJG4IHzWf) (:text |95)
                                  |h $ %{} :Expr (:at 1675007749796) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1675007749796) (:by |rJG4IHzWf) (:text |:outline)
                                      |b $ %{} :Expr (:at 1675007749796) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1675007749796) (:by |rJG4IHzWf) (:text |str)
                                          |b $ %{} :Leaf (:at 1675007749796) (:by |rJG4IHzWf) (:text "|\"1px solid ")
                                          |h $ %{} :Expr (:at 1675007749796) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1675007749796) (:by |rJG4IHzWf) (:text |hsl)
                                              |b $ %{} :Leaf (:at 1675007749796) (:by |rJG4IHzWf) (:text |200)
                                              |h $ %{} :Leaf (:at 1675007749796) (:by |rJG4IHzWf) (:text |90)
                                              |l $ %{} :Leaf (:at 1675007749796) (:by |rJG4IHzWf) (:text |89)
                                  |l $ %{} :Expr (:at 1675007749796) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1675007749796) (:by |rJG4IHzWf) (:text |:z-index)
                                      |b $ %{} :Leaf (:at 1675007749796) (:by |rJG4IHzWf) (:text |999)
                      |l $ %{} :Expr (:at 1675007749796) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1675007749796) (:by |rJG4IHzWf) (:text |:on-click)
                          |b $ %{} :Expr (:at 1675007749796) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1675007749796) (:by |rJG4IHzWf) (:text |fn)
                              |b $ %{} :Expr (:at 1675007749796) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1675007749796) (:by |rJG4IHzWf) (:text |event)
                                  |b $ %{} :Leaf (:at 1675007749796) (:by |rJG4IHzWf) (:text |d!)
                              |h $ %{} :Expr (:at 1675007749796) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1675007749796) (:by |rJG4IHzWf) (:text |copy!)
                                  |b $ %{} :Expr (:at 1675007749796) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1675007749796) (:by |rJG4IHzWf) (:text |str)
                                      |b $ %{} :Leaf (:at 1675007749796) (:by |rJG4IHzWf) (:text "|\":")
                                      |h $ %{} :Leaf (:at 1675007749796) (:by |rJG4IHzWf) (:text |icon)
                              |l $ %{} :Expr (:at 1675007749796) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1675007749796) (:by |rJG4IHzWf) (:text |d!)
                                  |b $ %{} :Leaf (:at 1675007749796) (:by |rJG4IHzWf) (:text |:exhibit)
                                  |h $ %{} :Leaf (:at 1675007749796) (:by |rJG4IHzWf) (:text |icon)
                  |h $ %{} :Expr (:at 1675007749796) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1675007749796) (:by |rJG4IHzWf) (:text |comp-icon)
                      |b $ %{} :Leaf (:at 1675007749796) (:by |rJG4IHzWf) (:text |icon)
                      |h $ %{} :Expr (:at 1675007749796) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1675007749796) (:by |rJG4IHzWf) (:text |{})
                          |b $ %{} :Expr (:at 1675007749796) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1675007749796) (:by |rJG4IHzWf) (:text |:font-size)
                              |b $ %{} :Leaf (:at 1675007749796) (:by |rJG4IHzWf) (:text |24)
                          |h $ %{} :Expr (:at 1675007749796) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1675007749796) (:by |rJG4IHzWf) (:text |:color)
                              |b $ %{} :Expr (:at 1675007749796) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1675007749796) (:by |rJG4IHzWf) (:text |hsl)
                                  |b $ %{} :Leaf (:at 1675007749796) (:by |rJG4IHzWf) (:text |200)
                                  |h $ %{} :Leaf (:at 1675007749796) (:by |rJG4IHzWf) (:text |80)
                                  |l $ %{} :Leaf (:at 1675007749796) (:by |rJG4IHzWf) (:text |60)
                      |l $ %{} :Leaf (:at 1675007749796) (:by |rJG4IHzWf) (:text |nil)
                  |l $ %{} :Expr (:at 1675007749796) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1675007749796) (:by |rJG4IHzWf) (:text |<>)
                      |b $ %{} :Leaf (:at 1675007749796) (:by |rJG4IHzWf) (:text |icon)
                      |h $ %{} :Leaf (:at 1675007749796) (:by |rJG4IHzWf) (:text |css-icon-name)
        |css-cell $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1675007166857) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1675007168191) (:by |rJG4IHzWf) (:text |defstyle)
              |b $ %{} :Leaf (:at 1675007166857) (:by |rJG4IHzWf) (:text |css-cell)
              |h $ %{} :Expr (:at 1675007183676) (:by |rJG4IHzWf)
                :data $ {}
                  |D $ %{} :Leaf (:at 1675007184243) (:by |rJG4IHzWf) (:text |{})
                  |T $ %{} :Expr (:at 1675007184651) (:by |rJG4IHzWf)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1675007186286) (:by |rJG4IHzWf) (:text "|\"$0")
                      |T $ %{} :Expr (:at 1675007169265) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1675007169265) (:by |rJG4IHzWf) (:text |{})
                          |b $ %{} :Expr (:at 1675007169265) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1675007169265) (:by |rJG4IHzWf) (:text |:display)
                              |b $ %{} :Leaf (:at 1675007169265) (:by |rJG4IHzWf) (:text |:inline-flex)
                          |h $ %{} :Expr (:at 1675007169265) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1675007169265) (:by |rJG4IHzWf) (:text |:width)
                              |b $ %{} :Leaf (:at 1675007169265) (:by |rJG4IHzWf) (:text |80)
                          |l $ %{} :Expr (:at 1675007169265) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1675007169265) (:by |rJG4IHzWf) (:text |:height)
                              |b $ %{} :Leaf (:at 1675007169265) (:by |rJG4IHzWf) (:text |80)
                          |o $ %{} :Expr (:at 1675007169265) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1675007169265) (:by |rJG4IHzWf) (:text |:cursor)
                              |b $ %{} :Leaf (:at 1675007169265) (:by |rJG4IHzWf) (:text |:pointer)
                          |q $ %{} :Expr (:at 1675007230675) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1675007235460) (:by |rJG4IHzWf) (:text |:transition-duration)
                              |b $ %{} :Leaf (:at 1675007565354) (:by |rJG4IHzWf) (:text "|\"300ms")
                  |b $ %{} :Expr (:at 1675007205819) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1675007210156) (:by |rJG4IHzWf) (:text "|\"$0:hover")
                      |b $ %{} :Expr (:at 1675007210545) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1675007211353) (:by |rJG4IHzWf) (:text |{})
                          |b $ %{} :Expr (:at 1675007212028) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1675007215036) (:by |rJG4IHzWf) (:text |:background-color)
                              |b $ %{} :Expr (:at 1675007215509) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1675007216244) (:by |rJG4IHzWf) (:text |hsl)
                                  |b $ %{} :Leaf (:at 1675007216603) (:by |rJG4IHzWf) (:text |0)
                                  |h $ %{} :Leaf (:at 1675007216907) (:by |rJG4IHzWf) (:text |0)
                                  |l $ %{} :Leaf (:at 1675007222005) (:by |rJG4IHzWf) (:text |96)
                  |h $ %{} :Expr (:at 1675007478461) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1675007484783) (:by |rJG4IHzWf) (:text "|\"$0:active")
                      |b $ %{} :Expr (:at 1675007485098) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1675007485463) (:by |rJG4IHzWf) (:text |{})
                          |X $ %{} :Expr (:at 1675007523631) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1675007523631) (:by |rJG4IHzWf) (:text |:transition-duration)
                              |b $ %{} :Leaf (:at 1675007525294) (:by |rJG4IHzWf) (:text "|\"0ms")
                          |b $ %{} :Expr (:at 1675007489825) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1675007489825) (:by |rJG4IHzWf) (:text |:background-color)
                              |b $ %{} :Expr (:at 1675007489825) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1675007489825) (:by |rJG4IHzWf) (:text |hsl)
                                  |b $ %{} :Leaf (:at 1675007489825) (:by |rJG4IHzWf) (:text |0)
                                  |h $ %{} :Leaf (:at 1675007489825) (:by |rJG4IHzWf) (:text |0)
                                  |l $ %{} :Leaf (:at 1675007492458) (:by |rJG4IHzWf) (:text |90)
                          |h $ %{} :Expr (:at 1675007502537) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1675007505407) (:by |rJG4IHzWf) (:text |:transform)
                              |b $ %{} :Leaf (:at 1675007512428) (:by |rJG4IHzWf) (:text "|\"scale(1.02)")
        |css-icon-name $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1675007327401) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1675007328553) (:by |rJG4IHzWf) (:text |defstyle)
              |b $ %{} :Leaf (:at 1675007327401) (:by |rJG4IHzWf) (:text |css-icon-name)
              |h $ %{} :Expr (:at 1675007327401) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1675007329848) (:by |rJG4IHzWf) (:text |{})
                  |b $ %{} :Expr (:at 1675007330141) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1675007331574) (:by |rJG4IHzWf) (:text "|\"$0")
                      |b $ %{} :Expr (:at 1675007332765) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1675007332765) (:by |rJG4IHzWf) (:text |{})
                          |b $ %{} :Expr (:at 1675007332765) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1675007332765) (:by |rJG4IHzWf) (:text |:font-size)
                              |b $ %{} :Leaf (:at 1675007332765) (:by |rJG4IHzWf) (:text |12)
                          |h $ %{} :Expr (:at 1675007332765) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1675007332765) (:by |rJG4IHzWf) (:text |:color)
                              |b $ %{} :Expr (:at 1675007332765) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1675007332765) (:by |rJG4IHzWf) (:text |hsl)
                                  |b $ %{} :Leaf (:at 1675007332765) (:by |rJG4IHzWf) (:text |0)
                                  |h $ %{} :Leaf (:at 1675007332765) (:by |rJG4IHzWf) (:text |0)
                                  |l $ %{} :Leaf (:at 1675007332765) (:by |rJG4IHzWf) (:text |80)
                          |l $ %{} :Expr (:at 1675007332765) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1675007332765) (:by |rJG4IHzWf) (:text |:white-space)
                              |b $ %{} :Leaf (:at 1675007332765) (:by |rJG4IHzWf) (:text |:nowrap)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1499755354983) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |feather.comp.container)
            |v $ %{} :Expr (:at 1499755354983) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:require)
                |r $ %{} :Expr (:at 1499755354983) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1516527080962) (:by |root) (:text |respo-ui.core)
                    |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |ui)
                |s $ %{} :Expr (:at 1675007138849) (:by |rJG4IHzWf)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1675007141558) (:by |rJG4IHzWf) (:text |respo-ui.css)
                    |b $ %{} :Leaf (:at 1675007142220) (:by |rJG4IHzWf) (:text |:as)
                    |h $ %{} :Leaf (:at 1675007142988) (:by |rJG4IHzWf) (:text |css)
                |t $ %{} :Expr (:at 1615655746303) (:by |rJG4IHzWf)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1615655750672) (:by |rJG4IHzWf) (:text |respo.util.format)
                    |r $ %{} :Leaf (:at 1615655751554) (:by |rJG4IHzWf) (:text |:refer)
                    |v $ %{} :Expr (:at 1615655751792) (:by |rJG4IHzWf)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1615655752518) (:by |rJG4IHzWf) (:text |hsl)
                |v $ %{} :Expr (:at 1499755354983) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1540958704705) (:by |root) (:text |respo.core)
                    |r $ %{} :Leaf (:at 1508946162679) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1499755354983) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |defcomp)
                        |l $ %{} :Leaf (:at 1573355389740) (:by |rJG4IHzWf) (:text |defeffect)
                        |o $ %{} :Leaf (:at 1675007634962) (:by |rJG4IHzWf) (:text |list->)
                        |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |<>)
                        |t $ %{} :Leaf (:at 1584780606618) (:by |rJG4IHzWf) (:text |>>)
                        |v $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |div)
                        |x $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |button)
                        |xT $ %{} :Leaf (:at 1512359490531) (:by |rJG4IHzWf) (:text |textarea)
                        |y $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |span)
                        |yT $ %{} :Leaf (:at 1552321107012) (:by |rJG4IHzWf) (:text |input)
                |x $ %{} :Expr (:at 1499755354983) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |respo.comp.space)
                    |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1499755354983) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |=<)
                |y $ %{} :Expr (:at 1507461845717) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1507461855480) (:by |root) (:text |reel.comp.reel)
                    |r $ %{} :Leaf (:at 1507461856264) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1507461856484) (:by |root)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1507461858342) (:by |root) (:text |comp-reel)
                |yT $ %{} :Expr (:at 1519699088529) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1519699092590) (:by |root) (:text |respo-md.comp.md)
                    |r $ %{} :Leaf (:at 1519699093410) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1519699093683) (:by |root)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1519699096732) (:by |root) (:text |comp-md)
                |yj $ %{} :Expr (:at 1521954061310) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1527788377809) (:by |root) (:text |feather.config)
                    |r $ %{} :Leaf (:at 1521954064826) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1521954065004) (:by |root)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1521954067604) (:by |root) (:text |dev?)
                |yr $ %{} :Expr (:at 1615655690153) (:by |rJG4IHzWf)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1615655690153) (:by |rJG4IHzWf) (:text |feather.core)
                    |r $ %{} :Leaf (:at 1615655690153) (:by |rJG4IHzWf) (:text |:refer)
                    |v $ %{} :Expr (:at 1615655690153) (:by |rJG4IHzWf)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1615655690153) (:by |rJG4IHzWf) (:text |comp-icon)
                        |r $ %{} :Leaf (:at 1615655690153) (:by |rJG4IHzWf) (:text |comp-i)
                |yv $ %{} :Expr (:at 1615655693630) (:by |rJG4IHzWf)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1615655693630) (:by |rJG4IHzWf) (:text "|\"feather-icons")
                    |r $ %{} :Leaf (:at 1621359730378) (:by |rJG4IHzWf) (:text |:default)
                    |v $ %{} :Leaf (:at 1615655693630) (:by |rJG4IHzWf) (:text |feather-icons)
                |yx $ %{} :Expr (:at 1615655696542) (:by |rJG4IHzWf)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1615655696542) (:by |rJG4IHzWf) (:text "|\"copy-text-to-clipboard")
                    |r $ %{} :Leaf (:at 1646938691300) (:by |rJG4IHzWf) (:text |:default)
                    |v $ %{} :Leaf (:at 1615655696542) (:by |rJG4IHzWf) (:text |copy!)
                |z $ %{} :Expr (:at 1675007175868) (:by |rJG4IHzWf)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1675007176967) (:by |rJG4IHzWf) (:text |respo.css)
                    |b $ %{} :Leaf (:at 1675007177690) (:by |rJG4IHzWf) (:text |:refer)
                    |h $ %{} :Expr (:at 1675007180285) (:by |rJG4IHzWf)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1675007181629) (:by |rJG4IHzWf) (:text |defstyle)
                |zD $ %{} :Expr (:at 1675007644154) (:by |rJG4IHzWf)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1675007678315) (:by |rJG4IHzWf) (:text |memof.once)
                    |b $ %{} :Leaf (:at 1675007679260) (:by |rJG4IHzWf) (:text |:refer)
                    |h $ %{} :Expr (:at 1675007679537) (:by |rJG4IHzWf)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1675007685987) (:by |rJG4IHzWf) (:text |memof1-call-by)
    |feather.config $ %{} :FileEntry
      :defs $ {}
        |dev? $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1659198782323) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1659198782323) (:by |rJG4IHzWf) (:text |def)
              |b $ %{} :Leaf (:at 1659198782323) (:by |rJG4IHzWf) (:text |dev?)
              |h $ %{} :Expr (:at 1659198782323) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1659198785384) (:by |rJG4IHzWf) (:text |=)
                  |b $ %{} :Leaf (:at 1659198788435) (:by |rJG4IHzWf) (:text "|\"dev")
                  |h $ %{} :Expr (:at 1659198788733) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1659198790936) (:by |rJG4IHzWf) (:text |get-env)
                      |b $ %{} :Leaf (:at 1659198791856) (:by |rJG4IHzWf) (:text "|\"mode")
                      |h $ %{} :Leaf (:at 1659198793617) (:by |rJG4IHzWf) (:text "|\"release")
        |site $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1545933382603) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1518157345496) (:by |root) (:text |def)
              |j $ %{} :Leaf (:at 1518157327696) (:by |root) (:text |site)
              |r $ %{} :Expr (:at 1518157327696) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1518157346643) (:by |root) (:text |{})
                  |y $ %{} :Expr (:at 1527868456422) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1527868457305) (:by |root) (:text |:title)
                      |j $ %{} :Leaf (:at 1540053963607) (:by |root) (:text "|\"Calcit")
                  |yT $ %{} :Expr (:at 1527868457696) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1527868458476) (:by |root) (:text |:icon)
                      |j $ %{} :Leaf (:at 1527868478815) (:by |root) (:text "|\"http://cdn.tiye.me/logo/mvc-works.png")
                  |yf $ %{} :Expr (:at 1544956719115) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1544956719115) (:by |rJG4IHzWf) (:text |:storage-key)
                      |j $ %{} :Leaf (:at 1646938998190) (:by |rJG4IHzWf) (:text "|\"respo-feather")
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1527788237503) (:by |root)
          :data $ {}
            |T $ %{} :Leaf (:at 1527788237503) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1527788237503) (:by |root) (:text |feather.config)
    |feather.core $ %{} :FileEntry
      :defs $ {}
        |comp-i $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1615655659087) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |defcomp)
              |j $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |comp-i)
              |r $ %{} :Expr (:at 1615655659087) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |icon)
                  |j $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |size)
                  |r $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |color)
              |v $ %{} :Expr (:at 1615655659087) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |comp-icon)
                  |j $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |icon)
                  |r $ %{} :Expr (:at 1615655659087) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |{})
                      |j $ %{} :Expr (:at 1615655659087) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |:font-size)
                          |j $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |size)
                      |r $ %{} :Expr (:at 1615655659087) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |:color)
                          |j $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |color)
                  |v $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |nil)
        |comp-icon $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1615655659087) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |defcomp)
              |j $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |comp-icon)
              |r $ %{} :Expr (:at 1615655659087) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |icon)
                  |j $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |style)
                  |r $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |on-click)
              |v $ %{} :Expr (:at 1615655659087) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |assert)
                  |b $ %{} :Leaf (:at 1690436034955) (:by |rJG4IHzWf) (:text "|\"1: icon name in string")
                  |j $ %{} :Expr (:at 1615655659087) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |or)
                      |j $ %{} :Expr (:at 1615655659087) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |string?)
                          |j $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |icon)
                      |r $ %{} :Expr (:at 1615655659087) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1685265671844) (:by |rJG4IHzWf) (:text |tag?)
                          |j $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |icon)
              |x $ %{} :Expr (:at 1615655659087) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |assert)
                  |b $ %{} :Leaf (:at 1690436037291) (:by |rJG4IHzWf) (:text "|\"2: size in number")
                  |j $ %{} :Expr (:at 1615655659087) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |number?)
                      |j $ %{} :Expr (:at 1615655659087) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |:font-size)
                          |j $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |style)
              |y $ %{} :Expr (:at 1615655659087) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |assert)
                  |b $ %{} :Leaf (:at 1690436039579) (:by |rJG4IHzWf) (:text "|\"3: color in string")
                  |j $ %{} :Expr (:at 1615655659087) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |string?)
                      |j $ %{} :Expr (:at 1615655659087) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |:color)
                          |j $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |style)
              |yT $ %{} :Expr (:at 1615655659087) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |let)
                  |j $ %{} :Expr (:at 1615655659087) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Expr (:at 1615655659087) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |icon-name)
                          |j $ %{} :Expr (:at 1615655659087) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1615656142438) (:by |rJG4IHzWf) (:text |turn-string)
                              |j $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |icon)
                      |j $ %{} :Expr (:at 1615655659087) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |obj)
                          |j $ %{} :Expr (:at 1615655659087) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |aget)
                              |j $ %{} :Expr (:at 1615655659087) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |.-icons)
                                  |j $ %{} :Leaf (:at 1621359769580) (:by |rJG4IHzWf) (:text |feather-icons)
                              |r $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |icon-name)
                  |r $ %{} :Expr (:at 1615655659087) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |if)
                      |j $ %{} :Expr (:at 1615655659087) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |some?)
                          |j $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |obj)
                      |r $ %{} :Expr (:at 1615655659087) (:by |rJG4IHzWf)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1615655964464) (:by |rJG4IHzWf) (:text |create-element)
                          |T $ %{} :Leaf (:at 1615655983655) (:by |rJG4IHzWf) (:text |:i)
                          |j $ %{} :Expr (:at 1615655659087) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |{})
                              |j $ %{} :Expr (:at 1615655659087) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |:style)
                                  |j $ %{} :Expr (:at 1615655659087) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |merge)
                                      |j $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |style-base)
                                      |r $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |style)
                              |r $ %{} :Expr (:at 1615655659087) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |:innerHTML)
                                  |j $ %{} :Expr (:at 1615655659087) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |if)
                                      |j $ %{} :Expr (:at 1615655659087) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |some?)
                                          |j $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |obj)
                                      |r $ %{} :Expr (:at 1615655659087) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1675007384983) (:by |rJG4IHzWf) (:text |.!toSvg)
                                          |j $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |obj)
                                          |r $ %{} :Expr (:at 1615655659087) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1615656114669) (:by |rJG4IHzWf) (:text |to-js-data)
                                              |j $ %{} :Expr (:at 1615655659087) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |{})
                                                  |j $ %{} :Expr (:at 1615655659087) (:by |rJG4IHzWf)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |:width)
                                                      |j $ %{} :Expr (:at 1615655659087) (:by |rJG4IHzWf)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |:font-size)
                                                          |j $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |style)
                                                  |r $ %{} :Expr (:at 1615655659087) (:by |rJG4IHzWf)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |:height)
                                                      |j $ %{} :Expr (:at 1615655659087) (:by |rJG4IHzWf)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |:font-size)
                                                          |j $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |style)
                                                  |v $ %{} :Expr (:at 1615655659087) (:by |rJG4IHzWf)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |:color)
                                                      |j $ %{} :Expr (:at 1615655659087) (:by |rJG4IHzWf)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |:color)
                                                          |j $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |style)
                              |v $ %{} :Expr (:at 1615655659087) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |:on-click)
                                  |j $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |on-click)
                      |v $ %{} :Expr (:at 1615655659087) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |do)
                          |j $ %{} :Expr (:at 1615655659087) (:by |rJG4IHzWf)
                            :data $ {}
                              |j $ %{} :Leaf (:at 1675007349869) (:by |rJG4IHzWf) (:text |js/console.error)
                              |r $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text "|\"No icon named:")
                              |v $ %{} :Expr (:at 1615655659087) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1615656146931) (:by |rJG4IHzWf) (:text |turn-string)
                                  |j $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |icon)
                          |r $ %{} :Expr (:at 1615655659087) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |span)
                              |j $ %{} :Expr (:at 1615655659087) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |{})
                                  |j $ %{} :Expr (:at 1615655659087) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |:on-click)
                                      |j $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |on-click)
                                  |r $ %{} :Expr (:at 1615655659087) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1675007382618) (:by |rJG4IHzWf) (:text |:stle)
                                      |j $ %{} :Expr (:at 1615655659087) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1675007379101) (:by |rJG4IHzWf) (:text |merge)
                                          |j $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |style-base)
                                          |r $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |style)
                                          |v $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |style-error)
                              |r $ %{} :Expr (:at 1615655659087) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |<>)
                                  |j $ %{} :Expr (:at 1615655659087) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |str)
                                      |j $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text "|\"No ")
                                      |r $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |icon-name)
        |style-base $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1615655659087) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |def)
              |j $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |style-base)
              |r $ %{} :Expr (:at 1615655659087) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |{})
                  |j $ %{} :Expr (:at 1615655659087) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |:display)
                      |j $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |:inline-block)
        |style-error $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1615655659087) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |def)
              |j $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |style-error)
              |r $ %{} :Expr (:at 1615655659087) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |{})
                  |j $ %{} :Expr (:at 1615655659087) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |:background-color)
                      |j $ %{} :Expr (:at 1615655659087) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |hsl)
                          |j $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |0)
                          |r $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |80)
                          |v $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |70)
                  |r $ %{} :Expr (:at 1615655659087) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |:color)
                      |j $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |:white)
                  |v $ %{} :Expr (:at 1615655659087) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |:padding)
                      |j $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text "|\"0 8px")
                  |x $ %{} :Expr (:at 1615655659087) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |:line-height)
                      |j $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text "|\"24px")
                  |y $ %{} :Expr (:at 1615655659087) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |:border-radius)
                      |j $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text "|\"12px")
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1615655659087) (:by |rJG4IHzWf)
          :data $ {}
            |T $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |ns)
            |j $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |feather.core)
            |r $ %{} :Expr (:at 1615655659087) (:by |rJG4IHzWf)
              :data $ {}
                |T $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |:require)
                |j $ %{} :Expr (:at 1615655659087) (:by |rJG4IHzWf)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |respo.core)
                    |r $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |:refer)
                    |v $ %{} :Expr (:at 1615655659087) (:by |rJG4IHzWf)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |defcomp)
                        |n $ %{} :Leaf (:at 1615655988747) (:by |rJG4IHzWf) (:text |create-element)
                        |r $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |span)
                        |v $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |div)
                        |x $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |i)
                        |y $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |<>)
                |r $ %{} :Expr (:at 1615655659087) (:by |rJG4IHzWf)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1615656003715) (:by |rJG4IHzWf) (:text |respo.util.format)
                    |r $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |:refer)
                    |v $ %{} :Expr (:at 1615655659087) (:by |rJG4IHzWf)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |hsl)
                |v $ %{} :Expr (:at 1615655659087) (:by |rJG4IHzWf)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text "|\"feather-icons")
                    |r $ %{} :Leaf (:at 1621359772328) (:by |rJG4IHzWf) (:text |:default)
                    |v $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |feather-icons)
    |feather.main $ %{} :FileEntry
      :defs $ {}
        |*reel $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1499755354983) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1610792986987) (:by |rJG4IHzWf) (:text |defatom)
              |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |*reel)
              |r $ %{} :Expr (:at 1507399777531) (:by |root)
                :data $ {}
                  |D $ %{} :Leaf (:at 1507399778895) (:by |root) (:text |->)
                  |T $ %{} :Leaf (:at 1507399776350) (:by |root) (:text |reel-schema/reel)
                  |j $ %{} :Expr (:at 1507399779656) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1507399781682) (:by |root) (:text |assoc)
                      |j $ %{} :Leaf (:at 1507401405076) (:by |root) (:text |:base)
                      |r $ %{} :Leaf (:at 1507399787471) (:by |root) (:text |schema/store)
                  |r $ %{} :Expr (:at 1507399779656) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1507399781682) (:by |root) (:text |assoc)
                      |j $ %{} :Leaf (:at 1507399793097) (:by |root) (:text |:store)
                      |r $ %{} :Leaf (:at 1507399787471) (:by |root) (:text |schema/store)
        |dispatch! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1499755354983) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |dispatch!)
              |r $ %{} :Expr (:at 1499755354983) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |op)
              |t $ %{} :Expr (:at 1547437686766) (:by |root)
                :data $ {}
                  |D $ %{} :Leaf (:at 1547437687530) (:by |root) (:text |when)
                  |L $ %{} :Leaf (:at 1547437691006) (:by |root) (:text |config/dev?)
                  |T $ %{} :Expr (:at 1518156274050) (:by |root)
                    :data $ {}
                      |j $ %{} :Leaf (:at 1659198829001) (:by |rJG4IHzWf) (:text |js/console.log)
                      |r $ %{} :Leaf (:at 1547437698992) (:by |root) (:text "|\"Dispatch:")
                      |v $ %{} :Leaf (:at 1518156280471) (:by |root) (:text |op)
              |v $ %{} :Expr (:at 1584780634192) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |reset!)
                  |j $ %{} :Leaf (:at 1507399899641) (:by |root) (:text |*reel)
                  |r $ %{} :Expr (:at 1507399884621) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1507399887573) (:by |root) (:text |reel-updater)
                      |j $ %{} :Leaf (:at 1507399888500) (:by |root) (:text |updater)
                      |r $ %{} :Leaf (:at 1507399891576) (:by |root) (:text |@*reel)
                      |v $ %{} :Leaf (:at 1507399892687) (:by |root) (:text |op)
        |main! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1499755354983) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |main!)
              |r $ %{} :Expr (:at 1499755354983) (:by nil)
                :data $ {}
              |s $ %{} :Expr (:at 1615656711986) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1615656716606) (:by |rJG4IHzWf) (:text |load-console-formatter!)
              |t $ %{} :Expr (:at 1544874433785) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1544874434638) (:by |rJG4IHzWf) (:text |println)
                  |j $ %{} :Leaf (:at 1544874509800) (:by |rJG4IHzWf) (:text "|\"Running mode:")
                  |r $ %{} :Expr (:at 1544874440404) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1544874440190) (:by |rJG4IHzWf) (:text |if)
                      |j $ %{} :Leaf (:at 1659198775226) (:by |rJG4IHzWf) (:text |config/dev?)
                      |r $ %{} :Leaf (:at 1544874449063) (:by |rJG4IHzWf) (:text "|\"dev")
                      |v $ %{} :Leaf (:at 1544874452316) (:by |rJG4IHzWf) (:text "|\"release")
              |v $ %{} :Expr (:at 1659198804852) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1659198805223) (:by |rJG4IHzWf) (:text |if)
                  |b $ %{} :Leaf (:at 1659198807836) (:by |rJG4IHzWf) (:text |config/dev?)
                  |h $ %{} :Expr (:at 1659198809536) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1659198816316) (:by |rJG4IHzWf) (:text |load-console-formatter!)
              |x $ %{} :Expr (:at 1499755354983) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |render-app!)
              |y $ %{} :Expr (:at 1499755354983) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |add-watch)
                  |j $ %{} :Leaf (:at 1507399915531) (:by |root) (:text |*reel)
                  |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:changes)
                  |v $ %{} :Expr (:at 1499755354983) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |fn)
                      |j $ %{} :Expr (:at 1499755354983) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1612280609284) (:by |rJG4IHzWf) (:text |reel)
                          |j $ %{} :Leaf (:at 1612280610651) (:by |rJG4IHzWf) (:text |prev)
                      |r $ %{} :Expr (:at 1499755354983) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1646938914821) (:by |rJG4IHzWf) (:text |render-app!)
              |yD $ %{} :Expr (:at 1507461684494) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1507461739167) (:by |root) (:text |listen-devtools!)
                  |j $ %{} :Leaf (:at 1507461691211) (:by |root) (:text ||a)
                  |r $ %{} :Leaf (:at 1507461693919) (:by |root) (:text |dispatch!)
              |yL $ %{} :Expr (:at 1518157357847) (:by |root)
                :data $ {}
                  |j $ %{} :Leaf (:at 1659198576060) (:by |rJG4IHzWf) (:text |js/window.addEventListener)
                  |r $ %{} :Leaf (:at 1518157458163) (:by |root) (:text ||beforeunload)
                  |v $ %{} :Expr (:at 1612344221583) (:by |rJG4IHzWf)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1612344222204) (:by |rJG4IHzWf) (:text |fn)
                      |L $ %{} :Expr (:at 1612344222530) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1612344223520) (:by |rJG4IHzWf) (:text |event)
                      |T $ %{} :Expr (:at 1612344224533) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1533919515671) (:by |rJG4IHzWf) (:text |persist-storage!)
              |yN $ %{} :Expr (:at 1533919529874) (:by |rJG4IHzWf)
                :data $ {}
                  |D $ %{} :Leaf (:at 1659198585397) (:by |rJG4IHzWf) (:text |flipped)
                  |L $ %{} :Leaf (:at 1659198614055) (:by |rJG4IHzWf) (:text |js/setInterval)
                  |b $ %{} :Expr (:at 1659198596645) (:by |rJG4IHzWf)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1659198597611) (:by |rJG4IHzWf) (:text |*)
                      |T $ %{} :Leaf (:at 1544956066171) (:by |rJG4IHzWf) (:text |60)
                      |b $ %{} :Leaf (:at 1659198599511) (:by |rJG4IHzWf) (:text |1000)
                  |j $ %{} :Leaf (:at 1533919535136) (:by |rJG4IHzWf) (:text |persist-storage!)
              |yP $ %{} :Expr (:at 1518157492640) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1518157495438) (:by |root) (:text |let)
                  |j $ %{} :Expr (:at 1518157495644) (:by |root)
                    :data $ {}
                      |T $ %{} :Expr (:at 1518157495826) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1518157496930) (:by |root) (:text |raw)
                          |j $ %{} :Expr (:at 1518157497615) (:by |root)
                            :data $ {}
                              |j $ %{} :Leaf (:at 1659198618921) (:by |rJG4IHzWf) (:text |js/localStorage.getItem)
                              |r $ %{} :Expr (:at 1518157506313) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1544956709260) (:by |rJG4IHzWf) (:text |:storage-key)
                                  |j $ %{} :Leaf (:at 1527788293499) (:by |root) (:text |config/site)
                  |r $ %{} :Expr (:at 1518157514334) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1533919640958) (:by |rJG4IHzWf) (:text |when)
                      |j $ %{} :Expr (:at 1518157515117) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1518157515786) (:by |root) (:text |some?)
                          |j $ %{} :Leaf (:at 1518157516878) (:by |root) (:text |raw)
                      |r $ %{} :Expr (:at 1518157521635) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1518157523818) (:by |root) (:text |dispatch!)
                          |r $ %{} :Expr (:at 1690435998351) (:by |rJG4IHzWf)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1690435998901) (:by |rJG4IHzWf) (:text |::)
                              |L $ %{} :Leaf (:at 1690435999332) (:by |rJG4IHzWf) (:text |:hydrate-storage)
                              |T $ %{} :Expr (:at 1518157527987) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1659198638855) (:by |rJG4IHzWf) (:text |parse-cirru-edn)
                                  |j $ %{} :Leaf (:at 1518157531240) (:by |root) (:text |raw)
              |yT $ %{} :Expr (:at 1499755354983) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |println)
                  |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text "||App started.")
        |mount-target $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1499755354983) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |def)
              |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |mount-target)
              |r $ %{} :Expr (:at 1499755354983) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |.querySelector)
                  |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |js/document)
                  |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text ||.app)
        |persist-storage! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1533919515671) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1533919517365) (:by |rJG4IHzWf) (:text |defn)
              |j $ %{} :Leaf (:at 1533919515671) (:by |rJG4IHzWf) (:text |persist-storage!)
              |r $ %{} :Expr (:at 1533919515671) (:by |rJG4IHzWf)
                :data $ {}
              |v $ %{} :Expr (:at 1533919515671) (:by |rJG4IHzWf)
                :data $ {}
                  |j $ %{} :Leaf (:at 1659198606924) (:by |rJG4IHzWf) (:text |js/localStorage.setItem)
                  |r $ %{} :Expr (:at 1533919515671) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1544956703087) (:by |rJG4IHzWf) (:text |:storage-key)
                      |j $ %{} :Leaf (:at 1533919515671) (:by |rJG4IHzWf) (:text |config/site)
                  |v $ %{} :Expr (:at 1533919515671) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1659198629759) (:by |rJG4IHzWf) (:text |format-cirru-edn)
                      |j $ %{} :Expr (:at 1533919515671) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1533919515671) (:by |rJG4IHzWf) (:text |:store)
                          |j $ %{} :Leaf (:at 1533919515671) (:by |rJG4IHzWf) (:text |@*reel)
        |reload! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1646938836450) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1646938836450) (:by |rJG4IHzWf) (:text |defn)
              |b $ %{} :Leaf (:at 1646938836450) (:by |rJG4IHzWf) (:text |reload!)
              |h $ %{} :Expr (:at 1646938836450) (:by |rJG4IHzWf)
                :data $ {}
              |l $ %{} :Expr (:at 1646938836450) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1646938836450) (:by |rJG4IHzWf) (:text |if)
                  |b $ %{} :Expr (:at 1646938836450) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1646938836450) (:by |rJG4IHzWf) (:text |nil?)
                      |b $ %{} :Leaf (:at 1646938836450) (:by |rJG4IHzWf) (:text |build-errors)
                  |h $ %{} :Expr (:at 1646938836450) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1646938836450) (:by |rJG4IHzWf) (:text |do)
                      |b $ %{} :Expr (:at 1646938836450) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1646938836450) (:by |rJG4IHzWf) (:text |remove-watch)
                          |b $ %{} :Leaf (:at 1646938836450) (:by |rJG4IHzWf) (:text |*reel)
                          |h $ %{} :Leaf (:at 1646938836450) (:by |rJG4IHzWf) (:text |:changes)
                      |h $ %{} :Expr (:at 1646938836450) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1646938836450) (:by |rJG4IHzWf) (:text |clear-cache!)
                      |l $ %{} :Expr (:at 1646938836450) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1646938836450) (:by |rJG4IHzWf) (:text |add-watch)
                          |b $ %{} :Leaf (:at 1646938836450) (:by |rJG4IHzWf) (:text |*reel)
                          |h $ %{} :Leaf (:at 1646938836450) (:by |rJG4IHzWf) (:text |:changes)
                          |l $ %{} :Expr (:at 1646938836450) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1646938836450) (:by |rJG4IHzWf) (:text |fn)
                              |b $ %{} :Expr (:at 1646938836450) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1646938836450) (:by |rJG4IHzWf) (:text |reel)
                                  |b $ %{} :Leaf (:at 1646938836450) (:by |rJG4IHzWf) (:text |prev)
                              |h $ %{} :Expr (:at 1646938836450) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1646938836450) (:by |rJG4IHzWf) (:text |render-app!)
                      |o $ %{} :Expr (:at 1646938836450) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1646938836450) (:by |rJG4IHzWf) (:text |reset!)
                          |b $ %{} :Leaf (:at 1646938836450) (:by |rJG4IHzWf) (:text |*reel)
                          |h $ %{} :Expr (:at 1646938836450) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1646938836450) (:by |rJG4IHzWf) (:text |refresh-reel)
                              |b $ %{} :Leaf (:at 1646938836450) (:by |rJG4IHzWf) (:text |@*reel)
                              |h $ %{} :Leaf (:at 1646938836450) (:by |rJG4IHzWf) (:text |schema/store)
                              |l $ %{} :Leaf (:at 1646938836450) (:by |rJG4IHzWf) (:text |updater)
                      |q $ %{} :Expr (:at 1646938836450) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1646938836450) (:by |rJG4IHzWf) (:text |hud!)
                          |b $ %{} :Leaf (:at 1646938836450) (:by |rJG4IHzWf) (:text "|\"ok~")
                          |h $ %{} :Leaf (:at 1646938836450) (:by |rJG4IHzWf) (:text "|\"Ok")
                  |l $ %{} :Expr (:at 1646938836450) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1646938836450) (:by |rJG4IHzWf) (:text |hud!)
                      |b $ %{} :Leaf (:at 1646938836450) (:by |rJG4IHzWf) (:text "|\"error")
                      |h $ %{} :Leaf (:at 1646938836450) (:by |rJG4IHzWf) (:text |build-errors)
        |render-app! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1499755354983) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |render-app!)
              |r $ %{} :Expr (:at 1499755354983) (:by nil)
                :data $ {}
              |v $ %{} :Expr (:at 1499755354983) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1646938883132) (:by |rJG4IHzWf) (:text |render!)
                  |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |mount-target)
                  |r $ %{} :Expr (:at 1499755354983) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |comp-container)
                      |j $ %{} :Leaf (:at 1507400119272) (:by |root) (:text |@*reel)
                  |t $ %{} :Leaf (:at 1690436008301) (:by |rJG4IHzWf) (:text |dispatch!)
        |repeat! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1610793045335) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1610793045335) (:by |rJG4IHzWf) (:text |defn)
              |j $ %{} :Leaf (:at 1610793045335) (:by |rJG4IHzWf) (:text |repeat!)
              |r $ %{} :Expr (:at 1610793045335) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1610793047914) (:by |rJG4IHzWf) (:text |duration)
                  |j $ %{} :Leaf (:at 1610793055850) (:by |rJG4IHzWf) (:text |cb)
              |v $ %{} :Expr (:at 1610793056606) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1610793066184) (:by |rJG4IHzWf) (:text |js/setTimeout)
                  |j $ %{} :Expr (:at 1610793079106) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1610793079545) (:by |rJG4IHzWf) (:text |fn)
                      |j $ %{} :Expr (:at 1610793080160) (:by |rJG4IHzWf)
                        :data $ {}
                      |n $ %{} :Expr (:at 1610793090420) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1610793091010) (:by |rJG4IHzWf) (:text |cb)
                      |r $ %{} :Expr (:at 1610793080941) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1610793083422) (:by |rJG4IHzWf) (:text |repeat!)
                          |j $ %{} :Expr (:at 1610794352418) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1610794352418) (:by |rJG4IHzWf) (:text |*)
                              |j $ %{} :Leaf (:at 1610794467961) (:by |rJG4IHzWf) (:text |1000)
                              |r $ %{} :Leaf (:at 1610794352418) (:by |rJG4IHzWf) (:text |duration)
                          |r $ %{} :Leaf (:at 1610794361837) (:by |rJG4IHzWf) (:text |cb)
                  |r $ %{} :Expr (:at 1610793071391) (:by |rJG4IHzWf)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1610793072002) (:by |rJG4IHzWf) (:text |*)
                      |L $ %{} :Leaf (:at 1610794470143) (:by |rJG4IHzWf) (:text |1000)
                      |T $ %{} :Leaf (:at 1610793071233) (:by |rJG4IHzWf) (:text |duration)
        |snippets $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1551977434239) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1551977434239) (:by |rJG4IHzWf) (:text |defn)
              |j $ %{} :Leaf (:at 1551977434239) (:by |rJG4IHzWf) (:text |snippets)
              |r $ %{} :Expr (:at 1551977434239) (:by |rJG4IHzWf)
                :data $ {}
              |v $ %{} :Expr (:at 1551977444630) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1551977458023) (:by |rJG4IHzWf) (:text |println)
                  |j $ %{} :Leaf (:at 1551977477010) (:by |rJG4IHzWf) (:text |config/cdn?)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1499755354983) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |feather.main)
            |r $ %{} :Expr (:at 1499755354983) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:require)
                |j $ %{} :Expr (:at 1499755354983) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |respo.core)
                    |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1499755354983) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |render!)
                        |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |clear-cache!)
                |v $ %{} :Expr (:at 1499755354983) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |feather.comp.container)
                    |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1499755354983) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |comp-container)
                |y $ %{} :Expr (:at 1499755354983) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1508556737455) (:by |root) (:text |feather.updater)
                    |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1499755354983) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |updater)
                |yT $ %{} :Expr (:at 1499755354983) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |feather.schema)
                    |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |schema)
                |yj $ %{} :Expr (:at 1507399674125) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1507399678694) (:by |root) (:text |reel.util)
                    |r $ %{} :Leaf (:at 1507399680625) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1507399680857) (:by |root)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1518156292092) (:by |root) (:text |listen-devtools!)
                |yr $ %{} :Expr (:at 1507399683930) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1507399687162) (:by |root) (:text |reel.core)
                    |r $ %{} :Leaf (:at 1507399688098) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1507399688322) (:by |root)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1507399691010) (:by |root) (:text |reel-updater)
                        |q $ %{} :Leaf (:at 1518156288482) (:by |root) (:text |refresh-reel)
                |yv $ %{} :Expr (:at 1507399715229) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1507399717674) (:by |root) (:text |reel.schema)
                    |r $ %{} :Leaf (:at 1507399755750) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1507399757678) (:by |root) (:text |reel-schema)
                |yy $ %{} :Expr (:at 1527788302920) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1527788304925) (:by |root) (:text |feather.config)
                    |r $ %{} :Leaf (:at 1527788306048) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1527788306884) (:by |root) (:text |config)
                |z $ %{} :Expr (:at 1646938849381) (:by |rJG4IHzWf)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1646938849381) (:by |rJG4IHzWf) (:text "|\"./calcit.build-errors")
                    |b $ %{} :Leaf (:at 1646938849381) (:by |rJG4IHzWf) (:text |:default)
                    |h $ %{} :Leaf (:at 1646938849381) (:by |rJG4IHzWf) (:text |build-errors)
                |zD $ %{} :Expr (:at 1646938849381) (:by |rJG4IHzWf)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1646938849381) (:by |rJG4IHzWf) (:text "|\"bottom-tip")
                    |b $ %{} :Leaf (:at 1646938849381) (:by |rJG4IHzWf) (:text |:default)
                    |h $ %{} :Leaf (:at 1646938849381) (:by |rJG4IHzWf) (:text |hud!)
    |feather.schema $ %{} :FileEntry
      :defs $ {}
        |store $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1499755354983) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |def)
              |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |store)
              |r $ %{} :Expr (:at 1499755354983) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |{})
                  |j $ %{} :Expr (:at 1499755354983) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:states)
                      |j $ %{} :Expr (:at 1499755354983) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |{})
                          |j $ %{} :Expr (:at 1584781004285) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1584781007054) (:by |rJG4IHzWf) (:text |:cursor)
                              |j $ %{} :Expr (:at 1584781007287) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1584781007486) (:by |rJG4IHzWf) (:text |[])
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1499755354983) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |feather.schema)
    |feather.updater $ %{} :FileEntry
      :defs $ {}
        |updater $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1499755354983) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |updater)
              |r $ %{} :Expr (:at 1499755354983) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |store)
                  |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |op)
                  |v $ %{} :Leaf (:at 1519489491135) (:by |root) (:text |op-id)
                  |x $ %{} :Leaf (:at 1519489492110) (:by |root) (:text |op-time)
              |v $ %{} :Expr (:at 1499755354983) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1690435962638) (:by |rJG4IHzWf) (:text |tag-match)
                  |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |op)
                  |n $ %{} :Expr (:at 1507399852251) (:by |root)
                    :data $ {}
                      |T $ %{} :Expr (:at 1690435984281) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1507399855618) (:by |root) (:text |:states)
                          |b $ %{} :Leaf (:at 1690435985438) (:by |rJG4IHzWf) (:text |cursor)
                          |h $ %{} :Leaf (:at 1690435986592) (:by |rJG4IHzWf) (:text |s)
                      |j $ %{} :Expr (:at 1584874625235) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1584874626558) (:by |rJG4IHzWf) (:text |update-states)
                          |j $ %{} :Leaf (:at 1584874628374) (:by |rJG4IHzWf) (:text |store)
                          |r $ %{} :Leaf (:at 1690435988783) (:by |rJG4IHzWf) (:text |cursor)
                          |t $ %{} :Leaf (:at 1690435989434) (:by |rJG4IHzWf) (:text |s)
                  |t $ %{} :Expr (:at 1518157547521) (:by |root)
                    :data $ {}
                      |T $ %{} :Expr (:at 1690435982749) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1518157657108) (:by |root) (:text |:hydrate-storage)
                          |b $ %{} :Leaf (:at 1690435983532) (:by |rJG4IHzWf) (:text |data)
                      |j $ %{} :Leaf (:at 1584874637339) (:by |rJG4IHzWf) (:text |data)
                  |u $ %{} :Expr (:at 1615657508015) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Expr (:at 1690435978241) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1615657508015) (:by |rJG4IHzWf) (:text |:exhibit)
                          |b $ %{} :Leaf (:at 1690435980628) (:by |rJG4IHzWf) (:text |d)
                      |j $ %{} :Expr (:at 1615657508015) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1615657508015) (:by |rJG4IHzWf) (:text |assoc)
                          |j $ %{} :Leaf (:at 1615657508015) (:by |rJG4IHzWf) (:text |store)
                          |r $ %{} :Leaf (:at 1615657508015) (:by |rJG4IHzWf) (:text |:icon)
                          |v $ %{} :Leaf (:at 1690435981954) (:by |rJG4IHzWf) (:text |d)
                  |v $ %{} :Expr (:at 1690435966885) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1690435967231) (:by |rJG4IHzWf) (:text |_)
                      |b $ %{} :Expr (:at 1690435967748) (:by |rJG4IHzWf)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1690435969174) (:by |rJG4IHzWf) (:text |do)
                          |L $ %{} :Expr (:at 1690435969573) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1690435972522) (:by |rJG4IHzWf) (:text |eprintln)
                              |b $ %{} :Leaf (:at 1690435976264) (:by |rJG4IHzWf) (:text "|\"Unknown op:")
                              |h $ %{} :Leaf (:at 1690435976624) (:by |rJG4IHzWf) (:text |op)
                          |T $ %{} :Leaf (:at 1690435967748) (:by |rJG4IHzWf) (:text |store)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1499755354983) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |feather.updater)
            |r $ %{} :Expr (:at 1584874614885) (:by |rJG4IHzWf)
              :data $ {}
                |T $ %{} :Leaf (:at 1584874616480) (:by |rJG4IHzWf) (:text |:require)
                |j $ %{} :Expr (:at 1584874616720) (:by |rJG4IHzWf)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1584874620034) (:by |rJG4IHzWf) (:text |respo.cursor)
                    |r $ %{} :Leaf (:at 1584874621356) (:by |rJG4IHzWf) (:text |:refer)
                    |v $ %{} :Expr (:at 1584874621524) (:by |rJG4IHzWf)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1584874623096) (:by |rJG4IHzWf) (:text |update-states)
  :ir $ {} (:package |feather)
    :files $ {}
      |feather.comp.container $ {}
        :defs $ {}
          |comp-container $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1499755354983) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |defcomp)
                |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |comp-container)
                |r $ %{} :Expr (:at 1499755354983) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1507461830530) (:by |root) (:text |reel)
                |v $ %{} :Expr (:at 1507461832154) (:by |root)
                  :data $ {}
                    |D $ %{} :Leaf (:at 1507461833421) (:by |root) (:text |let)
                    |L $ %{} :Expr (:at 1507461834351) (:by |root)
                      :data $ {}
                        |T $ %{} :Expr (:at 1507461834650) (:by |root)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1507461835738) (:by |root) (:text |store)
                            |j $ %{} :Expr (:at 1507461836110) (:by |root)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1507461837276) (:by |root) (:text |:store)
                                |j $ %{} :Leaf (:at 1507461838285) (:by |root) (:text |reel)
                        |j $ %{} :Expr (:at 1509727104820) (:by |root)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1509727105928) (:by |root) (:text |states)
                            |j $ %{} :Expr (:at 1509727106316) (:by |root)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1509727107223) (:by |root) (:text |:states)
                                |j $ %{} :Leaf (:at 1509727108033) (:by |root) (:text |store)
                        |n $ %{} :Expr (:at 1584780921790) (:by |rJG4IHzWf)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1584780923771) (:by |rJG4IHzWf) (:text |cursor)
                            |j $ %{} :Expr (:at 1584780991636) (:by |rJG4IHzWf)
                              :data $ {}
                                |D $ %{} :Leaf (:at 1610793422595) (:by |rJG4IHzWf) (:text |either)
                                |T $ %{} :Expr (:at 1584780923944) (:by |rJG4IHzWf)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1584780925829) (:by |rJG4IHzWf) (:text |:cursor)
                                    |j $ %{} :Leaf (:at 1584780926681) (:by |rJG4IHzWf) (:text |states)
                                |j $ %{} :Expr (:at 1584780993270) (:by |rJG4IHzWf)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1584780994497) (:by |rJG4IHzWf) (:text |[])
                        |r $ %{} :Expr (:at 1584780887905) (:by |rJG4IHzWf)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1584780889620) (:by |rJG4IHzWf) (:text |state)
                            |j $ %{} :Expr (:at 1584780889933) (:by |rJG4IHzWf)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1610793424867) (:by |rJG4IHzWf) (:text |either)
                                |j $ %{} :Expr (:at 1584780894090) (:by |rJG4IHzWf)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1584780894689) (:by |rJG4IHzWf) (:text |:data)
                                    |j $ %{} :Leaf (:at 1584780900314) (:by |rJG4IHzWf) (:text |states)
                                |r $ %{} :Expr (:at 1584780901014) (:by |rJG4IHzWf)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1584780901408) (:by |rJG4IHzWf) (:text |{})
                                    |j $ %{} :Expr (:at 1584780901741) (:by |rJG4IHzWf)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1584780906050) (:by |rJG4IHzWf) (:text |:content)
                                        |j $ %{} :Leaf (:at 1584780907617) (:by |rJG4IHzWf) (:text "|\"")
                        |v $ %{} :Expr (:at 1615656188570) (:by |rJG4IHzWf)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1615656188570) (:by |rJG4IHzWf) (:text |icons)
                            |j $ %{} :Expr (:at 1615656188570) (:by |rJG4IHzWf)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1615656404906) (:by |rJG4IHzWf) (:text |to-calcit-data)
                                |j $ %{} :Expr (:at 1615656188570) (:by |rJG4IHzWf)
                                  :data $ {}
                                    |j $ %{} :Leaf (:at 1646938659209) (:by |rJG4IHzWf) (:text |js/Object.keys)
                                    |r $ %{} :Expr (:at 1615656188570) (:by |rJG4IHzWf)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1615656188570) (:by |rJG4IHzWf) (:text |.-icons)
                                        |j $ %{} :Leaf (:at 1621359726176) (:by |rJG4IHzWf) (:text |feather-icons)
                    |T $ %{} :Expr (:at 1615655674660) (:by |rJG4IHzWf)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1615655674660) (:by |rJG4IHzWf) (:text |div)
                        |j $ %{} :Expr (:at 1615655674660) (:by |rJG4IHzWf)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1615655674660) (:by |rJG4IHzWf) (:text |{})
                            |j $ %{} :Expr (:at 1615655674660) (:by |rJG4IHzWf)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1675007289969) (:by |rJG4IHzWf) (:text |:class-name)
                                |j $ %{} :Expr (:at 1615655674660) (:by |rJG4IHzWf)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1675007293614) (:by |rJG4IHzWf) (:text |str-spaced)
                                    |j $ %{} :Leaf (:at 1675007295694) (:by |rJG4IHzWf) (:text |css/global)
                                    |r $ %{} :Leaf (:at 1675007299815) (:by |rJG4IHzWf) (:text |css/fullscreen)
                        |r $ %{} :Expr (:at 1615655674660) (:by |rJG4IHzWf)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1615655674660) (:by |rJG4IHzWf) (:text |if)
                            |j $ %{} :Expr (:at 1615655674660) (:by |rJG4IHzWf)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1615655674660) (:by |rJG4IHzWf) (:text |some?)
                                |j $ %{} :Expr (:at 1615655674660) (:by |rJG4IHzWf)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1615655674660) (:by |rJG4IHzWf) (:text |:icon)
                                    |j $ %{} :Leaf (:at 1615655674660) (:by |rJG4IHzWf) (:text |store)
                            |r $ %{} :Expr (:at 1615655674660) (:by |rJG4IHzWf)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1615655674660) (:by |rJG4IHzWf) (:text |div)
                                |j $ %{} :Expr (:at 1615655674660) (:by |rJG4IHzWf)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1615655674660) (:by |rJG4IHzWf) (:text |{})
                                    |j $ %{} :Expr (:at 1615655674660) (:by |rJG4IHzWf)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1615655674660) (:by |rJG4IHzWf) (:text |:style)
                                        |j $ %{} :Expr (:at 1615655674660) (:by |rJG4IHzWf)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1615655674660) (:by |rJG4IHzWf) (:text |merge)
                                            |j $ %{} :Leaf (:at 1615655674660) (:by |rJG4IHzWf) (:text |ui/row-center)
                                            |r $ %{} :Expr (:at 1615655674660) (:by |rJG4IHzWf)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1615655674660) (:by |rJG4IHzWf) (:text |{})
                                                |j $ %{} :Expr (:at 1615655674660) (:by |rJG4IHzWf)
                                                  :data $ {}
                                                    |T $ %{} :Leaf (:at 1615655674660) (:by |rJG4IHzWf) (:text |:padding)
                                                    |j $ %{} :Leaf (:at 1615655674660) (:by |rJG4IHzWf) (:text "|\"16px")
                                                |r $ %{} :Expr (:at 1615655674660) (:by |rJG4IHzWf)
                                                  :data $ {}
                                                    |T $ %{} :Leaf (:at 1615655674660) (:by |rJG4IHzWf) (:text |:position)
                                                    |j $ %{} :Leaf (:at 1615655674660) (:by |rJG4IHzWf) (:text |:fixed)
                                                |v $ %{} :Expr (:at 1615655674660) (:by |rJG4IHzWf)
                                                  :data $ {}
                                                    |T $ %{} :Leaf (:at 1615655674660) (:by |rJG4IHzWf) (:text |:top)
                                                    |j $ %{} :Leaf (:at 1615655674660) (:by |rJG4IHzWf) (:text |0)
                                                |x $ %{} :Expr (:at 1615655674660) (:by |rJG4IHzWf)
                                                  :data $ {}
                                                    |T $ %{} :Leaf (:at 1615655674660) (:by |rJG4IHzWf) (:text |:width)
                                                    |j $ %{} :Leaf (:at 1615655674660) (:by |rJG4IHzWf) (:text "|\"100%")
                                                |y $ %{} :Expr (:at 1615655674660) (:by |rJG4IHzWf)
                                                  :data $ {}
                                                    |T $ %{} :Leaf (:at 1615655674660) (:by |rJG4IHzWf) (:text |:background-color)
                                                    |j $ %{} :Expr (:at 1615655674660) (:by |rJG4IHzWf)
                                                      :data $ {}
                                                        |T $ %{} :Leaf (:at 1615655674660) (:by |rJG4IHzWf) (:text |hsl)
                                                        |j $ %{} :Leaf (:at 1615655674660) (:by |rJG4IHzWf) (:text |0)
                                                        |r $ %{} :Leaf (:at 1615655674660) (:by |rJG4IHzWf) (:text |0)
                                                        |v $ %{} :Leaf (:at 1615655674660) (:by |rJG4IHzWf) (:text |100)
                                                        |x $ %{} :Leaf (:at 1615655674660) (:by |rJG4IHzWf) (:text |0.8)
                                                |yT $ %{} :Expr (:at 1615655674660) (:by |rJG4IHzWf)
                                                  :data $ {}
                                                    |T $ %{} :Leaf (:at 1615655674660) (:by |rJG4IHzWf) (:text |:border-bottom)
                                                    |j $ %{} :Expr (:at 1615655674660) (:by |rJG4IHzWf)
                                                      :data $ {}
                                                        |T $ %{} :Leaf (:at 1615655674660) (:by |rJG4IHzWf) (:text |str)
                                                        |j $ %{} :Leaf (:at 1615655674660) (:by |rJG4IHzWf) (:text "|\"1px solid ")
                                                        |r $ %{} :Expr (:at 1615655674660) (:by |rJG4IHzWf)
                                                          :data $ {}
                                                            |T $ %{} :Leaf (:at 1615655674660) (:by |rJG4IHzWf) (:text |hsl)
                                                            |j $ %{} :Leaf (:at 1615655674660) (:by |rJG4IHzWf) (:text |0)
                                                            |r $ %{} :Leaf (:at 1615655674660) (:by |rJG4IHzWf) (:text |0)
                                                            |v $ %{} :Leaf (:at 1615655674660) (:by |rJG4IHzWf) (:text |92)
                                |r $ %{} :Expr (:at 1615655674660) (:by |rJG4IHzWf)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1615655674660) (:by |rJG4IHzWf) (:text |<>)
                                    |j $ %{} :Expr (:at 1615655674660) (:by |rJG4IHzWf)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1615655674660) (:by |rJG4IHzWf) (:text |str)
                                        |j $ %{} :Leaf (:at 1615655674660) (:by |rJG4IHzWf) (:text "|\"Copied ")
                                        |r $ %{} :Leaf (:at 1615655674660) (:by |rJG4IHzWf) (:text "|\":")
                                        |v $ %{} :Expr (:at 1615655674660) (:by |rJG4IHzWf)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1615655674660) (:by |rJG4IHzWf) (:text |:icon)
                                            |j $ %{} :Leaf (:at 1615655674660) (:by |rJG4IHzWf) (:text |store)
                                |v $ %{} :Expr (:at 1615655674660) (:by |rJG4IHzWf)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1615655674660) (:by |rJG4IHzWf) (:text |=<)
                                    |j $ %{} :Leaf (:at 1615655674660) (:by |rJG4IHzWf) (:text |16)
                                    |r $ %{} :Leaf (:at 1615655674660) (:by |rJG4IHzWf) (:text |nil)
                                |x $ %{} :Expr (:at 1615655674660) (:by |rJG4IHzWf)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1615655674660) (:by |rJG4IHzWf) (:text |comp-i)
                                    |j $ %{} :Expr (:at 1615655674660) (:by |rJG4IHzWf)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1615655674660) (:by |rJG4IHzWf) (:text |str)
                                        |j $ %{} :Expr (:at 1615655674660) (:by |rJG4IHzWf)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1615655674660) (:by |rJG4IHzWf) (:text |:icon)
                                            |j $ %{} :Leaf (:at 1615655674660) (:by |rJG4IHzWf) (:text |store)
                                    |r $ %{} :Leaf (:at 1615655674660) (:by |rJG4IHzWf) (:text |40)
                                    |v $ %{} :Leaf (:at 1615655674660) (:by |rJG4IHzWf) (:text "|\"black")
                        |v $ %{} :Expr (:at 1615655674660) (:by |rJG4IHzWf)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1675007630594) (:by |rJG4IHzWf) (:text |list->)
                            |j $ %{} :Expr (:at 1615655674660) (:by |rJG4IHzWf)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1615655674660) (:by |rJG4IHzWf) (:text |{})
                                |j $ %{} :Expr (:at 1615655674660) (:by |rJG4IHzWf)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1615655674660) (:by |rJG4IHzWf) (:text |:style)
                                    |j $ %{} :Expr (:at 1615655674660) (:by |rJG4IHzWf)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1615655674660) (:by |rJG4IHzWf) (:text |{})
                                        |j $ %{} :Expr (:at 1615655674660) (:by |rJG4IHzWf)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1615655674660) (:by |rJG4IHzWf) (:text |:width)
                                            |j $ %{} :Leaf (:at 1615655674660) (:by |rJG4IHzWf) (:text "|\"100%")
                                        |r $ %{} :Expr (:at 1615655674660) (:by |rJG4IHzWf)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1615655674660) (:by |rJG4IHzWf) (:text |:padding)
                                            |j $ %{} :Leaf (:at 1615655674660) (:by |rJG4IHzWf) (:text |16)
                                        |v $ %{} :Expr (:at 1615655674660) (:by |rJG4IHzWf)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1615655674660) (:by |rJG4IHzWf) (:text |:overflow)
                                            |j $ %{} :Leaf (:at 1615655674660) (:by |rJG4IHzWf) (:text |:auto)
                                        |x $ %{} :Expr (:at 1615655674660) (:by |rJG4IHzWf)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1615655674660) (:by |rJG4IHzWf) (:text |:margin-top)
                                            |j $ %{} :Leaf (:at 1615655674660) (:by |rJG4IHzWf) (:text |80)
                            |r $ %{} :Expr (:at 1615655674660) (:by |rJG4IHzWf)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1619600699080) (:by |rJG4IHzWf) (:text |->)
                                |j $ %{} :Leaf (:at 1615656390578) (:by |rJG4IHzWf) (:text |icons)
                                |r $ %{} :Expr (:at 1615655674660) (:by |rJG4IHzWf)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1615655674660) (:by |rJG4IHzWf) (:text |map)
                                    |j $ %{} :Expr (:at 1615655674660) (:by |rJG4IHzWf)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1615655674660) (:by |rJG4IHzWf) (:text |fn)
                                        |j $ %{} :Expr (:at 1615655674660) (:by |rJG4IHzWf)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1615655674660) (:by |rJG4IHzWf) (:text |icon)
                                        |r $ %{} :Expr (:at 1675007624484) (:by |rJG4IHzWf)
                                          :data $ {}
                                            |D $ %{} :Leaf (:at 1675007625379) (:by |rJG4IHzWf) (:text |[])
                                            |L $ %{} :Leaf (:at 1675007626513) (:by |rJG4IHzWf) (:text |icon)
                                            |P $ %{} :Expr (:at 1675007712852) (:by |rJG4IHzWf)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1675007712308) (:by |rJG4IHzWf) (:text |memof1-call-by)
                                                |b $ %{} :Leaf (:at 1675007721603) (:by |rJG4IHzWf) (:text |icon)
                                                |h $ %{} :Leaf (:at 1675007804248) (:by |rJG4IHzWf) (:text |comp-icon-demo)
                                                |l $ %{} :Leaf (:at 1675007742578) (:by |rJG4IHzWf) (:text |icon)
                                                |o $ %{} :Expr (:at 1675007767520) (:by |rJG4IHzWf)
                                                  :data $ {}
                                                    |T $ %{} :Leaf (:at 1675007767520) (:by |rJG4IHzWf) (:text |=)
                                                    |b $ %{} :Leaf (:at 1675007767520) (:by |rJG4IHzWf) (:text |icon)
                                                    |h $ %{} :Expr (:at 1675007767520) (:by |rJG4IHzWf)
                                                      :data $ {}
                                                        |T $ %{} :Leaf (:at 1675007767520) (:by |rJG4IHzWf) (:text |:icon)
                                                        |b $ %{} :Leaf (:at 1675007767520) (:by |rJG4IHzWf) (:text |store)
                        |x $ %{} :Expr (:at 1615655674660) (:by |rJG4IHzWf)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1615655674660) (:by |rJG4IHzWf) (:text |when)
                            |j $ %{} :Leaf (:at 1615655674660) (:by |rJG4IHzWf) (:text |dev?)
                            |r $ %{} :Expr (:at 1615655674660) (:by |rJG4IHzWf)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1615655674660) (:by |rJG4IHzWf) (:text |comp-reel)
                                |j $ %{} :Expr (:at 1615655674660) (:by |rJG4IHzWf)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1615655674660) (:by |rJG4IHzWf) (:text |>>)
                                    |j $ %{} :Leaf (:at 1615655674660) (:by |rJG4IHzWf) (:text |states)
                                    |r $ %{} :Leaf (:at 1615655674660) (:by |rJG4IHzWf) (:text |:reel)
                                |r $ %{} :Leaf (:at 1615655674660) (:by |rJG4IHzWf) (:text |reel)
                                |v $ %{} :Expr (:at 1615655674660) (:by |rJG4IHzWf)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1615655674660) (:by |rJG4IHzWf) (:text |{})
          |comp-icon-demo $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1675007745480) (:by |rJG4IHzWf)
              :data $ {}
                |T $ %{} :Leaf (:at 1675007746506) (:by |rJG4IHzWf) (:text |defcomp)
                |b $ %{} :Leaf (:at 1675007812360) (:by |rJG4IHzWf) (:text |comp-icon-demo)
                |h $ %{} :Expr (:at 1675007745480) (:by |rJG4IHzWf)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1675007749028) (:by |rJG4IHzWf) (:text |icon)
                    |b $ %{} :Leaf (:at 1675007765447) (:by |rJG4IHzWf) (:text |selected?)
                |l $ %{} :Expr (:at 1675007749796) (:by |rJG4IHzWf)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1675007749796) (:by |rJG4IHzWf) (:text |div)
                    |b $ %{} :Expr (:at 1675007749796) (:by |rJG4IHzWf)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1675007749796) (:by |rJG4IHzWf) (:text |{})
                        |b $ %{} :Expr (:at 1675007749796) (:by |rJG4IHzWf)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1675007749796) (:by |rJG4IHzWf) (:text |:class-name)
                            |b $ %{} :Expr (:at 1675007749796) (:by |rJG4IHzWf)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1675007749796) (:by |rJG4IHzWf) (:text |str-spaced)
                                |b $ %{} :Leaf (:at 1675007749796) (:by |rJG4IHzWf) (:text |css/center)
                                |h $ %{} :Leaf (:at 1675007749796) (:by |rJG4IHzWf) (:text |css-cell)
                        |h $ %{} :Expr (:at 1675007749796) (:by |rJG4IHzWf)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1675007749796) (:by |rJG4IHzWf) (:text |:style)
                            |b $ %{} :Expr (:at 1675007749796) (:by |rJG4IHzWf)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1675007749796) (:by |rJG4IHzWf) (:text |if)
                                |a $ %{} :Leaf (:at 1675007762936) (:by |rJG4IHzWf) (:text |selected?)
                                |h $ %{} :Expr (:at 1675007749796) (:by |rJG4IHzWf)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1675007749796) (:by |rJG4IHzWf) (:text |{})
                                    |b $ %{} :Expr (:at 1675007749796) (:by |rJG4IHzWf)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1675007749796) (:by |rJG4IHzWf) (:text |:background-color)
                                        |b $ %{} :Expr (:at 1675007749796) (:by |rJG4IHzWf)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1675007749796) (:by |rJG4IHzWf) (:text |hsl)
                                            |b $ %{} :Leaf (:at 1675007749796) (:by |rJG4IHzWf) (:text |0)
                                            |h $ %{} :Leaf (:at 1675007749796) (:by |rJG4IHzWf) (:text |0)
                                            |l $ %{} :Leaf (:at 1675007749796) (:by |rJG4IHzWf) (:text |95)
                                    |h $ %{} :Expr (:at 1675007749796) (:by |rJG4IHzWf)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1675007749796) (:by |rJG4IHzWf) (:text |:outline)
                                        |b $ %{} :Expr (:at 1675007749796) (:by |rJG4IHzWf)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1675007749796) (:by |rJG4IHzWf) (:text |str)
                                            |b $ %{} :Leaf (:at 1675007749796) (:by |rJG4IHzWf) (:text "|\"1px solid ")
                                            |h $ %{} :Expr (:at 1675007749796) (:by |rJG4IHzWf)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1675007749796) (:by |rJG4IHzWf) (:text |hsl)
                                                |b $ %{} :Leaf (:at 1675007749796) (:by |rJG4IHzWf) (:text |200)
                                                |h $ %{} :Leaf (:at 1675007749796) (:by |rJG4IHzWf) (:text |90)
                                                |l $ %{} :Leaf (:at 1675007749796) (:by |rJG4IHzWf) (:text |89)
                                    |l $ %{} :Expr (:at 1675007749796) (:by |rJG4IHzWf)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1675007749796) (:by |rJG4IHzWf) (:text |:z-index)
                                        |b $ %{} :Leaf (:at 1675007749796) (:by |rJG4IHzWf) (:text |999)
                        |l $ %{} :Expr (:at 1675007749796) (:by |rJG4IHzWf)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1675007749796) (:by |rJG4IHzWf) (:text |:on-click)
                            |b $ %{} :Expr (:at 1675007749796) (:by |rJG4IHzWf)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1675007749796) (:by |rJG4IHzWf) (:text |fn)
                                |b $ %{} :Expr (:at 1675007749796) (:by |rJG4IHzWf)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1675007749796) (:by |rJG4IHzWf) (:text |event)
                                    |b $ %{} :Leaf (:at 1675007749796) (:by |rJG4IHzWf) (:text |d!)
                                |h $ %{} :Expr (:at 1675007749796) (:by |rJG4IHzWf)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1675007749796) (:by |rJG4IHzWf) (:text |copy!)
                                    |b $ %{} :Expr (:at 1675007749796) (:by |rJG4IHzWf)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1675007749796) (:by |rJG4IHzWf) (:text |str)
                                        |b $ %{} :Leaf (:at 1675007749796) (:by |rJG4IHzWf) (:text "|\":")
                                        |h $ %{} :Leaf (:at 1675007749796) (:by |rJG4IHzWf) (:text |icon)
                                |l $ %{} :Expr (:at 1675007749796) (:by |rJG4IHzWf)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1675007749796) (:by |rJG4IHzWf) (:text |d!)
                                    |b $ %{} :Leaf (:at 1675007749796) (:by |rJG4IHzWf) (:text |:exhibit)
                                    |h $ %{} :Leaf (:at 1675007749796) (:by |rJG4IHzWf) (:text |icon)
                    |h $ %{} :Expr (:at 1675007749796) (:by |rJG4IHzWf)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1675007749796) (:by |rJG4IHzWf) (:text |comp-icon)
                        |b $ %{} :Leaf (:at 1675007749796) (:by |rJG4IHzWf) (:text |icon)
                        |h $ %{} :Expr (:at 1675007749796) (:by |rJG4IHzWf)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1675007749796) (:by |rJG4IHzWf) (:text |{})
                            |b $ %{} :Expr (:at 1675007749796) (:by |rJG4IHzWf)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1675007749796) (:by |rJG4IHzWf) (:text |:font-size)
                                |b $ %{} :Leaf (:at 1675007749796) (:by |rJG4IHzWf) (:text |24)
                            |h $ %{} :Expr (:at 1675007749796) (:by |rJG4IHzWf)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1675007749796) (:by |rJG4IHzWf) (:text |:color)
                                |b $ %{} :Expr (:at 1675007749796) (:by |rJG4IHzWf)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1675007749796) (:by |rJG4IHzWf) (:text |hsl)
                                    |b $ %{} :Leaf (:at 1675007749796) (:by |rJG4IHzWf) (:text |200)
                                    |h $ %{} :Leaf (:at 1675007749796) (:by |rJG4IHzWf) (:text |80)
                                    |l $ %{} :Leaf (:at 1675007749796) (:by |rJG4IHzWf) (:text |60)
                        |l $ %{} :Leaf (:at 1675007749796) (:by |rJG4IHzWf) (:text |nil)
                    |l $ %{} :Expr (:at 1675007749796) (:by |rJG4IHzWf)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1675007749796) (:by |rJG4IHzWf) (:text |<>)
                        |b $ %{} :Leaf (:at 1675007749796) (:by |rJG4IHzWf) (:text |icon)
                        |h $ %{} :Leaf (:at 1675007749796) (:by |rJG4IHzWf) (:text |css-icon-name)
          |css-cell $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1675007166857) (:by |rJG4IHzWf)
              :data $ {}
                |T $ %{} :Leaf (:at 1675007168191) (:by |rJG4IHzWf) (:text |defstyle)
                |b $ %{} :Leaf (:at 1675007166857) (:by |rJG4IHzWf) (:text |css-cell)
                |h $ %{} :Expr (:at 1675007183676) (:by |rJG4IHzWf)
                  :data $ {}
                    |D $ %{} :Leaf (:at 1675007184243) (:by |rJG4IHzWf) (:text |{})
                    |T $ %{} :Expr (:at 1675007184651) (:by |rJG4IHzWf)
                      :data $ {}
                        |D $ %{} :Leaf (:at 1675007186286) (:by |rJG4IHzWf) (:text "|\"$0")
                        |T $ %{} :Expr (:at 1675007169265) (:by |rJG4IHzWf)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1675007169265) (:by |rJG4IHzWf) (:text |{})
                            |b $ %{} :Expr (:at 1675007169265) (:by |rJG4IHzWf)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1675007169265) (:by |rJG4IHzWf) (:text |:display)
                                |b $ %{} :Leaf (:at 1675007169265) (:by |rJG4IHzWf) (:text |:inline-flex)
                            |h $ %{} :Expr (:at 1675007169265) (:by |rJG4IHzWf)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1675007169265) (:by |rJG4IHzWf) (:text |:width)
                                |b $ %{} :Leaf (:at 1675007169265) (:by |rJG4IHzWf) (:text |80)
                            |l $ %{} :Expr (:at 1675007169265) (:by |rJG4IHzWf)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1675007169265) (:by |rJG4IHzWf) (:text |:height)
                                |b $ %{} :Leaf (:at 1675007169265) (:by |rJG4IHzWf) (:text |80)
                            |o $ %{} :Expr (:at 1675007169265) (:by |rJG4IHzWf)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1675007169265) (:by |rJG4IHzWf) (:text |:cursor)
                                |b $ %{} :Leaf (:at 1675007169265) (:by |rJG4IHzWf) (:text |:pointer)
                            |q $ %{} :Expr (:at 1675007230675) (:by |rJG4IHzWf)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1675007235460) (:by |rJG4IHzWf) (:text |:transition-duration)
                                |b $ %{} :Leaf (:at 1675007565354) (:by |rJG4IHzWf) (:text "|\"300ms")
                    |b $ %{} :Expr (:at 1675007205819) (:by |rJG4IHzWf)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1675007210156) (:by |rJG4IHzWf) (:text "|\"$0:hover")
                        |b $ %{} :Expr (:at 1675007210545) (:by |rJG4IHzWf)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1675007211353) (:by |rJG4IHzWf) (:text |{})
                            |b $ %{} :Expr (:at 1675007212028) (:by |rJG4IHzWf)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1675007215036) (:by |rJG4IHzWf) (:text |:background-color)
                                |b $ %{} :Expr (:at 1675007215509) (:by |rJG4IHzWf)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1675007216244) (:by |rJG4IHzWf) (:text |hsl)
                                    |b $ %{} :Leaf (:at 1675007216603) (:by |rJG4IHzWf) (:text |0)
                                    |h $ %{} :Leaf (:at 1675007216907) (:by |rJG4IHzWf) (:text |0)
                                    |l $ %{} :Leaf (:at 1675007222005) (:by |rJG4IHzWf) (:text |96)
                    |h $ %{} :Expr (:at 1675007478461) (:by |rJG4IHzWf)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1675007484783) (:by |rJG4IHzWf) (:text "|\"$0:active")
                        |b $ %{} :Expr (:at 1675007485098) (:by |rJG4IHzWf)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1675007485463) (:by |rJG4IHzWf) (:text |{})
                            |X $ %{} :Expr (:at 1675007523631) (:by |rJG4IHzWf)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1675007523631) (:by |rJG4IHzWf) (:text |:transition-duration)
                                |b $ %{} :Leaf (:at 1675007525294) (:by |rJG4IHzWf) (:text "|\"0ms")
                            |b $ %{} :Expr (:at 1675007489825) (:by |rJG4IHzWf)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1675007489825) (:by |rJG4IHzWf) (:text |:background-color)
                                |b $ %{} :Expr (:at 1675007489825) (:by |rJG4IHzWf)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1675007489825) (:by |rJG4IHzWf) (:text |hsl)
                                    |b $ %{} :Leaf (:at 1675007489825) (:by |rJG4IHzWf) (:text |0)
                                    |h $ %{} :Leaf (:at 1675007489825) (:by |rJG4IHzWf) (:text |0)
                                    |l $ %{} :Leaf (:at 1675007492458) (:by |rJG4IHzWf) (:text |90)
                            |h $ %{} :Expr (:at 1675007502537) (:by |rJG4IHzWf)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1675007505407) (:by |rJG4IHzWf) (:text |:transform)
                                |b $ %{} :Leaf (:at 1675007512428) (:by |rJG4IHzWf) (:text "|\"scale(1.02)")
          |css-icon-name $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1675007327401) (:by |rJG4IHzWf)
              :data $ {}
                |T $ %{} :Leaf (:at 1675007328553) (:by |rJG4IHzWf) (:text |defstyle)
                |b $ %{} :Leaf (:at 1675007327401) (:by |rJG4IHzWf) (:text |css-icon-name)
                |h $ %{} :Expr (:at 1675007327401) (:by |rJG4IHzWf)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1675007329848) (:by |rJG4IHzWf) (:text |{})
                    |b $ %{} :Expr (:at 1675007330141) (:by |rJG4IHzWf)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1675007331574) (:by |rJG4IHzWf) (:text "|\"$0")
                        |b $ %{} :Expr (:at 1675007332765) (:by |rJG4IHzWf)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1675007332765) (:by |rJG4IHzWf) (:text |{})
                            |b $ %{} :Expr (:at 1675007332765) (:by |rJG4IHzWf)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1675007332765) (:by |rJG4IHzWf) (:text |:font-size)
                                |b $ %{} :Leaf (:at 1675007332765) (:by |rJG4IHzWf) (:text |12)
                            |h $ %{} :Expr (:at 1675007332765) (:by |rJG4IHzWf)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1675007332765) (:by |rJG4IHzWf) (:text |:color)
                                |b $ %{} :Expr (:at 1675007332765) (:by |rJG4IHzWf)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1675007332765) (:by |rJG4IHzWf) (:text |hsl)
                                    |b $ %{} :Leaf (:at 1675007332765) (:by |rJG4IHzWf) (:text |0)
                                    |h $ %{} :Leaf (:at 1675007332765) (:by |rJG4IHzWf) (:text |0)
                                    |l $ %{} :Leaf (:at 1675007332765) (:by |rJG4IHzWf) (:text |80)
                            |l $ %{} :Expr (:at 1675007332765) (:by |rJG4IHzWf)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1675007332765) (:by |rJG4IHzWf) (:text |:white-space)
                                |b $ %{} :Leaf (:at 1675007332765) (:by |rJG4IHzWf) (:text |:nowrap)
        :ns $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1499755354983) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |ns)
              |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |feather.comp.container)
              |v $ %{} :Expr (:at 1499755354983) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:require)
                  |r $ %{} :Expr (:at 1499755354983) (:by nil)
                    :data $ {}
                      |j $ %{} :Leaf (:at 1516527080962) (:by |root) (:text |respo-ui.core)
                      |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:as)
                      |v $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |ui)
                  |s $ %{} :Expr (:at 1675007138849) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1675007141558) (:by |rJG4IHzWf) (:text |respo-ui.css)
                      |b $ %{} :Leaf (:at 1675007142220) (:by |rJG4IHzWf) (:text |:as)
                      |h $ %{} :Leaf (:at 1675007142988) (:by |rJG4IHzWf) (:text |css)
                  |t $ %{} :Expr (:at 1615655746303) (:by |rJG4IHzWf)
                    :data $ {}
                      |j $ %{} :Leaf (:at 1615655750672) (:by |rJG4IHzWf) (:text |respo.util.format)
                      |r $ %{} :Leaf (:at 1615655751554) (:by |rJG4IHzWf) (:text |:refer)
                      |v $ %{} :Expr (:at 1615655751792) (:by |rJG4IHzWf)
                        :data $ {}
                          |j $ %{} :Leaf (:at 1615655752518) (:by |rJG4IHzWf) (:text |hsl)
                  |v $ %{} :Expr (:at 1499755354983) (:by nil)
                    :data $ {}
                      |j $ %{} :Leaf (:at 1540958704705) (:by |root) (:text |respo.core)
                      |r $ %{} :Leaf (:at 1508946162679) (:by |root) (:text |:refer)
                      |v $ %{} :Expr (:at 1499755354983) (:by nil)
                        :data $ {}
                          |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |defcomp)
                          |l $ %{} :Leaf (:at 1573355389740) (:by |rJG4IHzWf) (:text |defeffect)
                          |o $ %{} :Leaf (:at 1675007634962) (:by |rJG4IHzWf) (:text |list->)
                          |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |<>)
                          |t $ %{} :Leaf (:at 1584780606618) (:by |rJG4IHzWf) (:text |>>)
                          |v $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |div)
                          |x $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |button)
                          |xT $ %{} :Leaf (:at 1512359490531) (:by |rJG4IHzWf) (:text |textarea)
                          |y $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |span)
                          |yT $ %{} :Leaf (:at 1552321107012) (:by |rJG4IHzWf) (:text |input)
                  |x $ %{} :Expr (:at 1499755354983) (:by nil)
                    :data $ {}
                      |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |respo.comp.space)
                      |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:refer)
                      |v $ %{} :Expr (:at 1499755354983) (:by nil)
                        :data $ {}
                          |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |=<)
                  |y $ %{} :Expr (:at 1507461845717) (:by |root)
                    :data $ {}
                      |j $ %{} :Leaf (:at 1507461855480) (:by |root) (:text |reel.comp.reel)
                      |r $ %{} :Leaf (:at 1507461856264) (:by |root) (:text |:refer)
                      |v $ %{} :Expr (:at 1507461856484) (:by |root)
                        :data $ {}
                          |j $ %{} :Leaf (:at 1507461858342) (:by |root) (:text |comp-reel)
                  |yT $ %{} :Expr (:at 1519699088529) (:by |root)
                    :data $ {}
                      |j $ %{} :Leaf (:at 1519699092590) (:by |root) (:text |respo-md.comp.md)
                      |r $ %{} :Leaf (:at 1519699093410) (:by |root) (:text |:refer)
                      |v $ %{} :Expr (:at 1519699093683) (:by |root)
                        :data $ {}
                          |j $ %{} :Leaf (:at 1519699096732) (:by |root) (:text |comp-md)
                  |yj $ %{} :Expr (:at 1521954061310) (:by |root)
                    :data $ {}
                      |j $ %{} :Leaf (:at 1527788377809) (:by |root) (:text |feather.config)
                      |r $ %{} :Leaf (:at 1521954064826) (:by |root) (:text |:refer)
                      |v $ %{} :Expr (:at 1521954065004) (:by |root)
                        :data $ {}
                          |j $ %{} :Leaf (:at 1521954067604) (:by |root) (:text |dev?)
                  |yr $ %{} :Expr (:at 1615655690153) (:by |rJG4IHzWf)
                    :data $ {}
                      |j $ %{} :Leaf (:at 1615655690153) (:by |rJG4IHzWf) (:text |feather.core)
                      |r $ %{} :Leaf (:at 1615655690153) (:by |rJG4IHzWf) (:text |:refer)
                      |v $ %{} :Expr (:at 1615655690153) (:by |rJG4IHzWf)
                        :data $ {}
                          |j $ %{} :Leaf (:at 1615655690153) (:by |rJG4IHzWf) (:text |comp-icon)
                          |r $ %{} :Leaf (:at 1615655690153) (:by |rJG4IHzWf) (:text |comp-i)
                  |yv $ %{} :Expr (:at 1615655693630) (:by |rJG4IHzWf)
                    :data $ {}
                      |j $ %{} :Leaf (:at 1615655693630) (:by |rJG4IHzWf) (:text "|\"feather-icons")
                      |r $ %{} :Leaf (:at 1621359730378) (:by |rJG4IHzWf) (:text |:default)
                      |v $ %{} :Leaf (:at 1615655693630) (:by |rJG4IHzWf) (:text |feather-icons)
                  |yx $ %{} :Expr (:at 1615655696542) (:by |rJG4IHzWf)
                    :data $ {}
                      |j $ %{} :Leaf (:at 1615655696542) (:by |rJG4IHzWf) (:text "|\"copy-text-to-clipboard")
                      |r $ %{} :Leaf (:at 1646938691300) (:by |rJG4IHzWf) (:text |:default)
                      |v $ %{} :Leaf (:at 1615655696542) (:by |rJG4IHzWf) (:text |copy!)
                  |z $ %{} :Expr (:at 1675007175868) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1675007176967) (:by |rJG4IHzWf) (:text |respo.css)
                      |b $ %{} :Leaf (:at 1675007177690) (:by |rJG4IHzWf) (:text |:refer)
                      |h $ %{} :Expr (:at 1675007180285) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1675007181629) (:by |rJG4IHzWf) (:text |defstyle)
                  |zD $ %{} :Expr (:at 1675007644154) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1675007678315) (:by |rJG4IHzWf) (:text |memof.once)
                      |b $ %{} :Leaf (:at 1675007679260) (:by |rJG4IHzWf) (:text |:refer)
                      |h $ %{} :Expr (:at 1675007679537) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1675007685987) (:by |rJG4IHzWf) (:text |memof1-call-by)
      |feather.config $ {}
        :defs $ {}
          |dev? $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1659198782323) (:by |rJG4IHzWf)
              :data $ {}
                |T $ %{} :Leaf (:at 1659198782323) (:by |rJG4IHzWf) (:text |def)
                |b $ %{} :Leaf (:at 1659198782323) (:by |rJG4IHzWf) (:text |dev?)
                |h $ %{} :Expr (:at 1659198782323) (:by |rJG4IHzWf)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1659198785384) (:by |rJG4IHzWf) (:text |=)
                    |b $ %{} :Leaf (:at 1659198788435) (:by |rJG4IHzWf) (:text "|\"dev")
                    |h $ %{} :Expr (:at 1659198788733) (:by |rJG4IHzWf)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1659198790936) (:by |rJG4IHzWf) (:text |get-env)
                        |b $ %{} :Leaf (:at 1659198791856) (:by |rJG4IHzWf) (:text "|\"mode")
                        |h $ %{} :Leaf (:at 1659198793617) (:by |rJG4IHzWf) (:text "|\"release")
          |site $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1545933382603) (:by |root)
              :data $ {}
                |T $ %{} :Leaf (:at 1518157345496) (:by |root) (:text |def)
                |j $ %{} :Leaf (:at 1518157327696) (:by |root) (:text |site)
                |r $ %{} :Expr (:at 1518157327696) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1518157346643) (:by |root) (:text |{})
                    |y $ %{} :Expr (:at 1527868456422) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1527868457305) (:by |root) (:text |:title)
                        |j $ %{} :Leaf (:at 1540053963607) (:by |root) (:text "|\"Calcit")
                    |yT $ %{} :Expr (:at 1527868457696) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1527868458476) (:by |root) (:text |:icon)
                        |j $ %{} :Leaf (:at 1527868478815) (:by |root) (:text "|\"http://cdn.tiye.me/logo/mvc-works.png")
                    |yf $ %{} :Expr (:at 1544956719115) (:by |rJG4IHzWf)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1544956719115) (:by |rJG4IHzWf) (:text |:storage-key)
                        |j $ %{} :Leaf (:at 1646938998190) (:by |rJG4IHzWf) (:text "|\"respo-feather")
        :ns $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1527788237503) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1527788237503) (:by |root) (:text |ns)
              |j $ %{} :Leaf (:at 1527788237503) (:by |root) (:text |feather.config)
      |feather.core $ {}
        :defs $ {}
          |comp-i $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1615655659087) (:by |rJG4IHzWf)
              :data $ {}
                |T $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |defcomp)
                |j $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |comp-i)
                |r $ %{} :Expr (:at 1615655659087) (:by |rJG4IHzWf)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |icon)
                    |j $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |size)
                    |r $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |color)
                |v $ %{} :Expr (:at 1615655659087) (:by |rJG4IHzWf)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |comp-icon)
                    |j $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |icon)
                    |r $ %{} :Expr (:at 1615655659087) (:by |rJG4IHzWf)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |{})
                        |j $ %{} :Expr (:at 1615655659087) (:by |rJG4IHzWf)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |:font-size)
                            |j $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |size)
                        |r $ %{} :Expr (:at 1615655659087) (:by |rJG4IHzWf)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |:color)
                            |j $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |color)
                    |v $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |nil)
          |comp-icon $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1615655659087) (:by |rJG4IHzWf)
              :data $ {}
                |T $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |defcomp)
                |j $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |comp-icon)
                |r $ %{} :Expr (:at 1615655659087) (:by |rJG4IHzWf)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |icon)
                    |j $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |style)
                    |r $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |on-click)
                |v $ %{} :Expr (:at 1615655659087) (:by |rJG4IHzWf)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |assert)
                    |b $ %{} :Leaf (:at 1690436034955) (:by |rJG4IHzWf) (:text "|\"1: icon name in string")
                    |j $ %{} :Expr (:at 1615655659087) (:by |rJG4IHzWf)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |or)
                        |j $ %{} :Expr (:at 1615655659087) (:by |rJG4IHzWf)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |string?)
                            |j $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |icon)
                        |r $ %{} :Expr (:at 1615655659087) (:by |rJG4IHzWf)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1685265671844) (:by |rJG4IHzWf) (:text |tag?)
                            |j $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |icon)
                |x $ %{} :Expr (:at 1615655659087) (:by |rJG4IHzWf)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |assert)
                    |b $ %{} :Leaf (:at 1690436037291) (:by |rJG4IHzWf) (:text "|\"2: size in number")
                    |j $ %{} :Expr (:at 1615655659087) (:by |rJG4IHzWf)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |number?)
                        |j $ %{} :Expr (:at 1615655659087) (:by |rJG4IHzWf)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |:font-size)
                            |j $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |style)
                |y $ %{} :Expr (:at 1615655659087) (:by |rJG4IHzWf)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |assert)
                    |b $ %{} :Leaf (:at 1690436039579) (:by |rJG4IHzWf) (:text "|\"3: color in string")
                    |j $ %{} :Expr (:at 1615655659087) (:by |rJG4IHzWf)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |string?)
                        |j $ %{} :Expr (:at 1615655659087) (:by |rJG4IHzWf)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |:color)
                            |j $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |style)
                |yT $ %{} :Expr (:at 1615655659087) (:by |rJG4IHzWf)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |let)
                    |j $ %{} :Expr (:at 1615655659087) (:by |rJG4IHzWf)
                      :data $ {}
                        |T $ %{} :Expr (:at 1615655659087) (:by |rJG4IHzWf)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |icon-name)
                            |j $ %{} :Expr (:at 1615655659087) (:by |rJG4IHzWf)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1615656142438) (:by |rJG4IHzWf) (:text |turn-string)
                                |j $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |icon)
                        |j $ %{} :Expr (:at 1615655659087) (:by |rJG4IHzWf)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |obj)
                            |j $ %{} :Expr (:at 1615655659087) (:by |rJG4IHzWf)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |aget)
                                |j $ %{} :Expr (:at 1615655659087) (:by |rJG4IHzWf)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |.-icons)
                                    |j $ %{} :Leaf (:at 1621359769580) (:by |rJG4IHzWf) (:text |feather-icons)
                                |r $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |icon-name)
                    |r $ %{} :Expr (:at 1615655659087) (:by |rJG4IHzWf)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |if)
                        |j $ %{} :Expr (:at 1615655659087) (:by |rJG4IHzWf)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |some?)
                            |j $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |obj)
                        |r $ %{} :Expr (:at 1615655659087) (:by |rJG4IHzWf)
                          :data $ {}
                            |D $ %{} :Leaf (:at 1615655964464) (:by |rJG4IHzWf) (:text |create-element)
                            |T $ %{} :Leaf (:at 1615655983655) (:by |rJG4IHzWf) (:text |:i)
                            |j $ %{} :Expr (:at 1615655659087) (:by |rJG4IHzWf)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |{})
                                |j $ %{} :Expr (:at 1615655659087) (:by |rJG4IHzWf)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |:style)
                                    |j $ %{} :Expr (:at 1615655659087) (:by |rJG4IHzWf)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |merge)
                                        |j $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |style-base)
                                        |r $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |style)
                                |r $ %{} :Expr (:at 1615655659087) (:by |rJG4IHzWf)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |:innerHTML)
                                    |j $ %{} :Expr (:at 1615655659087) (:by |rJG4IHzWf)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |if)
                                        |j $ %{} :Expr (:at 1615655659087) (:by |rJG4IHzWf)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |some?)
                                            |j $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |obj)
                                        |r $ %{} :Expr (:at 1615655659087) (:by |rJG4IHzWf)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1675007384983) (:by |rJG4IHzWf) (:text |.!toSvg)
                                            |j $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |obj)
                                            |r $ %{} :Expr (:at 1615655659087) (:by |rJG4IHzWf)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1615656114669) (:by |rJG4IHzWf) (:text |to-js-data)
                                                |j $ %{} :Expr (:at 1615655659087) (:by |rJG4IHzWf)
                                                  :data $ {}
                                                    |T $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |{})
                                                    |j $ %{} :Expr (:at 1615655659087) (:by |rJG4IHzWf)
                                                      :data $ {}
                                                        |T $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |:width)
                                                        |j $ %{} :Expr (:at 1615655659087) (:by |rJG4IHzWf)
                                                          :data $ {}
                                                            |T $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |:font-size)
                                                            |j $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |style)
                                                    |r $ %{} :Expr (:at 1615655659087) (:by |rJG4IHzWf)
                                                      :data $ {}
                                                        |T $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |:height)
                                                        |j $ %{} :Expr (:at 1615655659087) (:by |rJG4IHzWf)
                                                          :data $ {}
                                                            |T $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |:font-size)
                                                            |j $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |style)
                                                    |v $ %{} :Expr (:at 1615655659087) (:by |rJG4IHzWf)
                                                      :data $ {}
                                                        |T $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |:color)
                                                        |j $ %{} :Expr (:at 1615655659087) (:by |rJG4IHzWf)
                                                          :data $ {}
                                                            |T $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |:color)
                                                            |j $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |style)
                                |v $ %{} :Expr (:at 1615655659087) (:by |rJG4IHzWf)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |:on-click)
                                    |j $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |on-click)
                        |v $ %{} :Expr (:at 1615655659087) (:by |rJG4IHzWf)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |do)
                            |j $ %{} :Expr (:at 1615655659087) (:by |rJG4IHzWf)
                              :data $ {}
                                |j $ %{} :Leaf (:at 1675007349869) (:by |rJG4IHzWf) (:text |js/console.error)
                                |r $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text "|\"No icon named:")
                                |v $ %{} :Expr (:at 1615655659087) (:by |rJG4IHzWf)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1615656146931) (:by |rJG4IHzWf) (:text |turn-string)
                                    |j $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |icon)
                            |r $ %{} :Expr (:at 1615655659087) (:by |rJG4IHzWf)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |span)
                                |j $ %{} :Expr (:at 1615655659087) (:by |rJG4IHzWf)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |{})
                                    |j $ %{} :Expr (:at 1615655659087) (:by |rJG4IHzWf)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |:on-click)
                                        |j $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |on-click)
                                    |r $ %{} :Expr (:at 1615655659087) (:by |rJG4IHzWf)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1675007382618) (:by |rJG4IHzWf) (:text |:stle)
                                        |j $ %{} :Expr (:at 1615655659087) (:by |rJG4IHzWf)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1675007379101) (:by |rJG4IHzWf) (:text |merge)
                                            |j $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |style-base)
                                            |r $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |style)
                                            |v $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |style-error)
                                |r $ %{} :Expr (:at 1615655659087) (:by |rJG4IHzWf)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |<>)
                                    |j $ %{} :Expr (:at 1615655659087) (:by |rJG4IHzWf)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |str)
                                        |j $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text "|\"No ")
                                        |r $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |icon-name)
          |style-base $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1615655659087) (:by |rJG4IHzWf)
              :data $ {}
                |T $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |def)
                |j $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |style-base)
                |r $ %{} :Expr (:at 1615655659087) (:by |rJG4IHzWf)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |{})
                    |j $ %{} :Expr (:at 1615655659087) (:by |rJG4IHzWf)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |:display)
                        |j $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |:inline-block)
          |style-error $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1615655659087) (:by |rJG4IHzWf)
              :data $ {}
                |T $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |def)
                |j $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |style-error)
                |r $ %{} :Expr (:at 1615655659087) (:by |rJG4IHzWf)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |{})
                    |j $ %{} :Expr (:at 1615655659087) (:by |rJG4IHzWf)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |:background-color)
                        |j $ %{} :Expr (:at 1615655659087) (:by |rJG4IHzWf)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |hsl)
                            |j $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |0)
                            |r $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |80)
                            |v $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |70)
                    |r $ %{} :Expr (:at 1615655659087) (:by |rJG4IHzWf)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |:color)
                        |j $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |:white)
                    |v $ %{} :Expr (:at 1615655659087) (:by |rJG4IHzWf)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |:padding)
                        |j $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text "|\"0 8px")
                    |x $ %{} :Expr (:at 1615655659087) (:by |rJG4IHzWf)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |:line-height)
                        |j $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text "|\"24px")
                    |y $ %{} :Expr (:at 1615655659087) (:by |rJG4IHzWf)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |:border-radius)
                        |j $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text "|\"12px")
        :ns $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1615655659087) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |ns)
              |j $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |feather.core)
              |r $ %{} :Expr (:at 1615655659087) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |:require)
                  |j $ %{} :Expr (:at 1615655659087) (:by |rJG4IHzWf)
                    :data $ {}
                      |j $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |respo.core)
                      |r $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |:refer)
                      |v $ %{} :Expr (:at 1615655659087) (:by |rJG4IHzWf)
                        :data $ {}
                          |j $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |defcomp)
                          |n $ %{} :Leaf (:at 1615655988747) (:by |rJG4IHzWf) (:text |create-element)
                          |r $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |span)
                          |v $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |div)
                          |x $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |i)
                          |y $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |<>)
                  |r $ %{} :Expr (:at 1615655659087) (:by |rJG4IHzWf)
                    :data $ {}
                      |j $ %{} :Leaf (:at 1615656003715) (:by |rJG4IHzWf) (:text |respo.util.format)
                      |r $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |:refer)
                      |v $ %{} :Expr (:at 1615655659087) (:by |rJG4IHzWf)
                        :data $ {}
                          |j $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |hsl)
                  |v $ %{} :Expr (:at 1615655659087) (:by |rJG4IHzWf)
                    :data $ {}
                      |j $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text "|\"feather-icons")
                      |r $ %{} :Leaf (:at 1621359772328) (:by |rJG4IHzWf) (:text |:default)
                      |v $ %{} :Leaf (:at 1615655659087) (:by |rJG4IHzWf) (:text |feather-icons)
      |feather.main $ {}
        :defs $ {}
          |*reel $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1499755354983) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1610792986987) (:by |rJG4IHzWf) (:text |defatom)
                |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |*reel)
                |r $ %{} :Expr (:at 1507399777531) (:by |root)
                  :data $ {}
                    |D $ %{} :Leaf (:at 1507399778895) (:by |root) (:text |->)
                    |T $ %{} :Leaf (:at 1507399776350) (:by |root) (:text |reel-schema/reel)
                    |j $ %{} :Expr (:at 1507399779656) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1507399781682) (:by |root) (:text |assoc)
                        |j $ %{} :Leaf (:at 1507401405076) (:by |root) (:text |:base)
                        |r $ %{} :Leaf (:at 1507399787471) (:by |root) (:text |schema/store)
                    |r $ %{} :Expr (:at 1507399779656) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1507399781682) (:by |root) (:text |assoc)
                        |j $ %{} :Leaf (:at 1507399793097) (:by |root) (:text |:store)
                        |r $ %{} :Leaf (:at 1507399787471) (:by |root) (:text |schema/store)
          |dispatch! $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1499755354983) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |defn)
                |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |dispatch!)
                |r $ %{} :Expr (:at 1499755354983) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |op)
                |t $ %{} :Expr (:at 1547437686766) (:by |root)
                  :data $ {}
                    |D $ %{} :Leaf (:at 1547437687530) (:by |root) (:text |when)
                    |L $ %{} :Leaf (:at 1547437691006) (:by |root) (:text |config/dev?)
                    |T $ %{} :Expr (:at 1518156274050) (:by |root)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1659198829001) (:by |rJG4IHzWf) (:text |js/console.log)
                        |r $ %{} :Leaf (:at 1547437698992) (:by |root) (:text "|\"Dispatch:")
                        |v $ %{} :Leaf (:at 1518156280471) (:by |root) (:text |op)
                |v $ %{} :Expr (:at 1584780634192) (:by |rJG4IHzWf)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |reset!)
                    |j $ %{} :Leaf (:at 1507399899641) (:by |root) (:text |*reel)
                    |r $ %{} :Expr (:at 1507399884621) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1507399887573) (:by |root) (:text |reel-updater)
                        |j $ %{} :Leaf (:at 1507399888500) (:by |root) (:text |updater)
                        |r $ %{} :Leaf (:at 1507399891576) (:by |root) (:text |@*reel)
                        |v $ %{} :Leaf (:at 1507399892687) (:by |root) (:text |op)
          |main! $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1499755354983) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |defn)
                |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |main!)
                |r $ %{} :Expr (:at 1499755354983) (:by nil)
                  :data $ {}
                |s $ %{} :Expr (:at 1615656711986) (:by |rJG4IHzWf)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1615656716606) (:by |rJG4IHzWf) (:text |load-console-formatter!)
                |t $ %{} :Expr (:at 1544874433785) (:by |rJG4IHzWf)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1544874434638) (:by |rJG4IHzWf) (:text |println)
                    |j $ %{} :Leaf (:at 1544874509800) (:by |rJG4IHzWf) (:text "|\"Running mode:")
                    |r $ %{} :Expr (:at 1544874440404) (:by |rJG4IHzWf)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1544874440190) (:by |rJG4IHzWf) (:text |if)
                        |j $ %{} :Leaf (:at 1659198775226) (:by |rJG4IHzWf) (:text |config/dev?)
                        |r $ %{} :Leaf (:at 1544874449063) (:by |rJG4IHzWf) (:text "|\"dev")
                        |v $ %{} :Leaf (:at 1544874452316) (:by |rJG4IHzWf) (:text "|\"release")
                |v $ %{} :Expr (:at 1659198804852) (:by |rJG4IHzWf)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1659198805223) (:by |rJG4IHzWf) (:text |if)
                    |b $ %{} :Leaf (:at 1659198807836) (:by |rJG4IHzWf) (:text |config/dev?)
                    |h $ %{} :Expr (:at 1659198809536) (:by |rJG4IHzWf)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1659198816316) (:by |rJG4IHzWf) (:text |load-console-formatter!)
                |x $ %{} :Expr (:at 1499755354983) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |render-app!)
                |y $ %{} :Expr (:at 1499755354983) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |add-watch)
                    |j $ %{} :Leaf (:at 1507399915531) (:by |root) (:text |*reel)
                    |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:changes)
                    |v $ %{} :Expr (:at 1499755354983) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |fn)
                        |j $ %{} :Expr (:at 1499755354983) (:by nil)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1612280609284) (:by |rJG4IHzWf) (:text |reel)
                            |j $ %{} :Leaf (:at 1612280610651) (:by |rJG4IHzWf) (:text |prev)
                        |r $ %{} :Expr (:at 1499755354983) (:by nil)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1646938914821) (:by |rJG4IHzWf) (:text |render-app!)
                |yD $ %{} :Expr (:at 1507461684494) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1507461739167) (:by |root) (:text |listen-devtools!)
                    |j $ %{} :Leaf (:at 1507461691211) (:by |root) (:text ||a)
                    |r $ %{} :Leaf (:at 1507461693919) (:by |root) (:text |dispatch!)
                |yL $ %{} :Expr (:at 1518157357847) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1659198576060) (:by |rJG4IHzWf) (:text |js/window.addEventListener)
                    |r $ %{} :Leaf (:at 1518157458163) (:by |root) (:text ||beforeunload)
                    |v $ %{} :Expr (:at 1612344221583) (:by |rJG4IHzWf)
                      :data $ {}
                        |D $ %{} :Leaf (:at 1612344222204) (:by |rJG4IHzWf) (:text |fn)
                        |L $ %{} :Expr (:at 1612344222530) (:by |rJG4IHzWf)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1612344223520) (:by |rJG4IHzWf) (:text |event)
                        |T $ %{} :Expr (:at 1612344224533) (:by |rJG4IHzWf)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1533919515671) (:by |rJG4IHzWf) (:text |persist-storage!)
                |yN $ %{} :Expr (:at 1533919529874) (:by |rJG4IHzWf)
                  :data $ {}
                    |D $ %{} :Leaf (:at 1659198585397) (:by |rJG4IHzWf) (:text |flipped)
                    |L $ %{} :Leaf (:at 1659198614055) (:by |rJG4IHzWf) (:text |js/setInterval)
                    |b $ %{} :Expr (:at 1659198596645) (:by |rJG4IHzWf)
                      :data $ {}
                        |D $ %{} :Leaf (:at 1659198597611) (:by |rJG4IHzWf) (:text |*)
                        |T $ %{} :Leaf (:at 1544956066171) (:by |rJG4IHzWf) (:text |60)
                        |b $ %{} :Leaf (:at 1659198599511) (:by |rJG4IHzWf) (:text |1000)
                    |j $ %{} :Leaf (:at 1533919535136) (:by |rJG4IHzWf) (:text |persist-storage!)
                |yP $ %{} :Expr (:at 1518157492640) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1518157495438) (:by |root) (:text |let)
                    |j $ %{} :Expr (:at 1518157495644) (:by |root)
                      :data $ {}
                        |T $ %{} :Expr (:at 1518157495826) (:by |root)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1518157496930) (:by |root) (:text |raw)
                            |j $ %{} :Expr (:at 1518157497615) (:by |root)
                              :data $ {}
                                |j $ %{} :Leaf (:at 1659198618921) (:by |rJG4IHzWf) (:text |js/localStorage.getItem)
                                |r $ %{} :Expr (:at 1518157506313) (:by |root)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1544956709260) (:by |rJG4IHzWf) (:text |:storage-key)
                                    |j $ %{} :Leaf (:at 1527788293499) (:by |root) (:text |config/site)
                    |r $ %{} :Expr (:at 1518157514334) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1533919640958) (:by |rJG4IHzWf) (:text |when)
                        |j $ %{} :Expr (:at 1518157515117) (:by |root)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1518157515786) (:by |root) (:text |some?)
                            |j $ %{} :Leaf (:at 1518157516878) (:by |root) (:text |raw)
                        |r $ %{} :Expr (:at 1518157521635) (:by |root)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1518157523818) (:by |root) (:text |dispatch!)
                            |r $ %{} :Expr (:at 1690435998351) (:by |rJG4IHzWf)
                              :data $ {}
                                |D $ %{} :Leaf (:at 1690435998901) (:by |rJG4IHzWf) (:text |::)
                                |L $ %{} :Leaf (:at 1690435999332) (:by |rJG4IHzWf) (:text |:hydrate-storage)
                                |T $ %{} :Expr (:at 1518157527987) (:by |root)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1659198638855) (:by |rJG4IHzWf) (:text |parse-cirru-edn)
                                    |j $ %{} :Leaf (:at 1518157531240) (:by |root) (:text |raw)
                |yT $ %{} :Expr (:at 1499755354983) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |println)
                    |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text "||App started.")
          |mount-target $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1499755354983) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |def)
                |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |mount-target)
                |r $ %{} :Expr (:at 1499755354983) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |.querySelector)
                    |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |js/document)
                    |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text ||.app)
          |persist-storage! $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1533919515671) (:by |rJG4IHzWf)
              :data $ {}
                |T $ %{} :Leaf (:at 1533919517365) (:by |rJG4IHzWf) (:text |defn)
                |j $ %{} :Leaf (:at 1533919515671) (:by |rJG4IHzWf) (:text |persist-storage!)
                |r $ %{} :Expr (:at 1533919515671) (:by |rJG4IHzWf)
                  :data $ {}
                |v $ %{} :Expr (:at 1533919515671) (:by |rJG4IHzWf)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1659198606924) (:by |rJG4IHzWf) (:text |js/localStorage.setItem)
                    |r $ %{} :Expr (:at 1533919515671) (:by |rJG4IHzWf)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1544956703087) (:by |rJG4IHzWf) (:text |:storage-key)
                        |j $ %{} :Leaf (:at 1533919515671) (:by |rJG4IHzWf) (:text |config/site)
                    |v $ %{} :Expr (:at 1533919515671) (:by |rJG4IHzWf)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1659198629759) (:by |rJG4IHzWf) (:text |format-cirru-edn)
                        |j $ %{} :Expr (:at 1533919515671) (:by |rJG4IHzWf)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1533919515671) (:by |rJG4IHzWf) (:text |:store)
                            |j $ %{} :Leaf (:at 1533919515671) (:by |rJG4IHzWf) (:text |@*reel)
          |reload! $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1646938836450) (:by |rJG4IHzWf)
              :data $ {}
                |T $ %{} :Leaf (:at 1646938836450) (:by |rJG4IHzWf) (:text |defn)
                |b $ %{} :Leaf (:at 1646938836450) (:by |rJG4IHzWf) (:text |reload!)
                |h $ %{} :Expr (:at 1646938836450) (:by |rJG4IHzWf)
                  :data $ {}
                |l $ %{} :Expr (:at 1646938836450) (:by |rJG4IHzWf)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1646938836450) (:by |rJG4IHzWf) (:text |if)
                    |b $ %{} :Expr (:at 1646938836450) (:by |rJG4IHzWf)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1646938836450) (:by |rJG4IHzWf) (:text |nil?)
                        |b $ %{} :Leaf (:at 1646938836450) (:by |rJG4IHzWf) (:text |build-errors)
                    |h $ %{} :Expr (:at 1646938836450) (:by |rJG4IHzWf)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1646938836450) (:by |rJG4IHzWf) (:text |do)
                        |b $ %{} :Expr (:at 1646938836450) (:by |rJG4IHzWf)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1646938836450) (:by |rJG4IHzWf) (:text |remove-watch)
                            |b $ %{} :Leaf (:at 1646938836450) (:by |rJG4IHzWf) (:text |*reel)
                            |h $ %{} :Leaf (:at 1646938836450) (:by |rJG4IHzWf) (:text |:changes)
                        |h $ %{} :Expr (:at 1646938836450) (:by |rJG4IHzWf)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1646938836450) (:by |rJG4IHzWf) (:text |clear-cache!)
                        |l $ %{} :Expr (:at 1646938836450) (:by |rJG4IHzWf)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1646938836450) (:by |rJG4IHzWf) (:text |add-watch)
                            |b $ %{} :Leaf (:at 1646938836450) (:by |rJG4IHzWf) (:text |*reel)
                            |h $ %{} :Leaf (:at 1646938836450) (:by |rJG4IHzWf) (:text |:changes)
                            |l $ %{} :Expr (:at 1646938836450) (:by |rJG4IHzWf)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1646938836450) (:by |rJG4IHzWf) (:text |fn)
                                |b $ %{} :Expr (:at 1646938836450) (:by |rJG4IHzWf)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1646938836450) (:by |rJG4IHzWf) (:text |reel)
                                    |b $ %{} :Leaf (:at 1646938836450) (:by |rJG4IHzWf) (:text |prev)
                                |h $ %{} :Expr (:at 1646938836450) (:by |rJG4IHzWf)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1646938836450) (:by |rJG4IHzWf) (:text |render-app!)
                        |o $ %{} :Expr (:at 1646938836450) (:by |rJG4IHzWf)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1646938836450) (:by |rJG4IHzWf) (:text |reset!)
                            |b $ %{} :Leaf (:at 1646938836450) (:by |rJG4IHzWf) (:text |*reel)
                            |h $ %{} :Expr (:at 1646938836450) (:by |rJG4IHzWf)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1646938836450) (:by |rJG4IHzWf) (:text |refresh-reel)
                                |b $ %{} :Leaf (:at 1646938836450) (:by |rJG4IHzWf) (:text |@*reel)
                                |h $ %{} :Leaf (:at 1646938836450) (:by |rJG4IHzWf) (:text |schema/store)
                                |l $ %{} :Leaf (:at 1646938836450) (:by |rJG4IHzWf) (:text |updater)
                        |q $ %{} :Expr (:at 1646938836450) (:by |rJG4IHzWf)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1646938836450) (:by |rJG4IHzWf) (:text |hud!)
                            |b $ %{} :Leaf (:at 1646938836450) (:by |rJG4IHzWf) (:text "|\"ok~")
                            |h $ %{} :Leaf (:at 1646938836450) (:by |rJG4IHzWf) (:text "|\"Ok")
                    |l $ %{} :Expr (:at 1646938836450) (:by |rJG4IHzWf)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1646938836450) (:by |rJG4IHzWf) (:text |hud!)
                        |b $ %{} :Leaf (:at 1646938836450) (:by |rJG4IHzWf) (:text "|\"error")
                        |h $ %{} :Leaf (:at 1646938836450) (:by |rJG4IHzWf) (:text |build-errors)
          |render-app! $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1499755354983) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |defn)
                |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |render-app!)
                |r $ %{} :Expr (:at 1499755354983) (:by nil)
                  :data $ {}
                |v $ %{} :Expr (:at 1499755354983) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1646938883132) (:by |rJG4IHzWf) (:text |render!)
                    |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |mount-target)
                    |r $ %{} :Expr (:at 1499755354983) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |comp-container)
                        |j $ %{} :Leaf (:at 1507400119272) (:by |root) (:text |@*reel)
                    |t $ %{} :Leaf (:at 1690436008301) (:by |rJG4IHzWf) (:text |dispatch!)
          |repeat! $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1610793045335) (:by |rJG4IHzWf)
              :data $ {}
                |T $ %{} :Leaf (:at 1610793045335) (:by |rJG4IHzWf) (:text |defn)
                |j $ %{} :Leaf (:at 1610793045335) (:by |rJG4IHzWf) (:text |repeat!)
                |r $ %{} :Expr (:at 1610793045335) (:by |rJG4IHzWf)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1610793047914) (:by |rJG4IHzWf) (:text |duration)
                    |j $ %{} :Leaf (:at 1610793055850) (:by |rJG4IHzWf) (:text |cb)
                |v $ %{} :Expr (:at 1610793056606) (:by |rJG4IHzWf)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1610793066184) (:by |rJG4IHzWf) (:text |js/setTimeout)
                    |j $ %{} :Expr (:at 1610793079106) (:by |rJG4IHzWf)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1610793079545) (:by |rJG4IHzWf) (:text |fn)
                        |j $ %{} :Expr (:at 1610793080160) (:by |rJG4IHzWf)
                          :data $ {}
                        |n $ %{} :Expr (:at 1610793090420) (:by |rJG4IHzWf)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1610793091010) (:by |rJG4IHzWf) (:text |cb)
                        |r $ %{} :Expr (:at 1610793080941) (:by |rJG4IHzWf)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1610793083422) (:by |rJG4IHzWf) (:text |repeat!)
                            |j $ %{} :Expr (:at 1610794352418) (:by |rJG4IHzWf)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1610794352418) (:by |rJG4IHzWf) (:text |*)
                                |j $ %{} :Leaf (:at 1610794467961) (:by |rJG4IHzWf) (:text |1000)
                                |r $ %{} :Leaf (:at 1610794352418) (:by |rJG4IHzWf) (:text |duration)
                            |r $ %{} :Leaf (:at 1610794361837) (:by |rJG4IHzWf) (:text |cb)
                    |r $ %{} :Expr (:at 1610793071391) (:by |rJG4IHzWf)
                      :data $ {}
                        |D $ %{} :Leaf (:at 1610793072002) (:by |rJG4IHzWf) (:text |*)
                        |L $ %{} :Leaf (:at 1610794470143) (:by |rJG4IHzWf) (:text |1000)
                        |T $ %{} :Leaf (:at 1610793071233) (:by |rJG4IHzWf) (:text |duration)
          |snippets $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1551977434239) (:by |rJG4IHzWf)
              :data $ {}
                |T $ %{} :Leaf (:at 1551977434239) (:by |rJG4IHzWf) (:text |defn)
                |j $ %{} :Leaf (:at 1551977434239) (:by |rJG4IHzWf) (:text |snippets)
                |r $ %{} :Expr (:at 1551977434239) (:by |rJG4IHzWf)
                  :data $ {}
                |v $ %{} :Expr (:at 1551977444630) (:by |rJG4IHzWf)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1551977458023) (:by |rJG4IHzWf) (:text |println)
                    |j $ %{} :Leaf (:at 1551977477010) (:by |rJG4IHzWf) (:text |config/cdn?)
        :ns $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1499755354983) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |ns)
              |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |feather.main)
              |r $ %{} :Expr (:at 1499755354983) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:require)
                  |j $ %{} :Expr (:at 1499755354983) (:by nil)
                    :data $ {}
                      |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |respo.core)
                      |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:refer)
                      |v $ %{} :Expr (:at 1499755354983) (:by nil)
                        :data $ {}
                          |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |render!)
                          |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |clear-cache!)
                  |v $ %{} :Expr (:at 1499755354983) (:by nil)
                    :data $ {}
                      |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |feather.comp.container)
                      |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:refer)
                      |v $ %{} :Expr (:at 1499755354983) (:by nil)
                        :data $ {}
                          |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |comp-container)
                  |y $ %{} :Expr (:at 1499755354983) (:by nil)
                    :data $ {}
                      |j $ %{} :Leaf (:at 1508556737455) (:by |root) (:text |feather.updater)
                      |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:refer)
                      |v $ %{} :Expr (:at 1499755354983) (:by nil)
                        :data $ {}
                          |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |updater)
                  |yT $ %{} :Expr (:at 1499755354983) (:by nil)
                    :data $ {}
                      |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |feather.schema)
                      |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:as)
                      |v $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |schema)
                  |yj $ %{} :Expr (:at 1507399674125) (:by |root)
                    :data $ {}
                      |j $ %{} :Leaf (:at 1507399678694) (:by |root) (:text |reel.util)
                      |r $ %{} :Leaf (:at 1507399680625) (:by |root) (:text |:refer)
                      |v $ %{} :Expr (:at 1507399680857) (:by |root)
                        :data $ {}
                          |j $ %{} :Leaf (:at 1518156292092) (:by |root) (:text |listen-devtools!)
                  |yr $ %{} :Expr (:at 1507399683930) (:by |root)
                    :data $ {}
                      |j $ %{} :Leaf (:at 1507399687162) (:by |root) (:text |reel.core)
                      |r $ %{} :Leaf (:at 1507399688098) (:by |root) (:text |:refer)
                      |v $ %{} :Expr (:at 1507399688322) (:by |root)
                        :data $ {}
                          |j $ %{} :Leaf (:at 1507399691010) (:by |root) (:text |reel-updater)
                          |q $ %{} :Leaf (:at 1518156288482) (:by |root) (:text |refresh-reel)
                  |yv $ %{} :Expr (:at 1507399715229) (:by |root)
                    :data $ {}
                      |j $ %{} :Leaf (:at 1507399717674) (:by |root) (:text |reel.schema)
                      |r $ %{} :Leaf (:at 1507399755750) (:by |root) (:text |:as)
                      |v $ %{} :Leaf (:at 1507399757678) (:by |root) (:text |reel-schema)
                  |yy $ %{} :Expr (:at 1527788302920) (:by |root)
                    :data $ {}
                      |j $ %{} :Leaf (:at 1527788304925) (:by |root) (:text |feather.config)
                      |r $ %{} :Leaf (:at 1527788306048) (:by |root) (:text |:as)
                      |v $ %{} :Leaf (:at 1527788306884) (:by |root) (:text |config)
                  |z $ %{} :Expr (:at 1646938849381) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1646938849381) (:by |rJG4IHzWf) (:text "|\"./calcit.build-errors")
                      |b $ %{} :Leaf (:at 1646938849381) (:by |rJG4IHzWf) (:text |:default)
                      |h $ %{} :Leaf (:at 1646938849381) (:by |rJG4IHzWf) (:text |build-errors)
                  |zD $ %{} :Expr (:at 1646938849381) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1646938849381) (:by |rJG4IHzWf) (:text "|\"bottom-tip")
                      |b $ %{} :Leaf (:at 1646938849381) (:by |rJG4IHzWf) (:text |:default)
                      |h $ %{} :Leaf (:at 1646938849381) (:by |rJG4IHzWf) (:text |hud!)
      |feather.schema $ {}
        :defs $ {}
          |store $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1499755354983) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |def)
                |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |store)
                |r $ %{} :Expr (:at 1499755354983) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |{})
                    |j $ %{} :Expr (:at 1499755354983) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:states)
                        |j $ %{} :Expr (:at 1499755354983) (:by nil)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |{})
                            |j $ %{} :Expr (:at 1584781004285) (:by |rJG4IHzWf)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1584781007054) (:by |rJG4IHzWf) (:text |:cursor)
                                |j $ %{} :Expr (:at 1584781007287) (:by |rJG4IHzWf)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1584781007486) (:by |rJG4IHzWf) (:text |[])
        :ns $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1499755354983) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |ns)
              |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |feather.schema)
      |feather.updater $ {}
        :defs $ {}
          |updater $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1499755354983) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |defn)
                |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |updater)
                |r $ %{} :Expr (:at 1499755354983) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |store)
                    |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |op)
                    |v $ %{} :Leaf (:at 1519489491135) (:by |root) (:text |op-id)
                    |x $ %{} :Leaf (:at 1519489492110) (:by |root) (:text |op-time)
                |v $ %{} :Expr (:at 1499755354983) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1690435962638) (:by |rJG4IHzWf) (:text |tag-match)
                    |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |op)
                    |n $ %{} :Expr (:at 1507399852251) (:by |root)
                      :data $ {}
                        |T $ %{} :Expr (:at 1690435984281) (:by |rJG4IHzWf)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1507399855618) (:by |root) (:text |:states)
                            |b $ %{} :Leaf (:at 1690435985438) (:by |rJG4IHzWf) (:text |cursor)
                            |h $ %{} :Leaf (:at 1690435986592) (:by |rJG4IHzWf) (:text |s)
                        |j $ %{} :Expr (:at 1584874625235) (:by |rJG4IHzWf)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1584874626558) (:by |rJG4IHzWf) (:text |update-states)
                            |j $ %{} :Leaf (:at 1584874628374) (:by |rJG4IHzWf) (:text |store)
                            |r $ %{} :Leaf (:at 1690435988783) (:by |rJG4IHzWf) (:text |cursor)
                            |t $ %{} :Leaf (:at 1690435989434) (:by |rJG4IHzWf) (:text |s)
                    |t $ %{} :Expr (:at 1518157547521) (:by |root)
                      :data $ {}
                        |T $ %{} :Expr (:at 1690435982749) (:by |rJG4IHzWf)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1518157657108) (:by |root) (:text |:hydrate-storage)
                            |b $ %{} :Leaf (:at 1690435983532) (:by |rJG4IHzWf) (:text |data)
                        |j $ %{} :Leaf (:at 1584874637339) (:by |rJG4IHzWf) (:text |data)
                    |u $ %{} :Expr (:at 1615657508015) (:by |rJG4IHzWf)
                      :data $ {}
                        |T $ %{} :Expr (:at 1690435978241) (:by |rJG4IHzWf)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1615657508015) (:by |rJG4IHzWf) (:text |:exhibit)
                            |b $ %{} :Leaf (:at 1690435980628) (:by |rJG4IHzWf) (:text |d)
                        |j $ %{} :Expr (:at 1615657508015) (:by |rJG4IHzWf)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1615657508015) (:by |rJG4IHzWf) (:text |assoc)
                            |j $ %{} :Leaf (:at 1615657508015) (:by |rJG4IHzWf) (:text |store)
                            |r $ %{} :Leaf (:at 1615657508015) (:by |rJG4IHzWf) (:text |:icon)
                            |v $ %{} :Leaf (:at 1690435981954) (:by |rJG4IHzWf) (:text |d)
                    |v $ %{} :Expr (:at 1690435966885) (:by |rJG4IHzWf)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1690435967231) (:by |rJG4IHzWf) (:text |_)
                        |b $ %{} :Expr (:at 1690435967748) (:by |rJG4IHzWf)
                          :data $ {}
                            |D $ %{} :Leaf (:at 1690435969174) (:by |rJG4IHzWf) (:text |do)
                            |L $ %{} :Expr (:at 1690435969573) (:by |rJG4IHzWf)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1690435972522) (:by |rJG4IHzWf) (:text |eprintln)
                                |b $ %{} :Leaf (:at 1690435976264) (:by |rJG4IHzWf) (:text "|\"Unknown op:")
                                |h $ %{} :Leaf (:at 1690435976624) (:by |rJG4IHzWf) (:text |op)
                            |T $ %{} :Leaf (:at 1690435967748) (:by |rJG4IHzWf) (:text |store)
        :ns $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1499755354983) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |ns)
              |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |feather.updater)
              |r $ %{} :Expr (:at 1584874614885) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1584874616480) (:by |rJG4IHzWf) (:text |:require)
                  |j $ %{} :Expr (:at 1584874616720) (:by |rJG4IHzWf)
                    :data $ {}
                      |j $ %{} :Leaf (:at 1584874620034) (:by |rJG4IHzWf) (:text |respo.cursor)
                      |r $ %{} :Leaf (:at 1584874621356) (:by |rJG4IHzWf) (:text |:refer)
                      |v $ %{} :Expr (:at 1584874621524) (:by |rJG4IHzWf)
                        :data $ {}
                          |j $ %{} :Leaf (:at 1584874623096) (:by |rJG4IHzWf) (:text |update-states)
  :users $ {}
    |rJG4IHzWf $ {} (:avatar nil) (:id |rJG4IHzWf) (:name |chen) (:nickname |chen) (:password |d41d8cd98f00b204e9800998ecf8427e) (:theme :star-trail)
    |root $ {} (:avatar nil) (:id |root) (:name |root) (:nickname |root) (:password |d41d8cd98f00b204e9800998ecf8427e) (:theme :star-trail)
