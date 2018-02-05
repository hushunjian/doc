folder=$2
if [ "z$folder" = "z" ]; then
    folder = "m2m"
fi
case $1 in
    product)
        for file in `ls $folder`; do
            newman run --reporter-no-summary -e environment_product.json ./$foler/$file
        done
        ;;
    test)
        for file in `ls $folder`; do
            newman run --reporter-no-summary -e environment_test.json ./$folder/$file
        done
        ;;
    *)
        echo "Usage: $0 {product|test} {folder}"
        exit 1
    ;;
esac
