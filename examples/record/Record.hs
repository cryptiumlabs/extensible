import Extensible
import qualified RecordBase as R
import qualified RecordBase


data WithString

R.extendRec "Rec" [] [t|WithString|] $
  R.defaultExtRec {
    R.typeR1 = Just [("label1", [t|String|])],
    R.typeR2 = Just [("label2", [t|String|])],
    R.typeRecX = [("R3", [("contents", [t|Int|])])]
  }

main :: IO ()
main = print (R1 {beep = True, boop = 4, label1 = "hello"} :: Rec)
  -- type annotation needed until the pat syns get signatures :/
