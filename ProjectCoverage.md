<table style="width:100%;">
<colgroup>
<col style="width: 3%" />
<col style="width: 4%" />
<col style="width: 41%" />
<col style="width: 9%" />
<col style="width: 25%" />
<col style="width: 9%" />
<col style="width: 6%" />
</colgroup>
<thead>
<tr>
<th>C</th>
<th>#</th>
<th>Task</th>
<th>Domain</th>
<th>How</th>
<th>Status</th>
<th>Resp</th>
</tr>
</thead>
<tbody>
<tr>
<td colspan="7"><ol type="A">
<li><p><strong>Physical &amp; virtual environments</strong></p></li>
</ol></td>
</tr>
<tr>
<td>A</td>
<td>1</td>
<td><p>Lovely has 50 employees based on organizational units as
follows:</p>
<ul>
<li><p><strong>R&amp;D</strong> – 20 emp.</p></li>
<li><p><strong>IT</strong> – 10 emp.</p></li>
<li><p><strong>DevOps</strong> – 10 emp.</p></li>
</ul></td>
<td>Users</td>
<td></td>
<td></td>
<td></td>
</tr>
<tr>
<td>A</td>
<td>2</td>
<td><strong>Management</strong> – Act as your central management account
with no employee assignment except you.</td>
<td>Users</td>
<td></td>
<td></td>
<td></td>
</tr>
<tr>
<td>A</td>
<td>3</td>
<td><strong>R&amp;D</strong> resources are based
on <strong>Linux</strong> platform only</td>
<td>Infrast.</td>
<td></td>
<td></td>
<td></td>
</tr>
<tr>
<td>A</td>
<td>4</td>
<td><strong>R&amp;D</strong> &amp; <strong>IT</strong> employees are
divided
between <strong>Indiana</strong> &amp; <strong>Israel</strong> assets.</td>
<td><p>Infrast.</p>
<p>Users</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr>
<td>A</td>
<td>5</td>
<td>For simple deployment create max 5 employees for each account.</td>
<td>Users</td>
<td></td>
<td></td>
<td></td>
</tr>
<tr>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr>
<td colspan="7"><ol start="2" type="A">
<li><p><strong>Account &amp; billing architecture demands</strong></p></li>
</ol></td>
</tr>
<tr>
<td>B</td>
<td>1</td>
<td>Each <strong>OU</strong> needs its own AWS account according to
its <strong>budget</strong></td>
<td>Users</td>
<td></td>
<td></td>
<td></td>
</tr>
<tr>
<td>B</td>
<td>2</td>
<td>They need to get an alarm based on notification when the costs are
greater than $5.</td>
<td>Users</td>
<td></td>
<td></td>
<td></td>
</tr>
<tr>
<td>B</td>
<td>3</td>
<td>The relevant solutions need a management platform to manage all the
relevant accounts in a single management platform, for business expense
monitoring with relevant security policies for
each <strong>OU</strong></td>
<td>Users</td>
<td></td>
<td></td>
<td></td>
</tr>
<tr>
<td>B</td>
<td>4</td>
<td><strong>R&amp;D</strong> accounts have AWS services in
the <strong>Europe</strong> and <strong>USA</strong></td>
<td><p>Users</p>
<p>Network</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr>
<td>B</td>
<td>5</td>
<td><strong>IT</strong> &amp; <strong>DevOps</strong> have also used AWS
services in
the <strong>Europe</strong> and <strong>USA</strong> regions.</td>
<td><p>Users</p>
<p>Network</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr>
<td colspan="7"><ol start="3" type="A">
<li><p><strong>IT architecture demands</strong></p></li>
</ol></td>
</tr>
<tr>
<td>C</td>
<td>1</td>
<td>The <strong>Identity Provider</strong> for the company
is <strong>Azure AD.</strong></td>
<td>Infrast.</td>
<td></td>
<td></td>
<td></td>
</tr>
<tr>
<td>C</td>
<td>2</td>
<td><p>The <strong>CISO</strong> of the company is instructed to create
an <strong>SSO</strong> solution based
on <strong>MFA</strong> with <strong>Azure AD</strong> and AWS
accounts.</p>
<blockquote>
<p>The current task is based on user provisioning &amp; not a group
based because it’s not supporting in Azure free tier account.</p>
</blockquote></td>
<td>Infrast.</td>
<td></td>
<td></td>
<td></td>
</tr>
<tr>
<td>C</td>
<td>3</td>
<td>Only <strong>IT</strong> has <strong>root account
access</strong> for all Lovely AWS accounts.</td>
<td>Users</td>
<td></td>
<td></td>
<td></td>
</tr>
<tr>
<td>C</td>
<td>4</td>
<td><strong>IAM</strong> local users are allowed only for auditing and
monitoring by IT employees.</td>
<td>Users</td>
<td></td>
<td></td>
<td></td>
</tr>
<tr>
<td>C</td>
<td>5</td>
<td>For cost savings, at the end of the date, automatically terminate
all the unused instances or services.</td>
<td>Infrast.</td>
<td></td>
<td></td>
<td></td>
</tr>
<tr>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr>
<td colspan="7"><ol start="4" type="A">
<li><p><strong>Network architecture demands</strong></p></li>
</ol></td>
</tr>
<tr>
<td>D</td>
<td>1</td>
<td>Lovely site in Israel needs to be connected securely
to <strong>R&amp;D</strong> based asset services
in <strong>USA</strong> via <strong>S2S VPN Bidirectional</strong>. a.
You can create a dedicated account or use one of the current to create
S2S based on AWS services, instead of local VMware assets.</td>
<td>Infrast.</td>
<td></td>
<td></td>
<td></td>
</tr>
<tr>
<td>D</td>
<td>2</td>
<td>The network architecture needs to be based
on <strong>public</strong> &amp; <strong>private</strong> solutions.</td>
<td>Infrast.</td>
<td></td>
<td></td>
<td></td>
</tr>
<tr>
<td>D</td>
<td>3</td>
<td>Each account needs its own network segments for routing
challenges.</td>
<td><p>Users</p>
<p>Network</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr>
<td>D</td>
<td>4</td>
<td>Each <strong>region</strong> must have one or
more <strong>VPCs</strong> for managing the network.</td>
<td>Infrast.</td>
<td></td>
<td></td>
<td></td>
</tr>
<tr>
<td>D</td>
<td>5</td>
<td>The <strong>R&amp;D</strong> teams need a dedicated segment with up
to <strong>1,000 instances</strong> for test deployments.</td>
<td>Infrast.</td>
<td></td>
<td></td>
<td></td>
</tr>
<tr>
<td>D</td>
<td>6</td>
<td>The <strong>IT</strong> teams need a dedicated segment for up
to <strong>500</strong> instances.</td>
<td>Infrast.</td>
<td></td>
<td></td>
<td></td>
</tr>
<tr>
<td>D</td>
<td>7</td>
<td>Only <strong>IT</strong> and <strong>DevOps</strong> accounts have
granular access to manage all the network services in all AWS
accounts.</td>
<td>Users</td>
<td></td>
<td></td>
<td></td>
</tr>
<tr>
<td>D</td>
<td>8</td>
<td>Employees from R&amp;D in USA must have route access to R&amp;D in
Europe network assets only – If you are not applying S2S (for external
guest students).</td>
<td>---</td>
<td>---</td>
<td>---</td>
<td>---</td>
</tr>
<tr>
<td>D</td>
<td>9</td>
<td>The company's security policy for managing EC2 instances is to
minimize the exposure of public addresses and to connect directly to
private subnets.</td>
<td><p>Security</p>
<p>Network</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr>
<td>D</td>
<td>10</td>
<td>All private networks need access to the internet for regular
patching.</td>
<td>Network</td>
<td></td>
<td></td>
<td></td>
</tr>
<tr>
<td>D</td>
<td>11</td>
<td>Access to AWS service is only allowed from Lovely on-premises assets
&amp; your home IP only.</td>
<td><p>Security</p>
<p>Network</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr>
<td colspan="7"><ol start="5" type="A">
<li><p><strong>IT architecture demands for resource sharing</strong></p></li>
</ol></td>
</tr>
<tr>
<td>E</td>
<td>1</td>
<td>According to permissions, each <strong>OU</strong> has only access
to its own folder based on Entra-ID account.</td>
<td><p>Users</p>
<p>Resourc</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr>
<td>E</td>
<td>2</td>
<td>All the files must be encrypted with dedicated symmetric key managed
by you.</td>
<td>Resourc</td>
<td></td>
<td></td>
<td></td>
</tr>
<tr>
<td>E</td>
<td>3</td>
<td>The storage must have redundancy with 3 copy’s highly available and
durable solution that preserves how users currently access the
files.</td>
<td>Resourc</td>
<td></td>
<td></td>
<td></td>
</tr>
<tr>
<td>E</td>
<td>4</td>
<td>For disaster recovery the CISO instruct to create another copy of
the current bucket with minimal costs.</td>
<td>Resourc</td>
<td></td>
<td></td>
<td></td>
</tr>
<tr>
<td>E</td>
<td>5</td>
<td>All the files must have a dedicated policy for 10 days safe before
they are deleted – the current challenge isn’t supported by AWS with
replication features, you can create a granular bucket to enable this
feature.</td>
<td>Resourc</td>
<td></td>
<td></td>
<td></td>
</tr>
<tr>
<td>E</td>
<td>6</td>
<td>All the files can be restored to their previous state at any
time.</td>
<td>Resourc</td>
<td></td>
<td></td>
<td></td>
</tr>
<tr>
<td>E</td>
<td>7</td>
<td>The current bucket needs to be shared and automatically replicated
for multiple regions, including the USA &amp; Europe regions, while each
side adds a file its automate the replica to other regions –
challenged.</td>
<td><p>Resourc</p>
<p>Network</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr>
<td>E</td>
<td>8</td>
<td>EC2 instance from the IT private subnet account must have a
dedicated permissions for managing the bucket with minimal costs.</td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr>
<td colspan="7"><ol start="6" type="A">
<li><p><strong>CISO architecture demands</strong></p></li>
</ol></td>
</tr>
<tr>
<td>F</td>
<td>1</td>
<td>Each account must have a role separation for a granular dedicated
task.</td>
<td>Users</td>
<td></td>
<td></td>
<td></td>
</tr>
<tr>
<td>F</td>
<td>2</td>
<td>You can use RBAC or ABAC based policy for applying the roles.</td>
<td>Resour.</td>
<td></td>
<td></td>
<td></td>
</tr>
<tr>
<td>F</td>
<td>3</td>
<td>The administrator role is forbidden for day-to-day use.</td>
<td>Users</td>
<td></td>
<td></td>
<td></td>
</tr>
<tr>
<td>F</td>
<td>4</td>
<td>Hardening &amp; limiting network protocols as much as you can.</td>
<td>Security</td>
<td></td>
<td></td>
<td></td>
</tr>
<tr>
<td>F</td>
<td>5</td>
<td>Encryption is a must implement for any service or protocol according
to data in transit and data at rest.</td>
<td>Security</td>
<td></td>
<td></td>
<td></td>
</tr>
<tr>
<td>F</td>
<td>6</td>
<td>HA solution must take consideration for any solutions.</td>
<td>Infrast</td>
<td></td>
<td></td>
<td></td>
</tr>
<tr>
<td>F</td>
<td>7</td>
<td>The connection to <strong>EC2</strong> based on port 22 must be
enforced with a different key pair for each OU.</td>
<td>Security</td>
<td></td>
<td></td>
<td></td>
</tr>
<tr>
<td>F</td>
<td>8</td>
<td>Only EC2 instances that run in the private subnets can have access
for each AWS services.</td>
<td>Network</td>
<td></td>
<td></td>
<td></td>
</tr>
<tr>
<td>F</td>
<td>9</td>
<td>The company does not want to be responsible for provisioning and
managing the underlying infrastructure that runs the containerized
workload.</td>
<td>Infrast</td>
<td></td>
<td></td>
<td></td>
</tr>
<tr>
<td>F</td>
<td>10</td>
<td>All the assets &amp; services access are based on FQDN only.</td>
<td>Network</td>
<td></td>
<td></td>
<td></td>
</tr>
<tr>
<td>F</td>
<td>11</td>
<td>All the images will be updated &amp; managed only by IT OU. The
images must contain the Lovely company logo, and shared for all accounts
as base line infrastructure images.</td>
<td><p>Users</p>
<p>Infrast</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr>
<td colspan="7"><ol start="7" type="A">
<li><p><strong>R&amp;D architecture demands</strong></p></li>
</ol></td>
</tr>
<tr>
<td>G</td>
<td>1</td>
<td>The main product of Lovely is the social meeting web site that based
on WordPress architecture.</td>
<td>Infrast.</td>
<td></td>
<td></td>
<td></td>
</tr>
<tr>
<td>G</td>
<td>2</td>
<td>A company is developing a two-tier web application on AWS.</td>
<td>Infrast</td>
<td></td>
<td></td>
<td></td>
</tr>
<tr>
<td>G</td>
<td>3</td>
<td>The company's developers will deploy the application on an Amazon
EC2 instance that connects directly to a backend database and save the
relevant page data on external shared file system.</td>
<td>Infrast</td>
<td></td>
<td></td>
<td></td>
</tr>
<tr>
<td>G</td>
<td>4</td>
<td>The database engine must be relational &amp; highly available.</td>
<td>Infrast</td>
<td></td>
<td></td>
<td></td>
</tr>
<tr>
<td>G</td>
<td>5</td>
<td>To improve database performance, create a solution for offloading
the primary server of the database engine – challenge.</td>
<td>Infrast</td>
<td></td>
<td></td>
<td></td>
</tr>
<tr>
<td>G</td>
<td>6</td>
<td><p>The application also must be highly available &amp; scale up or
down base on the usage time &amp; available.</p>
<p>o The <strong>CISO</strong> enforced to implement at least 2
instances in a different zone.</p>
<p>o The <strong>CISO</strong> also enforces implement the web
application solutions based on HTTPS protocol</p></td>
<td><p>Infrast</p>
<p>Security</p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr>
<td>G</td>
<td>7</td>
<td>For disaster recovery if AWS regions fail, deploy at least a static
web site or equivalent of the same web application on a different
region.</td>
<td>Infrast</td>
<td></td>
<td></td>
<td></td>
</tr>
<tr>
<td>G</td>
<td>8</td>
<td>For the best user experience, the application latancy needs to be
accessed and localized in the user's country – challenge.</td>
<td>Infrast</td>
<td></td>
<td></td>
<td></td>
</tr>
<tr>
<td>G</td>
<td>9</td>
<td>The company must not hardcode database credentials in the
application – challenge.</td>
<td>Infrast</td>
<td></td>
<td></td>
<td></td>
</tr>
<tr>
<td>G</td>
<td>10</td>
<td>The company must also implement a solution to automatically rotate
the database credentials on a regular basis – challenge.</td>
<td>Infrast</td>
<td></td>
<td></td>
<td></td>
</tr>
<tr>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr>
<td colspan="7"><ol start="8" type="A">
<li><p><strong>Management architecture demands</strong></p></li>
</ol></td>
</tr>
<tr>
<td>H</td>
<td>1</td>
<td>The whole project architecture needs to be drafted using in
high-level design(HLD).</td>
<td>Design</td>
<td></td>
<td></td>
<td></td>
</tr>
<tr>
<td>H</td>
<td>2</td>
<td>The <strong>R&amp;D</strong> implantation needs to be drafted using
low level design (LLD).</td>
<td>Design</td>
<td></td>
<td></td>
<td></td>
</tr>
<tr>
<td>H</td>
<td>3</td>
<td>Make a summarize presentation for all your solution architect
project.</td>
<td>Design</td>
<td></td>
<td></td>
<td></td>
</tr>
<tr>
<td>H</td>
<td>4</td>
<td>Use AWS services with cost management as part of your design.</td>
<td>Design</td>
<td></td>
<td></td>
<td></td>
</tr>
<tr>
<td>H</td>
<td>5</td>
<td>As much as you can, try to automate your coding-based solution.</td>
<td>Infrast</td>
<td></td>
<td></td>
<td></td>
</tr>
</tbody>
</table>
