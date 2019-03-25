import Units

report_measurement :: Measurement -> String
report_measurement (MetricMeasurement x u) = show x ++ " " ++ show u
report_measurement m@(ImperialMeasurement xi ui) = show x ++ " " ++ show u
                                                where (MetricMeasurement x u) = convert m