module BasicBase where

import Extensible
import Language.Haskell.TH
import Language.Haskell.TH.Syntax

extensible [d| data A a = A a | B (A a) (A Int) |]
