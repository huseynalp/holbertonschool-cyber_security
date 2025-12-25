Passive Reconnaissance Report: holbertonschool.com
Date: December 25, 2025
Target Domain: holbertonschool.com
Methodology: Passive reconnaissance using OSINT tools (Shodan, WHOIS, DNS enumeration, Subfinder)

Executive Summary
This report documents the findings from passive reconnaissance conducted on holbertonschool.com. The target is a computer science educational institution with a distributed web infrastructure spanning multiple cloud providers and CDN services. The reconnaissance identified multiple subdomains, IP address ranges, and technologies in use across the organization's digital footprint.

1. Domain Information
1.1 WHOIS Data
Registrant Information:

Name: Holberton Inc
Organization: Holberton Inc
Address: 5670 Wilshire Blvd suite 1802, Los Angeles, CA 90036, US
Phone: +1.4156227634
Email: 7da97d10931ddb501d08b8f88c7384bc-37846707@contact.gandi.net (Privacy protected)

Administrative Contact:

Name: Holberton Inc
Organization: Holberton Inc
Address: 5670 Wilshire Blvd Suite 1802, Los Angeles, California 90036, US
Phone: +1.4153580819
Email: 624a82de74a4fa2b64fb39bbe08b290d-37876671@contact.gandi.net (Privacy protected)

Technical Contact:

Name: Holberton Inc
Organization: Holberton Inc
Address: 5670 Wilshire Blvd Suite 1802, Los Angeles, California 90036, US
Phone: +1.4153580819
Email: 2c420b43d982c37b7621f2015f3e107b-37876677@contact.gandi.net (Privacy protected)

Name Servers:

ns-1455.awsdns-53.org
ns-1619.awsdns-10.co.uk
ns-176.awsdns-22.com
ns-792.awsdns-35.net

Note: The domain uses AWS Route 53 for DNS management, indicating AWS infrastructure usage.

2. IP Address Ranges and Infrastructure
2.1 Primary Domain IPs
holbertonschool.com:

99.83.190.102 (AWS)
75.2.70.75 (AWS)

2.2 Identified IP Ranges by Subdomain
Based on subdomain enumeration, the following IP addresses and ranges were identified:
AWS Infrastructure (Primary Hosting):

99.83.190.102 - Main domain
75.2.70.75 - Main domain/help subdomain
54.157.56.129 - alpha.holbertonschool.com
54.86.136.129 - v1.holbertonschool.com
54.89.246.137 - v3.holbertonschool.com
34.203.198.145 - v2.holbertonschool.com
44.214.9.111 - beta.holbertonschool.com
52.47.143.83 - yriry2.holbertonschool.com
13.36.10.99 - apply.holbertonschool.com
13.37.98.87 - read.holbertonschool.com
13.38.122.220 - staging-apply-forum.holbertonschool.com
13.38.216.13 - lvl2-discourse-staging.holbertonschool.com
35.180.20.42 - staging-apply.holbertonschool.com
18.66.196.8 - staging-rails-assets-apply.holbertonschool.com

CloudFront CDN (AWS):

52.85.96.82 - rails-assets.holbertonschool.com
52.85.96.95 - assets.holbertonschool.com

Cloudflare CDN:

104.16.53.111 - support.holbertonschool.com

Fastly CDN:

63.35.51.142 - www.holbertonschool.com, webflow.holbertonschool.com, fr.holbertonschool.com, smile2021.holbertonschool.com
151.139.128.10 - fr.webflow.holbertonschool.com, en.fr.holbertonschool.com

WordPress.com Hosting:

192.0.78.131 - blog.holbertonschool.com

2.3 IP Range Summary
The infrastructure spans multiple cloud providers:

Amazon Web Services (AWS): Primary hosting provider with EC2 instances across multiple regions (us-east-1, eu-west-3, eu-west-1)
CloudFront: AWS CDN for static assets
Cloudflare: CDN and DDoS protection for support services
Fastly: CDN for main website and marketing pages
WordPress.com: Managed hosting for blog


3. Subdomain Enumeration
3.1 Discovered Subdomains
The following subdomains were identified through passive enumeration:
Production Subdomains:

