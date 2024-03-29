module Units

(
    MetricUnit(..),
    ImperialUnit(..),
    Measurement(..),
    convert
)

where

data MetricUnit = Meter | Liter | KiloGram deriving (Show, Eq)
data ImperialUnit = Yard | Gallon | Pound deriving (Show, Eq)

data Measurement = MetricMeasurement Double MetricUnit | ImperialMeasurement Double ImperialUnit deriving (Show, Eq)

symbol1 :: MetricUnit -> String
symbol1 Meter = "m"
symbol1 Liter = "L"
symbol1 KiloGram = "kg"

symbol2 :: MetricUnit -> String
symbol2 x
    | x == Meter = "m"
    | x == Liter = "L"
    | x == KiloGram = "kg"

convert :: Measurement -> Measurement
convert (MetricMeasurement x u)
    | u == Meter    = ImperialMeasurement (1.0936*x) Yard
    | u == Liter    = ImperialMeasurement (0.2642*x) Gallon
    | u == KiloGram = ImperialMeasurement (2.2046*x) Pound

convert (ImperialMeasurement x u)
    | u == Yard   = MetricMeasurement (0.9144*x) Meter
    | u == Gallon = MetricMeasurement (3.7854*x) Liter
    | u == Pound = MetricMeasurement (0.4536*x) KiloGram