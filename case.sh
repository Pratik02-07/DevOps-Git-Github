case "$environment" in
    development)
        echo "Development"
        ;;
    testing)
        echo "Testing"
        ;;
    production)
        echo "Production"
        ;;
    *)
        echo "Unknown environment"
        ;;
esac