www.holbertonschool.com - Main website
holbertonschool.com - Apex domain
apply.holbertonschool.com - Application portal
blog.holbertonschool.com - WordPress blog
support.holbertonschool.com - Support/Help desk
help.holbertonschool.com - Help resources
read.holbertonschool.com - Reading materials/documentation
assets.holbertonschool.com - Static assets CDN
rails-assets.holbertonschool.com - Rails framework assets
fr.holbertonschool.com - French language site
webflow.holbertonschool.com - Webflow-hosted pages
fr.webflow.holbertonschool.com - French Webflow pages
en.fr.holbertonschool.com - English/French hybrid

Version/Development Subdomains:
14. v1.holbertonschool.com - Version 1 (legacy)
15. v2.holbertonschool.com - Version 2
16. v3.holbertonschool.com - Version 3
17. alpha.holbertonschool.com - Alpha testing environment
18. beta.holbertonschool.com - Beta testing environment
Staging Subdomains:
19. staging-apply.holbertonschool.com - Staging application portal
20. apply-staging.holbertonschool.com - Alternate staging
21. staging-rails-assets-apply.holbertonschool.com - Staging assets
22. staging-apply-forum.holbertonschool.com - Staging forum
23. lvl2-discourse-staging.holbertonschool.com - Discourse staging
Other Subdomains:
24. yriry2.holbertonschool.com - Unknown purpose
25. smile2021.holbertonschool.com - Possible event/campaign site
26. hippokampoi.holbertonschool.com - Project codename
27. blog-new.holbertonschool.com - New blog version
28. 22support.holbertonschool.com - Support variant

4. Technologies and Frameworks
4.1 Web Servers and Platforms
Identified Technologies:

Webflow - Used for marketing pages and main website

Subdomains: www, webflow, fr.webflow
Modern website builder platform


Ruby on Rails - Application framework

Evidence: rails-assets subdomains
Used for core application infrastructure


WordPress - Content management for blog

Subdomain: blog.holbertonschool.com
Hosted on WordPress.com infrastructure


Discourse - Forum/community platform

Subdomain: lvl2-discourse-staging
Open-source discussion platform


AWS CloudFront - Content Delivery Network

Used for asset distribution
Provides DDoS protection and acceleration


Fastly CDN - Edge caching and delivery

Main website acceleration
Global content distribution


Cloudflare - Security and CDN

Support subdomain protection
DDoS mitigation and firewall



4.2 Infrastructure Components
Cloud Providers:

Amazon Web Services (AWS) - Primary infrastructure

EC2 instances
Route 53 DNS
CloudFront CDN
Multiple regions (US East, EU West)



Load Balancing:

AWS Elastic Load Balancing (inferred from architecture)
Multiple IP addresses for redundancy

SSL/TLS:

