
<cfdocument format="PDF" filename="#expandPath('saved-docs/aboutCfDocument.pdf')#" overwrite="true">
	<!DOCTYPE html>
	<html lang="en">
	<head>
	    <meta charset="UTF-8">
	    <meta name="viewport" content="width=, initial-scale=1.0">
	    <meta http-equiv="X-UA-Compatible" content="ie=edge">
	    <title>Document</title>
	    <style>
	        p {
	            color: blue;
	        }
	    </style>
	    <style media="print">
	         p {
	            color: green;
	        }
	    </style>
	</head>
	<body>
		<cfdocumentsection name="Front-cover">
			<h1>About the cfdocument tag</<h1>
			<p>By the Coldfusion Specialist Certification team</p>
		</cfdocumentsection>
		
		
		<cfdocumentsection name="body-content">
			<cfdocumentitem type="header" >
				<p>My First PDF document - Generated on <cfoutput>#DateFormat(now())#</cfoutput></p>
			</cfdocumentitem>
		    <h2>Chapter 01</h2>
		    <ul>
		        <li>HTML 4.01</li>
		        <li>XML 1.0</li>
		        <li>DOM level 1 and 2</li>
		        <li>CSS1 and CSS2</li>
		    </ul>
		    <cfdocumentitem type="pagebreak" />
			    <h2>Chapter 02</h2>
			    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Sit tempora animi quam fuga repellendus? Omnis pariatur nobis id ullam numquam ipsum deleniti facere commodi voluptates nam architecto debitis mollitia qui suscipit quisquam aliquam non quis incidunt, cupiditate iusto. Quod pariatur, dolor voluptatem non obcaecati culpa dignissimos hic eum qui suscipit at quo et numquam, aut, consectetur eos minima consequatur aspernatur totam possimus eveniet incidunt? Est velit ipsa sapiente quo, dolorum nesciunt eveniet natus praesentium sit, beatae magni quod ad dolore labore? Ex sequi, dolor dolorum a dignissimos non similique aut hic quae, delectus iusto unde distinctio? Maiores animi harum iste vel inventore commodi perspiciatis autem non voluptatibus recusandae optio rem vero nesciunt, sunt quo magnam, nemo ab tempora, eaque doloribus deserunt amet? Velit provident, et itaque, tempore officia fugiat tenetur nemo nam doloremque quibusdam placeat laudantium! Temporibus vel nobis pariatur exercitationem aperiam ipsa deleniti eos totam laborum! Non numquam minima ipsam, facilis ducimus illo laborum delectus fuga impedit labore in atque eveniet itaque porro! Magnam nesciunt placeat similique! Necessitatibus distinctio rerum eius corrupti ducimus voluptatum beatae adipisci vero similique nisi dolor voluptatem id delectus iusto laudantium ad, tempora reiciendis voluptates quia commodi laborum temporibus. Cupiditate officia ipsa assumenda quisquam voluptas.</p>
			    <p>Natus non eaque ipsa sit ullam, repellendus ut cupiditate cumque sequi ratione impedit, voluptatibus quia eos culpa maiores quasi illum officiis assumenda quam consectetur id reiciendis? Rem, tempore in! Et id reprehenderit alias quos quisquam perspiciatis eos odit illo excepturi est minus dolorem laborum dolor officiis laboriosam veritatis similique, vero cum ipsam. Maiores unde aliquam provident minus aut cumque. Illum, maxime ipsum quibusdam provident, voluptatem vero reiciendis tenetur corporis voluptates itaque hic minima fugiat obcaecati, nihil accusantium non quidem atque nesciunt quod alias porro? Numquam molestias deleniti rem repellendus tenetur illum odit enim? Explicabo beatae enim amet molestias cumque magnam ducimus ea debitis mollitia dicta nemo unde libero optio nam qui rem, commodi nostrum fuga fugit? Quo, soluta aliquid eius totam vero repellat, pariatur quos dolorum beatae dicta voluptate itaque reiciendis corrupti aspernatur, debitis molestiae quia at veniam possimus explicabo placeat illum voluptas eligendi maxime? Maiores fugiat natus quis, odio ullam temporibus, amet pariatur laudantium mollitia iusto excepturi autem nobis voluptate nesciunt! Explicabo veritatis voluptatibus maiores iste possimus, ducimus accusantium aspernatur atque modi? Fugiat quidem assumenda sapiente sint, id laborum eius numquam deleniti asperiores eos voluptas aut ipsa excepturi cupiditate expedita nobis blanditiis exercitationem ex tempora facilis. Amet, laudantium veniam?</p>
		    <cfdocumentitem type="pagebreak" />
			    <h2>Chapter 03</h2>
			    <p>Quibusdam deserunt distinctio debitis nulla illo inventore placeat ea necessitatibus recusandae harum obcaecati optio possimus illum nam in eveniet rem accusantium, explicabo quae atque quia corrupti laborum? Neque quidem ducimus vero, sequi suscipit temporibus enim odit laborum ut ipsum exercitationem earum optio repellendus architecto accusamus ea illo. Maiores, ipsum magni porro placeat dolore modi obcaecati harum deleniti, alias quidem quaerat temporibus nesciunt! Odit totam vitae odio? Perferendis, eum minima pariatur soluta recusandae porro veritatis, incidunt asperiores neque voluptatibus numquam inventore id sequi facere. Nesciunt, exercitationem officiis beatae perferendis quod architecto sit natus quis corporis eaque corrupti nihil minima saepe iure vitae, voluptatibus labore voluptate aspernatur itaque voluptates placeat quidem facilis. Provident quisquam fugit corporis, tempore amet dolores animi quia eius a qui ipsa sed illo architecto beatae distinctio. Eius delectus fugiat itaque? Dicta deleniti id suscipit doloribus facilis, in veniam sint tenetur, itaque atque, consequatur sunt illum nesciunt voluptates laboriosam accusantium. Iure qui nihil laborum mollitia at adipisci dolore, consectetur magnam expedita, voluptate quam placeat suscipit omnis cupiditate explicabo? Omnis dolor optio molestiae? Praesentium, recusandae assumenda cumque veniam in asperiores fugiat quibusdam ad necessitatibus dolore, odio quasi voluptate provident minus temporibus, nesciunt esse non quaerat nostrum vel! Ullam, fugit earum?</p>
			    <p>Vel explicabo asperiores esse laudantium possimus libero perspiciatis tempora, maiores beatae voluptate cupiditate in facilis deleniti nobis dolorem earum repellat numquam omnis nihil suscipit temporibus odio illo provident? Velit nostrum voluptatibus sit ut ullam eos ab natus tenetur quam reiciendis expedita quia necessitatibus eum rem, quasi, deserunt ipsam illo quae aliquam qui? Veritatis sint, facilis at eaque dignissimos ullam libero hic temporibus voluptatibus officia assumenda totam porro, eveniet laboriosam quidem consequuntur sequi, suscipit est autem ducimus! Dolore accusantium dolores officiis iusto odit non debitis expedita, veniam nulla labore doloremque quaerat. Labore beatae odio, repellendus maiores quidem totam dolorum. Minima qui error asperiores adipisci repudiandae non odit ex vitae nobis voluptatibus a rerum laudantium nisi hic ratione sapiente, recusandae assumenda deserunt quam? Labore reiciendis consectetur veniam voluptatem blanditiis totam nobis ab. Eligendi labore voluptates explicabo eius ab ipsum quis officia eaque fugit fugiat cumque dolores dicta cum fuga, soluta nemo debitis optio reiciendis perferendis, officiis provident dolorem. Inventore unde quas velit labore est, quisquam odit. Natus dicta numquam, expedita explicabo cum nostrum veritatis eaque ipsa voluptate ut quam, dolor vitae rerum perspiciatis cupiditate eos minima. Itaque, perferendis minus? Laborum quae, ab dolorum perspiciatis quas repellendus in mollitia omnis, culpa eaque aut.</p>
			    <p>Nostrum qui laborum minus harum, rem a cupiditate laudantium culpa eos quia voluptatibus totam dolores expedita beatae officiis iure illo illum aut atque, sint esse optio? Magnam repudiandae inventore sed debitis quasi quam illo atque ex natus. Ex minima cum eum veritatis id facilis ullam, impedit molestiae provident facere ipsam, animi dicta vero iste optio nemo eaque repellat commodi earum temporibus quis libero nisi labore dolorum! Provident ut culpa sed consequatur reprehenderit vel repudiandae ipsa ab commodi ex. Blanditiis ullam dolor a incidunt! Tempore, porro quod in repellat iure ipsum vero mollitia ad molestias commodi voluptatum iusto minus provident expedita illo cumque architecto praesentium placeat blanditiis quasi voluptate dolor maxime? Error doloremque, voluptates magnam ut praesentium facere sunt enim perferendis laboriosam labore, quis similique consequatur, temporibus sint corporis tenetur nihil! Eum quas placeat quibusdam impedit, eligendi dolorem non perferendis aliquam adipisci vero quam alias velit ut! Blanditiis velit aut rem, cum eos nisi? Quas ad quaerat nulla suscipit porro, eligendi numquam, iusto nemo minus laborum quia dignissimos non dolor, nostrum voluptatum quod atque aliquam delectus! Quas consequuntur sapiente officia delectus, quaerat nihil adipisci magni inventore quisquam non, obcaecati excepturi quia fuga porro sit doloribus reprehenderit ipsa voluptatibus atque velit asperiores?</p>
		    <cfdocumentitem type="footer" >
			    <cfoutput>
					<p>&copy; #Year(now())#</p>
					<p>Page #cfdocument.currentPageNumber# of #cfdocument.totalPageCount#</p>
				</cfoutput>
			</cfdocumentitem>
		</cfdocumentsection>
	</body>
	</html>
</cfdocument>