public  class CryptoInfo {
    public static integer showPrice(string coinName){
        Map<string, Integer> CryptoMap = new Map<string, Integer>();
        CryptoMap.put('BTC', 35000);
        CryptoMap.put('ETH', 2500);
        Integer price;
        price = CryptoMap.get(coinName);
        return price;   
    }   
}