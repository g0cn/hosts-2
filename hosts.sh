echo " download"
curl -o ad-hosts-pro https://file.trli.club:2083/ad-hosts/ad-hosts-pro/ad-domains.txt
curl -o ad-hosts-sqlist https://file.trli.club:2083/ad-hosts/ad-hosts-sqlist/ad-domains.txt
curl -o allow https://file-git.trli.club/allow/allow.txt
curl -o ad-youtube-hosts https://file-git.trli.club/ad-hosts/ad-youtube/ad-youtube-domains.txt
curl -o dns-hosts-china https://file.trli.club:2083/dns-hosts/dns-domain/blacklist_full.txt
curl -o dns-hosts-gfw https://file.trli.club:2083/dns-hosts/dns-domain/whitelist_full.txt


echo "Adding Title and SYNC data..."
sed -i '21cTotal ad-hosts-pro 屏蔽追踪广告总数: '$(wc -l ad-hosts-pro)'  <br/> ' README.md  
sed -i '23cTotal ad-hosts-sqlist 屏蔽追踪广告总数: '$(wc -l ad-hosts-sqlist)'   <br/> ' README.md  
sed -i '25cTotal allowlist list 允许名单总数: '$(wc -l allow)'  <br/>' README.md 
sed -i '27cTotal ad-youtube-hosts 屏蔽追踪广告总数: '$(wc -l ad-youtube-hosts)'  <br/>' README.md  
sed -i '29cTotal DNS分流加速国内规则列表总数: '$(wc -l dns-hosts-china)'  <br/>' README.md  
sed -i '31cTotal DNS分流加速国外规则列表总数: '$(wc -l dns-hosts-gfw)'  <br/>' README.md  

sed -i '85c<li>Total ad-hosts-pro 屏蔽追踪广告总数: '$(wc -l ad-hosts-pro)' </li> ' index.html
sed -i '86c<li>Total ad-hosts-sqlist 屏蔽追踪广告总数: '$(wc -l ad-hosts-sqlist)'  </li> ' index.html
sed -i '87c<li>Total allowlist list 允许名单总数: '$(wc -l allow)'  </li>' index.html
sed -i '88c<li>Total ad-youtube-hosts 屏蔽追踪广告总数: '$(wc -l ad-youtube-hosts)'  </li> ' index.html
sed -i '89c<li>Total DNS分流加速国内规则列表总数: '$(wc -l dns-hosts-china)'  </li>' index.html
sed -i '90c<li>Total DNS分流加速国外规则列表总数: '$(wc -l dns-hosts-gfw)'  </li>' index.html

rm ad-*
rm dns-*
rm allow
