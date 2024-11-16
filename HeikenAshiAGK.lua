instrument{name = "AGK", short_name = "AGK", overlay = true}




if (open < close)
    then
     if (high > close + (close - open) * 2 )
then
     if( low < open - (close - open) * 2)
    then 

            plot_candle{
                open = open,
                high = high,
                low = low,
                close = close
                }
    end
end
end



if (close < open)
    then
     if (high > open + (open - close) * 2 )
then
     if( low < close - (open - close) * 2)
    then 

            plot_candle{
                open = open,
                high = high,
                low = low,
                close = close
               }
    end
end
end


