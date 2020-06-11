public class DaoFactory {
    private static Ads adsDao;

    // new instance
    static Config mySecrets = new Config();

    public static Ads getAdsDao() {
        if (adsDao == null) {
            adsDao = new MySQLAdsDao(mySecrets);
        }
        return adsDao;
    }
}