HTTPS enabled across all subdomains
SSL certificates (likely AWS Certificate Manager or Let's Encrypt)

4.3 Email Infrastructure
Mail Servers (MX Records):

aspmx.l.google.com (Priority 1)
alt1.aspmx.l.google.com (Priority 5)
alt2.aspmx.l.google.com (Priority 5)
alt3.aspmx.l.google.com (Priority 10)
alt4.aspmx.l.google.com (Priority 10)

Email Provider: Google Workspace (formerly G Suite)
Email Security (TXT Records):

SPF Record: Includes mailgun.org, Google, Exclaimer, Zendesk, MailChimp, Intacct
Domain verification for multiple services (Apple, Dropbox, Google)

4.4 Third-Party Services
Identified Integrations:

Mailgun - Transactional email service
Exclaimer - Email signature management
Zendesk - Customer support (mail.zendesk.com)
MailChimp - Email marketing (servers.mcsv.net)
Intacct - Financial management system
Load.io - Load testing service
Apple Domain Verification - Apple services integration
Dropbox - File sharing/storage integration


5. Security Observations
5.1 Positive Security Findings

HTTPS Enforcement - All subdomains appear to use SSL/TLS
Privacy Protection - WHOIS contact information is privacy-protected through Gandi
CDN Usage - Multiple CDN providers for DDoS protection
Email Security - SPF records configured for email authentication
AWS Infrastructure - Enterprise-grade cloud infrastructure

5.2 Potential Security Concerns

Exposed Staging Environments - Multiple staging subdomains publicly accessible

staging-apply.holbertonschool.com
staging-apply-forum.holbertonschool.com
lvl2-discourse-staging.holbertonschool.com
These should potentially be IP-restricted or behind VPN


Version Subdomains - Legacy versions still accessible

v1, v2, v3 subdomains may contain outdated code
Could present security vulnerabilities if not maintained


Numerous Subdomains - Large attack surface

28+ subdomains identified
Each requires security maintenance and monitoring


Development Subdomain - hippokampoi, yriry2 purposes unclear

May be test/development environments
Should be evaluated for sensitive data exposure



5.3 DNS Security

DNSSEC: Not observed (should be verified with registrar)
DNS Provider: AWS Route 53 (generally secure)
Name Server Distribution: Good geographic distribution


6. Mail Server Configuration
6.1 MX Records Analysis
Google Workspace email infrastructure with proper redundancy:

Primary MX: aspmx.l.google.com (Priority 1)
Backup MX servers with priorities 5 and 10
Proper failover configuration

6.2 SPF Record Analysis
v=spf1 include:mailgun.org include:_spf.google.com include:spf.exclaimer.net 
include:mail.zendesk.com include:servers.mcsv.net include:_spf.intacct.com 
ip4:104.209.35.28 ip4:191.237.4.149 ~all
Authorized Senders:

Mailgun (transactional emails)
Google (primary email)
Exclaimer (email signatures)
Zendesk (support emails)
MailChimp (marketing)
Intacct (financial system)
Two specific IP addresses

SPF Policy: ~all (soft fail) - recommended to upgrade to -all (hard fail)

7. Technology Stack Summary
Frontend Technologies:

Webflow (visual website builder)
Modern JavaScript frameworks (likely React/Vue)
Responsive design frameworks
CDN-delivered static assets

Backend Technologies:

Ruby on Rails (primary application framework)
RESTful APIs
Database systems (likely PostgreSQL or MySQL)

Infrastructure:

Hosting: AWS (EC2, multiple regions)
DNS: AWS Route 53
CDN: CloudFront, Fastly, Cloudflare
Email: Google Workspace + Mailgun
Blog: WordPress.com
Forum: Discourse

Development Tools:

Git version control (inferred from versioned subdomains)
Staging environments for testing
Load testing (loader.io integration)


8. Geographic Distribution
Based on IP addresses and infrastructure:

Primary Region: US East (AWS us-east-1)
Secondary Region: EU West (AWS eu-west-3, eu-west-1)
CDN Edge Locations: Global distribution via CloudFront, Fastly, and Cloudflare


9. Recommendations
For Security Teams:

Restrict Staging Access - Implement IP whitelisting or VPN access for staging environments
Remove Legacy Versions - Decommission or restrict access to v1, v2, v3 subdomains if no longer needed
Implement DNSSEC - Add DNS Security Extensions for additional protection
Harden SPF - Change SPF policy from ~all to -all for stricter email validation
Regular Security Audits - Monitor all 28+ subdomains for vulnerabilities
Certificate Management - Ensure all SSL certificates are properly managed and renewed
Subdomain Inventory - Maintain documentation of all subdomains and their purposes

For Operations Teams:

Asset Management - Create inventory of all infrastructure components
Monitoring - Implement comprehensive monitoring across all subdomains
Backup Strategy - Ensure proper backup procedures for all services
Disaster Recovery - Test failover procedures for multi-region setup


10. Conclusion
Holbertonschool.com operates a sophisticated, distributed web infrastructure leveraging multiple cloud providers and CDN services. The organization utilizes modern web technologies and maintains a strong focus on reliability through redundant systems. However, the large number of publicly accessible subdomains, particularly staging and development environments, presents an expanded attack surface that should be carefully managed.
The use of enterprise-grade services (AWS, Google Workspace, Cloudflare) demonstrates a commitment to security and reliability, though additional hardening measures around environment isolation and email authentication would further strengthen the security posture.

Appendix A: Tools Used

WHOIS - Domain registration information
nslookup - DNS record queries
dig - Comprehensive DNS enumeration
Subfinder - Passive subdomain discovery
Shodan - Internet-connected device search (theoretical for this report)

Appendix B: References

AWS Route 53 Documentation
Cloudflare Security Features
Google Workspace Email Configuration
SPF Record Best Practices
OWASP Subdomain Enumeration Guide
