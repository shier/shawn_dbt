curl -F "file=@Auctioneer/logs/dbt.log" "http://shawngao.ca/weCloudData/res/saveLogFile.php"
sudo dbt clean --project-dir Auctioneer 
# This step, build final view from the Increamental tabale , just need running once
# ---------------------------------------------------------------------------
# sudo dbt run --project-dir Auctioneer --models step3_FinalView
# sudo dbt run --project-dir Auctioneer --models step3_FinalViewClean
# sudo dbt run --project-dir Auctioneer --models step3_FinalView_Rename
# This step, build table base on data map. skip this
# ---------------------------------------------------------------------------
sudo dbt run --project-dir Auctioneer --models step4_dboSingle