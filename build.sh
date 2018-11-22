
OUTPUT_FILE=`basename $1`.zip

(rm -f $OUTPUT_FILE)
(cd $1 && zip -r ../$OUTPUT_FILE .)
(java -jar resources/zipsigner-2.2.jar $OUTPUT_FILE `basename $OUTPUT_FILE .zip`-signed.zip)
