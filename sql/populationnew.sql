CREATE EXTERNAL TABLE `populationnew`( 
  `state` string, 
  `city` string, 
  `state_code` bigint, 
  `city_code` bigint, 
  `population` bigint)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY ',' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  's3://dio-live-athena-data-clara/population/'
TBLPROPERTIES (
  'CrawlerSchemaDeserializerVersion'='1.0', 
  'CrawlerSchemaSerializerVersion'='1.0', 
  'UPDATED_BY_CRAWLER'='PopulationDBCrawler', 
  'areColumnsQuoted'='false', 
  'averageRecordSize'='76', 
  'classification'='csv', 
  'columnsOrdered'='true', 
  'compressionType'='none', 
  'delimiter'=',', 
  'objectCount'='1', 
  'recordCount'='2633', 
  'sizeKey'='200131', 
  'skip.header.line.count'='1', 
  'typeOfData'='file')