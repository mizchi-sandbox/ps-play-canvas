module Chapter3 where
import Debug.Trace

type Entry = { firstName :: String, lastName :: String, phone :: String }

e :: Entry
e = {firstName : "Koutaro", lastName : "Chikuba", phone: "090"}

_id :: forall a. a -> a
_id i = i

main = print $ _id e.firstName
