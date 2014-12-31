require 'nokogiri'

namespace :heal_ophi_cities_notes do

  desc "upload OPHI cities notes"
  task ophi_upload_cities_notes: :environment do
    dbi_ophi = Heal::DatabaseInstance.find_by(instance_name: OPHI_DATABASE_INSTANCE_NAME)

    cities = []

    cities << { name: 'North Plains', state: 'OR', primary_contacts: '', county: 'Washington', notes: <<THE_END
                <div>Martha DeBry, City Manager,&nbsp;<span style=""font-size: 10.0pt;"">attended HEAL Cities Campaign presentation at 2012 OCCMA Summer Conference</span></div><div><br></div>in August, 2012, Part of Five Cities in Washington County interested in obtaining Bike Friendly City designation from League of American Bicyclists
THE_END
    }

    cities << { name: 'Yachats', state: 'OR', primary_contacts: 'Ronald Brean at City of Yachats', county: 'Lincoln', notes: <<THE_END
                <span
                  style=""color: rgb(31,73,125);font-family: Calibri , sans-serif;font-size: 15.0px;background-color: rgb(255,255,255);"">Attended
                  HEAL Cities Presentation at 2013 OMA Summer Conference</span>
THE_END
    }
    cities << { name: 'Woodburn', state: 'OR', primary_contacts: 'Jason Horton at City of Woodburn', county: 'Marion', notes: <<THE_END
                LOC 2013
THE_END
    }
    cities << { name: 'Wood Village', state: 'OR', primary_contacts: 'Melissa Peterson at Latino Health Alliance', county: 'Multnomah', notes: <<THE_END
                William Peterson, Jr., City Administrator, attended HEAL Cities Campaign
                presentation at 2012 OCCMA Summer Conference<div>
                  <br /></div>
                <div>Bill Peterson&nbsp;<span style=""font-size: 10.0pt;"">v</span>
                  <span style=""font-size: 10.0pt;"">isited HEAL Cities Campaign exhibit
                    at 2013 LOC Annual Meeting. &nbsp;</span></div>
THE_END
    }
    cities << { name: 'Winston', state: 'OR', primary_contacts: 'Sharon Harrison at City of Winston', county: 'Douglas', notes: <<THE_END
                David VanDermark, City Manager,&nbsp;attended HEAL Cities Campaign
                presentation at 2012 OCCMA Summer Conference<div>   <br /></div>
                 <div>City &nbsp;Manager David VanDermark, Mayor Sharon Harrison,
                  &nbsp;and Councilors Christie Glen-Knutson and Sandra
                    Lipphardt&nbsp;<span style=""font-size: 10.0pt;"">v</span>   <span
                    style=""font-size: 10.0pt;"">isited HEAL Cities Campaign exhibit
                    at 2013 LOC Annual Meeting. &nbsp;</span></div>
THE_END
    }
    cities << { name: 'Wilsonville', state: 'OR', primary_contacts: 'Julie Fitzgerald at City of Wilsonville, Patty Brescia at City of Wilsonville, Mark C. Ottenad at City of Wilsonville, Katie Mangle at City of Wilsonville', county: 'Clackamas', notes: <<THE_END
                <div>Bryan Cosgrove, City Manager,&nbsp;<span
                    style=""font-size: 10.0pt;"">attended HEAL Cities Campaign
                    presentation at 2012 OCCMA Summer Conference</span></div>
                  <div>   <br /></div>
                  Joined campaign 3/18/13 by Proclamation of Mayor.&nbsp;<div>   <br /></div>
                  <div>Adopted Transportation System Plan Update (date?). &nbsp;On
                  10/21/13, Patty Brescia made report to Council on implementation of
                  TSPU, citing &nbsp;Transportation Planner Katie Mangle's report on
                  implementation of new policy requiring bike parking at new commercial
                  development, and of new flexible streets policy that added two bike
                  lanes to a section of Boekman Road. &nbsp;Also reported on completion
                  of new parks and trails.&nbsp;</div>
                 <div>   <br /></div>
                 <div>Councillor Julie Fitzgerald attended 09/28/13 HEAL Cities
                  Presentation at the 2013 LOC Annual meeting and v<span
                    style=""font-size: 10.0pt;"">isited HEAL Cities Campaign exhibit at
                    2013 LOC Annual Meeting. &nbsp;</span></div>
                  <div>   <br /></div>
                  <div>Declared a Fit City</div>
THE_END
    }
    cities << { name: 'Willamina', state: 'OR', primary_contacts: '', county: 'Polk', notes: <<THE_END
                <p class=""MsoNormal"">The City Recorder attended a Yamhill County   HD
                  presentation I gave 5/21/2013 in Willamina.&nbsp; <br /></p>
                <p class=""MsoNormal"">
                  <br /></p>
                <p class=""MsoNormal"">Attended   HEAL Nation Webinar, the Small
                  Communities Toolbox on 9/24/14.</p>
THE_END
    }
    cities << { name: 'Wheeler', state: 'OR', primary_contacts: 'Jeffrey Aprati at City of Wheeler', county: 'Tillamook', notes: <<THE_END
                attended HEAL Cities Campaign presentation at 2012 OCCMA Summer Conference
THE_END
    }
    cities << { name: 'Weston', state: 'OR', primary_contacts: 'Jennifer Spurgeon at Weston City COuncil', county: 'Umatilla', notes: <<THE_END
                attended 2013 LOC Annual Meeting<div>Jennifer McCloud Spurgeon,
                  Councilor, has been working with BK re Farm to School</div>
                 <div>Meeting planned in Weston 3/5/14</div>
THE_END
    }
    cities << { name: 'West Linn', state: 'OR', primary_contacts: 'Teri Cummings at West Linn City COuncil, John Kovash at City of West Linn, Jody Carson at City of West Linn', county: 'Clackamas', notes: <<THE_END
                <div>   <br /></div>
                 <div>Lirsten Wyatt, Assistant City Manager,&nbsp;<span
                    style=""font-size: 10.0pt;"">attended HEAL Cities Campaign
                    presentation at 2012 OCCMA Summer Conference</span>   <br
                  style=""font-size: 10.0pt;"" />   <span
                    style=""font-size: 10.0pt;"">Attended LOC Sep 28 2012</span></div>
                 <div>   <span style=""font-size: 10.0pt;"">     <br /></span></div>
                 <div>Mayor John Kovash attended 2013 OMA conference 7/25/2013</div>
                <div>
                  <br /></div>
                <div>Councilor Jody Carson&nbsp;<span style=""font-size: 10.0pt;"">v</span>
                  <span style=""font-size: 10.0pt;"">isited HEAL Cities Campaign exhibit
                    at 2013 LOC Annual Meeting. &nbsp;</span></div>
THE_END
    }
    cities << { name: 'Warrenton', state: 'OR', primary_contacts: '', county: 'Clatsop', notes: <<THE_END
                Kurt Fritsch, City Manager,&nbsp;attended HEAL Cities Campaign presentation at 2012 OCCMA Summer Conference<div><br></div><div><br></div><div>Attended 2012 LOC conf event</div>
THE_END
    }
    cities << { name: 'Waldport', state: 'OR', primary_contacts: '', county: 'Lincoln', notes: <<THE_END
                Attended   HEAL Nation Webinar, the Small Communities Toolbox on 9/24/14.
THE_END
    }
    cities << { name: 'Veneta', state: 'OR', primary_contacts: 'Sandra Larson at City of Veneta, Brittany Boothe at City of Veneta, Ric Ingham at City of Veneta, Katie Babits at City of Veneta', county: 'Lane', notes: <<THE_END
                Ric Ingham, City Administrator,&nbsp;attended HEAL Cities Campaign
                presentation at 2012 OCCMA Summer Conference<div>   <br /></div>
                       <div>Mayor Sandra Larson attended&nbsp;<span
                    style=""font-size: 10.0pt;"">&nbsp;HEAL Cities Presentation at
                    &nbsp;7/26/2013 OMA Conference in Corvallis, OR</span></div>
                      <div>   <span style=""font-size: 10.0pt;"">     <br /></span></div>
                      <div>   <span style=""font-size: 10.0pt;"">Mayor Sandra Larson and
                    Councilor     Brittany Boothe&nbsp;</span>   <span
                    style=""font-size: 10.0pt;"">attended presentation on Heal Cities
                    Campaign at the 2013 LOC Annual Meeting.</span></div>
                     <div>   <span style=""font-size: 10.0pt;"">     <br /></span></div>
                     <div>   <span style=""font-size: 10.0pt;"">City Manager Ric
                  Ingham&nbsp;</span>&nbsp;and City Councilor Victoria
                    Hedenstrom&nbsp;<span style=""font-size: 10.0pt;"">v</span>   <span
                    style=""font-size: 10.0pt;"">isited HEAL Cities Campaign exhibit
                    at 2013 LOC Annual Meeting. &nbsp;541.935.2191</span></div>
                   <div>   <span style=""font-size: 10.0pt;"">     <br /></span></div>
                   <div>   <span style=""font-size: 10.0pt;"">Ric Ingram saw BK at OCCMA
                    in     July     2014 and said his Mayor had been listening to the
                    HEAL     Nation     webinars, and that he would put his Management
                    Analyst on     it. &nbsp;&nbsp;</span></div>
                   <div>   <span
                    style=""color: rgb(31,73,125);font-family: arial , sans-serif;font-size: 10.0pt;background-color: rgb(255,255,255);"">     <br /></span></div>
                   <div>   <span
                    style=""color: rgb(31,73,125);font-family: arial , sans-serif;font-size: 10.0pt;background-color: rgb(255,255,255);"">Katie
                    Babits, a&nbsp;</span>   <span
                    style=""color: rgb(31,73,125);font-family: arial , sans-serif;font-size: 10.0pt;background-color: rgb(255,255,255);"">City
                    of Veneta</span></div>
                   <p class=""MsoNormal""
                  style=""margin: 0.0px;color: rgb(34,34,34);font-family: arial , sans-serif;background-color: rgb(255,255,255);"">
                    <span style=""color: rgb(31,73,125);"">Management Analyst, emailed BK
                    with a copy of the Resolution on 7/18. &nbsp;She had follow up
                    quesitons about the HEAL Cities Small Grants program.&nbsp; <br /></span></p>
                 <p class=""MsoNormal""
                  style=""margin: 0.0px;color: rgb(34,34,34);font-family: arial , sans-serif;background-color: rgb(255,255,255);"">   <br /></p>
                 <p class=""MsoNormal""
                  style=""margin: 0.0px;color: rgb(34,34,34);font-family: arial , sans-serif;background-color: rgb(255,255,255);"">Attended
                  HEAL Nation Webinar, the Small Communities Toolbox on 9/24/14.</p>
                <p class=""MsoNormal"" style=""margin: 0.0px;color: rgb(34,34,34);font-family: arial , sans-serif;background-color: rgb(255,255,255);"">
                  <br /></p>
                <p class=""MsoNormal""
                  style=""margin: 0.0px;color: rgb(34,34,34);font-family: arial , sans-serif;background-color: rgb(255,255,255);"">Participated
                  in HEAL Nation webinar on Healthy Meetings and Vending on
                  6/4/14.<br />   <span style=""color: rgb(31,73,125);"">     <u></u></span></p>
                   <p class=""MsoNormal""
                  style=""margin: 0.0px;color: rgb(34,34,34);font-family: arial , sans-serif;background-color: rgb(255,255,255);"">   <br /></p>
THE_END
    }
    cities << { name: 'Vale', state: 'OR', primary_contacts: 'Lynn Findley at City of Vale', county: 'Malheur', notes: <<THE_END
                Lynn Findley, City Manager, stopped by table in LOC Exhibit Hall Sept
                2013 for info re HEAL Cities Campaign
THE_END
    }
    cities << { name: 'Tualatin', state: 'OR', primary_contacts: 'Lou Ogden at Resource Strategies Planning Group, Paul Hennon Hennon at City of Tualatin Community Services, Sherilyn Lombos at City of Tualatin', county: 'Washington', notes: <<THE_END
                Sherilyn Lombos, City Manager, and Ben Bryant (Mgmt Analyst) attended
                HEAL Cities Campaign presentation at 2012 OCCMA Summer Conference<div>
                  <br /></div>
                <div>Tualatin City Council Adopted Resolution No. 5134-13 on April 8
                  2013, setting forth Tualatin&#39;s commitment to put healthy options
                  within reach of all residents. &nbsp;</div>
                <div>
                  <br /></div>
                <div>Beth has had multiple meetings with the Mayor, Lou Ogden, the City
                  Manager, Sherilyn Lombos, and Paul Hennon, Director of Community
                  Services (the chief planner).<br />
                  <br />Attended   HEAL Nation Webinar, the Small Communities Toolbox on 9/24/14.<br /></div>
THE_END
    }
    cities << { name: 'Troutdale', state: 'OR', primary_contacts: 'Doug Daost at City of Troutdale', county: 'Multnomah', notes: <<THE_END
                Craig Ward, City Manager,&nbsp;attended HEAL Cities Campaign
                presentation at 2012 OCCMA Summer Conference<div>   <br /></div>
                 <div>Doug Daost, Mayor,&nbsp;<span style=""font-size: 10.0pt;"">attended
                    HEAL Cities Presentation at &nbsp;7/26/2013 OMA Conference in
                    Corvallis, OR</span></div>
THE_END
    }
    cities << { name: 'Toledo', state: 'OR', primary_contacts: '', county: 'Lincoln', notes: <<THE_END
                Mayor Grutzmacher serves on Advisory Committee
THE_END
    }
    cities << { name: 'Tillamook', state: 'OR', primary_contacts: 'Suzanne Weber at City of Tillamook', county: 'Tillamook', notes: <<THE_END
                Mayor Suzanne Weber (503.801.1289)Visited HEAL Cities Campaign exhibit
                at 2013 LOC Annual Meeting.&nbsp; <br />
                <br />
                <span style=""font-size: 13.0px;"">Attended HEAL Nation Webinar
                  Wellness@Work, 6/6/13.</span>
                <br />
THE_END
    }
    cities << { name: 'Tigard', state: 'OR', primary_contacts: 'Sarah Cook at City of Jefferson', county: 'Washington', notes: <<THE_END
                Kent Wyatt, Sr. Management Analyst,&nbsp;attended HEAL Cities Campaign
                presentation at 2012 OCCMA Summer Conference<div>   <br /></div>
                 <div>John Cook, Mayor, &nbsp;<span style=""font-size: 10.0pt;"">attended
                    HEAL Cities Presentation at &nbsp;7/26/2013 OMA Conference in
                    Corvallis, OR.<br />
                    <br /></span>Participated in HEAL Nation webinar on Healthy Meetings
                  and Vending on 6/4/14.<br /></div>
THE_END
    }
    cities << { name: 'The Dalles', state: 'OR', primary_contacts: 'Stephen Lawrence at The Dalles', county: 'Wasco', notes: <<THE_END
                City Manager Nolan Young declined invitation to serve on Advisory
                Committee but saw presentation at LOC Conference (2012)<div>Mayor Steven
                    Lawrence&nbsp;<span style=""font-size: 10.0pt;"">attended HEAL Cities
                    Presentation at &nbsp;7/26/2013 OMA Conference in Corvallis, OR</span></div>
                <div>
                  <span style=""font-size: 10.0pt;"">
                    <br /></span></div>
                <div>
                  <span style=""font-size: 10.0pt;"">Executive Secretary Izetta Grossman (541.993.7995)&nbsp;</span>
                  <span style=""font-size: 10.0pt;"">v</span>
                  <span style=""font-size: 10.0pt;"">isited HEAL Cities Campaign exhibit
                    at 2013 LOC Annual Meeting. &nbsp;</span></div>
THE_END
    }
    cities << { name: 'Talent', state: 'OR', primary_contacts: 'William Cecil at City of Talent', county: 'Jackson', notes: <<THE_END
                Mayor William Cecil attended HEAL Cities Presentation at &nbsp;7/26/2013
                OMA Conference in Corvallis, OR
THE_END
    }
    cities << { name: 'Sutherlin', state: 'OR', primary_contacts: 'Dan Huff at City of Sutherlin', county: 'Douglas', notes: <<THE_END
                Gerald Gilliam, City Manager,&nbsp;attended HEAL Cities Campaign
                presentation at 2012 OCCMA Summer Conference<div>
                  <br /></div>
                <div>Also attended LOC (2012)</div>
                <div>
                  <br /></div>
                <div>Ron Harker, Finance Director, and Councilor Patricia
                    Klassen&nbsp;<span style=""font-size: 10.0pt;"">v</span>
                  <span style=""font-size: 10.0pt;"">isited HEAL Cities Campaign exhibit
                    at 2013 LOC Annual Meeting. &nbsp;</span></div>
THE_END
    }
    cities << { name: 'Stanfield', state: 'OR', primary_contacts: '', county: 'Umatilla', notes: <<THE_END
                Scott Pingel, City Manager,&nbsp;attended HEAL Cities Campaign presentation at 2012 OCCMA Summer Conference
THE_END
    }
    cities << { name: 'St. Helens', state: 'OR', primary_contacts: 'Kathy Payne at City of St Helens, Jennifer Dimsho at City of St. Helens/RARE AMericorps, John Walsh at City of St. Helens', county: 'Columbia', notes: <<THE_END
                Participated in HEALNation webinar on W@W<div>   <br /></div>
                   <div>Also, visited exhibit at LOC 2013</div>
                 <div>   <br /></div>
                 <div>BK connected with Jennifer Dimsho at the Columbia Health Coalition
                  meeting in early 2014. &nbsp; Jennifer made the introduction to John
                  Walsh. &nbsp;BK met with John Walsh on 5/23. &nbsp;Described Campaign
                  and Small Grants. Enthusiastic reception - aligns with Parks &amp; Rec
                  planning effort. &nbsp;</div>
                   <div>   <br /></div>
                   <div>Joined June 18 2014 by Passing a HEAL Resolution</div>
THE_END
    }
    cities << { name: 'Springfield', state: 'OR', primary_contacts: 'Jen Moore at Multnomah County HD, Christine Lundberg at City of Springfield', county: 'Lane', notes: <<THE_END
                Gino Grimaldi, City Manager,&nbsp;attended HEAL Cities Campaign
                presentation at 2012 OCCMA Summer Conference<div>   <br /></div>
                 <div>Mayor Christine Lundberg&nbsp;<span
                    style=""font-size: 10.0pt;"">attended HEAL Cities Presentation at
                    &nbsp;7/26/2013 OMA Conference in Corvallis, OR</span></div>
                <div>
                  <span style=""font-size: 10.0pt;"">
                    <br /></span></div>
                <div>
                  <span style=""font-size: 10.0pt;"">Councilor Sheri Moore&nbsp;</span>
                  <span style=""font-size: 10.0pt;"">attended presentation on Heal Cities
                    Campaign at the 2013 LOC Annual Meeting.</span></div>
THE_END
    }
    cities << { name: 'Sisters', state: 'OR', primary_contacts: '', county: 'Deschutes', notes: <<THE_END
                Eileen Stein, City Manager,&nbsp;attended HEAL Cities Campaign presentation at 2012 OCCMA Summer Conference<div><br></div><div>Participated in HEAL Nation W@W webinar in June 2013</div>
THE_END
    }
    cities << { name: 'Silverton', state: 'OR', primary_contacts: '', county: 'Marion', notes: <<THE_END
                Mayor Stu Rasmussen issued a proclamation.<br />
                 <br />
                 Attended   HEAL Nation Webinar, the Small Communities Toolbox on 9/24/14.<br />
                <br />
                Attended HEAL Nation Webinar, Enhancing walking and biking, 1/23/14.<br />
THE_END
    }
    cities << { name: 'Sherwood', state: 'OR', primary_contacts: '', county: 'Washington', notes: <<THE_END
                Joseph Gall, City Manager,&nbsp;attended HEAL Cities Campaign presentation at 2012 OCCMA Summer Conference
THE_END
    }
    cities << { name: 'Sheridan', state: 'OR', primary_contacts: '', county: 'Yamhill', notes: <<THE_END
                Francis Sheridan, City Manager,&nbsp;attended HEAL Cities Campaign presentation at 2012 OCCMA Summer Conference
THE_END
    }
    cities << { name: 'Seaside', state: 'OR', primary_contacts: 'Shelley Wells at , Sandra Larson at City of Veneta, Chris Stanley at City of Gold Hill, Tita Montero at City of Seaside, Justin Cutler at Sunset Empire Parks & Rec', county: 'Clatsop', notes: <<THE_END
                <span style=""font-size: 13.0px;"">Attended HEAL Nation Webinar
                  Wellness@Work, 6/6/13.</span>
                <div>   <br /></div>
                      <div>Mayor Don Larson attended the HEAL Cities presentation at the
                  July   26, 2013 Oregon Mayors Association Summer Conference</div>
                     <div>   <br /></div>
                     <div>Mayor Don Larson&nbsp;<span
                  style=""font-size: 10.0pt;"">v</span>     <span
                    style=""font-size: 10.0pt;"">isited HEAL Cities Campaign exhibit
                    at 2013 LOC Annual Meeting. &nbsp;</span></div>
                    <div>   <span style=""font-size: 10.0pt;"">     <br /></span></div>
                    <div>   <span style=""font-size: 10.0pt;"">Councilor Tita
                  Montero&nbsp;</span>   <span style=""font-size: 10.0pt;"">v</span>
                    <span style=""font-size: 10.0pt;"">isited HEAL Cities Campaign exhibit
                    at 2013 LOC Annual Meeting. &nbsp;</span></div>
                   <div>   <span style=""font-size: 10.0pt;"">     <br /></span></div>
                   <div>   <span style=""font-size: 10.0pt;"">BK met Justin Cutler,
                    Director     of     Sunset Empire Parks &amp; Rec at ORPA Conference
                    in September 2013.&nbsp;</span></div>
                   <div>   <span style=""font-size: 10.0pt;"">     <br /></span></div>
                   <div>   <span style=""font-size: 10.0pt;"">BK met with Renee Wells of
                    Sunset     Empire Parks and Rec and Steve Blakesley of the Clatsop
                    County HD on     April 16 &nbsp;to discuss HEAL Cities, and did a
                    site visit of     Seaside with Renee Wells. &nbsp;</span></div>
                   <div>   <span style=""font-size: 10.0pt;"">     <br /></span></div>
                   <div>   <span style=""font-size: 10.0pt;"">BK met with Mayor Don Larsen
                    and City     Manager Mark Stanley, with Renee Wells, Justin Cutler,
                    and Steve     Blakseley, on June 11. &nbsp;Discussed Small Grant RFP.</span></div>
                   <div>   <span style=""font-size: 10.0pt;"">Seaside passes HEAL
                    resolution     on     June 23</span></div>
                   <div>   <span style=""font-size: 10.0pt;"">     <br /></span></div>
                   <div>   <span style=""font-size: 10.0pt;"">     <br /></span></div>
                   <div>   <span style=""font-size: 10.0pt;"">     <br /></span></div>
                   <div>   <span style=""font-size: 10.0pt;"">Passed a HEAL Resolution on
                    June 14     2014. &nbsp;</span></div>
THE_END
    }
    cities << { name: 'Scappoose', state: 'OR', primary_contacts: 'Barbara Hayden at City of Scappoose, Scott Burge at City of Scappoose', county: 'Columbia', notes: <<THE_END
                Councillor Barbara Hayden stopped by the HEAL Cities Exhibit at the 2013
                LOC Annual &nbsp;Meeting<div>   <br /></div>
                  <div>Mayor Scott Burge stopped at LOC booth at 2013 Annual Meeting,
                  engaged in several rounds   of e-mail, asked that packets be sent to
                  his Council members, and then   he arranged for BK to present to City Council</div>
THE_END
    }
    cities << { name: 'Sandy', state: 'OR', primary_contacts: 'Seth Atkinson at City of Sandy, Olga Gerberg at City of Sandy', county: 'Clackamas', notes: <<THE_END
                Scott Lazenby, City Manager, attended HEAL Cities Campaign presentation
                at 2012 OCCMA Summer Conference<div>
                  <br /></div>
                <div>Councilor Olga Gerberg&nbsp;<span
                    style=""font-size: 10.0pt;"">attended presentation on Heal Cities
                    Campaign at the 2013 LOC Annual Meeting.</span></div>
THE_END
    }
    cities << { name: 'Salem', state: 'OR', primary_contacts: 'Ben Duncan at Multnomah County Health Department, Melissa Peterson at Latino Health Alliance, Linda Norris at City of Salem', county: 'Marion', notes: <<THE_END
                City Councillor Diana Dickey hears HEAL presentation at Marion County
                  HD<div>   <br /></div>
                  <div>Beth contacts Mayor Anna Peterson &nbsp;following introduction
                  from   Corvallis Mayor Julie Manning</div>
                  <div>   <br /></div>
                  <div>BK collaborated on a panel with Mayor Peterson for the 2013 OMA
                  summer conference. &nbsp;Mayor Peterson attended the HEAL Cities
                  presentation at the July 26, 2013 Oregon Mayors Association Summer
                  Conference.<br />   <div>     <br /></div>   <div>BK has been in
                    contact with Mayor Peterson.&nbsp;</div>   <div>     <br /></div>
                    <div>BK has also reached out to Salem City Manager Linda Norris and
                    Deputy City Manager Kacey Duncan</div>   <div>     <br /></div>
                    <div>Beth has also be participating in Family YMCA of Marion &amp;
                    Polk Counties Pioneering Communities project, and attending meetings
                    of CTG project</div>   <div>     <br /></div>   <div>City Manager
                    Linda Norris&nbsp;Visited HEAL Cities Campaign     exhibit at 2013
                    LOC Annual Meeting.&nbsp; <br />
                    <br />
                    <span style=""font-size: 13.0px;"">Attended HEAL Nation Webinar
                      Wellness@Work, 6/6/13.</span>
                    <br />     <div>     <br /></div>     <div>       <br /></div></div></div>
THE_END
    }
    cities << { name: 'Roseburg', state: 'OR', primary_contacts: 'Shelley Wells at ', county: 'Douglas', notes: <<THE_END
                Councillor Lew Marks&nbsp;v<span style=""font-size: 10.0pt;"">isited HEAL
                  Cities Campaign exhibit at 2013 LOC Annual Meeting.&nbsp; <br />   <br /></span>
                 <span style=""font-size: 13.0px;"">Attended HEAL Nation Webinar
                  Wellness@Work, 6/6/13.</span>
                 <br />
                <br />
                Attended   HEAL Nation Webinar, the Small Communities Toolbox on 9/24/14.<br />
THE_END
    }
    cities << { name: 'Redmond', state: 'OR', primary_contacts: 'George Endicott at City of Redmond', county: 'Deschutes', notes: <<THE_END
                Mayor George Endicott&nbsp;attended the HEAL Cities presentation at the
                July 26, 2013 Oregon Mayors Association Summer Conference
THE_END
    }
    cities << { name: 'Prineville', state: 'OR', primary_contacts: 'Betty Roppe at City of Prineville', county: 'UNKNOWN', notes: <<THE_END
                Mayor attended LOC conference 2012, stopped by booth. &nbsp;May have
                attended presentation.<div>   <br /></div>
                   <div>Mayor Betty Roppe&nbsp;<span style=""font-size: 10.0pt;"">attended
                    the HEAL Cities presentation at the July 26, 2013 Oregon Mayors
                    Association Summer Conference<br />     <br /></span>   <span
                    style=""font-size: 13.0px;"">Attended HEAL Nation Webinars:
                    Wellness@Work, 6/6/13; the small communities toolbox 9/24/13;</span>
                    <span style=""font-size: 13.0px;""> enhancing walking and biking
                    1/23/14; and healthy meetings and vending 6/4/14.</span>   <br /></div>
THE_END
    }
    cities << { name: 'Port Orford', state: 'OR', primary_contacts: 'James Auborn at City of Port  Orford', county: 'Curry', notes: <<THE_END
                Mayor James Auborn&nbsp;attended the HEAL Cities presentation at the
                July 26, 2013 Oregon Mayors Association Summer Conference
THE_END
    }
    cities << { name: 'Pilot Rock', state: 'OR', primary_contacts: '', county: 'Umatilla', notes: <<THE_END
                Mayor Virginia Carnes is on the Advisory Committee
THE_END
    }
    cities << { name: 'Philomath', state: 'OR', primary_contacts: '', county: 'Benton', notes: <<THE_END
                Councilor Joan Swanson (541.929.3001) v<span
                  style=""font-size: 10.0pt;"">isited HEAL Cities Campaign exhibit at 2013
                  LOC Annual Meeting. &nbsp;</span>
THE_END
    }
    cities << { name: 'Pendleton', state: 'OR', primary_contacts: 'Phillip Houk at City of Pendleton', county: 'Umatilla', notes: <<THE_END
                Mayor Phil Houk is on the Advisory Committee<div>   <br /></div>
                 <div>Mayor Houk&nbsp;<span style=""font-size: 10.0pt;"">attended the HEAL
                    Cities presentation at the July 26, 2013 Oregon Mayors Association
                    Summer Conference</span></div>
                <div>
                  <span style=""font-size: 10.0pt;"">
                    <br /></span></div>
                <div>
                  <span style=""font-size: 10.0pt;"">Councilor Chuck Wood&nbsp;</span>
                  <span style=""font-size: 10.0pt;"">visited HEAL Cities Campaign exhibit
                    at 2013 LOC Annual Meeting. &nbsp;</span></div>
THE_END
    }
    cities << { name: 'Oregon City', state: 'OR', primary_contacts: 'Harold ""Andy"" Anderson at Oregon CIty', county: 'Clackamas', notes: <<THE_END
                attended HEAL Cities Campaign presentation at 2012 OCCMA Summer Conference<div>
                  <br /></div>
                <div>participated in HEALNation webinar on W@W in June 2013.<br />
                  <br />Participated in HEAL Nation webinar on Healthy Meetings and
                  Vending on 6/4/14.<br /></div>
THE_END
    }
    cities << { name: 'Ontario', state: 'OR', primary_contacts: 'Marcy Skinner at City of Ontario', county: 'Malheur', notes: <<THE_END
                Marcie Skinner from Ontario, Oregon attended presentation on Heal Cities
                Campaign at the 2013 LOC Annual Meeting.
THE_END
    }
    cities << { name: 'Oakridge', state: 'OR', primary_contacts: 'Lester (""Les"") Biggerstaff at City of Oakridge, Jerry Shorey at City of Oakridge, Christine Slaven at City of Oakridge', county: 'Lane', notes: <<THE_END
                Les Biggerstaff stopped by HEAL Exhibit at LOC 2013 Conference<div>   <br /></div>
                   <div>Mayor Jerry Shorey&nbsp;<span
                    style=""font-size: 10.0pt;"">attended     the HEAL Cities presentation
                    at the July 26, 2013 Oregon Mayors     Association Summer Conference</span></div>
                  <div>   <span style=""font-size: 10.0pt;"">     <br /></span></div>
                  <div>   <span style=""font-size: 10.0pt;"">Councilors Christine Slaven
                    and Rayetta Clark</span>&nbsp; and Mayor Gerald Shorey&nbsp;v<span
                    style=""font-size: 10.0pt;"">isited HEAL Cities Campaign exhibit
                    at 2013 LOC Annual Meeting. &nbsp;</span></div>
THE_END
    }
    cities << { name: 'Nyssa', state: 'OR', primary_contacts: 'W. Mark Stringer at City of Nyssa, Brent Huffman at City of Nyssa, Roberta Donovan at City of Nyssa, Roberta Vanderwill at City of Nyssa', county: 'Malheur', notes: <<THE_END
                Mayor W. Mark Stringer attended the HEAL Cities presentation at the July
                26, 2013 Oregon Mayors Association Summer Conference<div>
                  <br /></div>
                <div>City Manager Roberta Vanderwill&nbsp;<span style=""font-size: 10.0pt;"">v</span>
                  <span style=""font-size: 10.0pt;"">isited HEAL Cities Campaign exhibit
                    at 2013 LOC Annual Meeting. &nbsp;</span></div>
THE_END
    }
    cities << { name: 'North Bend', state: 'OR', primary_contacts: '', county: 'Coos', notes: <<THE_END
                Mayor Rick Wetherall was invited to be on the Advisory COmmittee
THE_END
    }
    cities << { name: 'Newport', state: 'OR', primary_contacts: 'Dean Sawyer at ', county: 'Lincoln', notes: <<THE_END
                <div>
                  <br /></div>
                <div>James Voetberg, City Manager,&nbsp;<span
                    style=""font-size: 10.0pt;"">attended HEAL Cities Campaign
                    presentation at 2012 OCCMA Summer Conference</span></div>
                <div>
                  <br /></div>
                attended LOC Sep 27 2012<div>
                  <br /></div>
                <div>Julia Young-Lorian&nbsp;<span style=""font-size: 10.0pt;"">v</span>
                  <span style=""font-size: 10.0pt;"">isited HEAL Cities Campaign exhibit
                    at 2013 LOC Annual Meeting. &nbsp; She wanted to talk about
                    sidewalks. &nbsp; juliayounglorion@yahoo.com</span></div>
THE_END
    }
    cities << { name: 'Newberg', state: 'OR', primary_contacts: 'Lesley Woodruff at City of Newberg, Norma Alley at City of Newberg, Bob Andrews at City of Newberg, Lee Elliot at City of Newberg, Brittney Jeffries at City of Newberg', county: 'Yamhill', notes: <<THE_END
                Daniel Danicic, City Manager,&nbsp;attended HEAL Cities Campaign
                presentation at 2012 OCCMA Summer Conference<div>   <br /></div>
                 <div>Mayor Bob Andrews&nbsp;<span style=""font-size: 10.0pt;"">attended
                    the HEAL Cities presentation at the July 26, 2013 Oregon Mayors
                    Association Summer Conference</span></div>
                <div>
                  <span style=""font-size: 10.0pt;"">
                    <br /></span></div>
                <div>
                  <span style=""font-size: 10.0pt;"">Councilor Lesley Woodruff and City
                    Recorder Norma Alley&nbsp;</span>
                  <span style=""font-size: 10.0pt;"">attended presentation on Heal Cities
                    Campaign at the 2013 LOC Annual Meeting.</span></div>
THE_END
    }
    cities << { name: 'Nehalem', state: 'OR', primary_contacts: '', county: 'Tillamook', notes: <<THE_END
                Michael Nitzsche, City Manager,&nbsp;attended HEAL Cities Campaign
                presentation at 2012 OCCMA Summer Conference<div>
                  <br /></div>
                <div>Mayor Shirley Kalkhoven&nbsp;<span
                    style=""font-size: 10.0pt;"">attended the HEAL Cities presentation at
                    the July 26, 2013 Oregon Mayors Association Summer Conference</span></div>
THE_END
    }
    cities << { name: 'Myrtle Point', state: 'OR', primary_contacts: '', county: 'Coos', notes: <<THE_END
                John Walsh, City Manager,&nbsp;attended HEAL Cities Campaign presentation at 2012 OCCMA Summer Conference
THE_END
    }
    cities << { name: 'Myrtle Creek', state: 'OR', primary_contacts: 'Dan Mayor at , Marilyn Carter at Douglas county Wellness/Live Well Douglas', county: 'Douglas', notes: <<THE_END
                Jessica Daniel Jocoyn&nbsp;v<span style=""font-size: 10.0pt;"">isited HEAL
                  Cities Campaign exhibit at 2013 LOC Annual Meeting. &nbsp;</span>
THE_END
    }
    cities << { name: 'Mount Angel', state: 'OR', primary_contacts: 'Andrew Otte at City of Mount Angel', county: 'Marion', notes: <<THE_END
                Kelsy Lewis, Assistant to the City Manager,&nbsp;attended HEAL Cities
                Campaign presentation at 2012 OCCMA Summer Conference<div>
                  <br /></div>
                <div>Mayor Andrew Otte&nbsp;<span style=""font-size: 10.0pt;"">attended
                    the HEAL Cities presentation at the July 26, 2013 Oregon Mayors
                    Association Summer Conference</span></div>
THE_END
    }
    cities << { name: 'Monmouth', state: 'OR', primary_contacts: 'John Oberst at ', county: 'Polk', notes: <<THE_END
                Scott McClure, City Manager,&nbsp;attended HEAL Cities Campaign
                presentation at 2012 OCCMA Summer Conference<div>   <br /></div>
                 <div>Mayor John Oberst is on Advisory Committee</div>
                 <div>   <br /></div>
                 <div>Mayor John Oberst&nbsp;<span style=""font-size: 10.0pt;"">attended
                    the HEAL Cities presentation at the July 26, 2013 Oregon Mayors
                    Association Summer Conference</span></div>
                <div>
                  <span style=""font-size: 10.0pt;"">
                    <br /></span></div>
                <div>
                  <span style=""font-size: 10.0pt;"">Socialized with Monmouth delegation
                    at 2013 LOC Annual Meeting in hospitality room</span></div>
THE_END
    }
    cities << { name: 'Molalla', state: 'OR', primary_contacts: '', county: 'Clackamas', notes: <<THE_END
                <span style=""font-size: 11.0pt;font-family: Calibri;"">BK made a
                  presentation on HEAL in Molalla on 3/12/14 to the GROW coaltion, which
                  included several members of the City Council. &nbsp; I have also done
                  some outreach to the City Manager, and to Beret Halvorson, the OSU
                  Extension agent working with Molalla and Estacada. &nbsp;</span>
THE_END
    }
    cities << { name: 'Milwaukie', state: 'OR', primary_contacts: 'Teri Bankhead at City of  Milwaukie, Jeremy Ferguson at City of Mikwaukie, Mark Gamba at City of Mikwaukie, Bill Monahan at City of Milwaukie', county: 'Clackamas', notes: <<THE_END
                Teri Bankhead, Assistant to the Milwaukie City Manager, stopped by the
                HEAL Cities Campaign table at the 2013 LOC Annual &nbsp;Meeting<div>   <br /></div>
                   <div>Mayor Jeremy Ferguson&nbsp;<span
                    style=""font-size: 10.0pt;"">attended the HEAL Cities presentation at
                    the July 26, 2013 Oregon Mayors Association Summer Conference</span></div>
                 <div>   <span style=""font-size: 10.0pt;"">     <br /></span></div>
                 <div>   <span style=""font-size: 10.0pt;"">BK attended Safe Routes to
                    School     meeting in Mikwaukie on April 30, 2014. &nbsp;Connected
                    with Mayor     Ferguson and with Mark Gamba. &nbsp;</span></div>
                <div>
                  <span style=""font-size: 10.0pt;"">
                    <br /></span></div>
                <div>
                  <span style=""font-size: 10.0pt;"">BK subsequently connected with Mark
                    Gamba at CLF dinner.</span></div>
                 <div>   <span style=""font-size: 10.0pt;"">     <br /></span></div>
                 <div>   <span style=""font-size: 10.0pt;"">BK met with Councilor Mark
                    Gamba and     Clackamas County HD Outreach Director Kirsten
                    Ingersoll in Milwaukie     on June 30 2014 to talk about HEAL Cities
                    and Small Grants program&nbsp;</span></div>
                 <div>   <span style=""font-size: 10.0pt;"">     <br /></span></div>
                 <div>   <span style=""font-size: 10.0pt;"">Mark worked with the City
                    Manager to     get Resolution on the agenda for July 15 2014.
                    &nbsp;BK presented at     the work session.&nbsp;</span></div>
                  <div>   <span style=""font-size: 10.0pt;"">     <br /></span></div>
                  <div>   <br /></div>
THE_END
    }
    cities << { name: 'Milton-Freewater', state: 'OR', primary_contacts: '', county: 'Umatilla', notes: <<THE_END
                Mayor &nbsp;Lewis Key&nbsp;v<span style=""font-size: 10.0pt;"">isited HEAL
                  Cities Campaign exhibit at 2013 LOC Annual Meeting. &nbsp;</span>
THE_END
    }
    cities << { name: 'Metolius', state: 'OR', primary_contacts: 'Bill Reynolds at City of Metolius', county: 'Jefferson', notes: <<THE_END
                Mayor Bill Reynolds&nbsp;v<span style=""font-size: 10.0pt;"">isited HEAL
                  Cities Campaign exhibit at 2013 LOC Annual Meeting. &nbsp;</span>
THE_END
    }
    cities << { name: 'Merrill', state: 'OR', primary_contacts: 'Tim Saunders at City of Merrill', county: 'Klamath', notes: <<THE_END
                Mayor Tim Saunders&nbsp;attended the HEAL Cities presentation at the
                July 26, 2013 Oregon Mayors Association Summer Conference
THE_END
    }
    cities << { name: 'McMinnville', state: 'OR', primary_contacts: 'Richard Olson at City of McMinnville', county: 'Yamhill', notes: <<THE_END
                <span style=""font-size: 13.0px;"">Attended HEAL Nation Webinars:
                  Wellness@Work, 6/6/13 and the small communities toolbox 9/24/13.</span>
                 <div>   <br /></div>
                  <div>Mayor Richard Olson&nbsp;<span
                    style=""font-size: 10.0pt;"">attended     the HEAL Cities presentation
                    at the July 26, 2013 Oregon Mayors     Association Summer Conference</span></div>
THE_END
    }
    cities << { name: 'Manzanita', state: 'OR', primary_contacts: '', county: 'Tillamook', notes: <<THE_END
                Councilor Linda Kozlowski (503.799.5550)&nbsp;v<span
                  style=""font-size: 10.0pt;"">isited HEAL Cities Campaign exhibit at 2013
                  LOC Annual Meeting. &nbsp;</span>
THE_END
    }
    cities << { name: 'Madras', state: 'OR', primary_contacts: 'Melanie Widmer at City of Madras', county: 'Jefferson', notes: <<THE_END
                Mayor Melanie Widmer&nbsp;attended the HEAL Cities presentation at the
                July 26, 2013 Oregon Mayors Association Summer Conference<div>
                  <br /></div>
                <div>Councilor Royce Embanks&nbsp;<span style=""font-size: 10.0pt;"">v</span>
                  <span style=""font-size: 10.0pt;"">isited HEAL Cities Campaign exhibit
                    at 2013 LOC Annual Meeting. &nbsp;</span></div>
THE_END
    }
    cities << { name: 'Lincoln City', state: 'OR', primary_contacts: 'Harold ""Andy"" Anderson at Oregon CIty', county: 'Lincoln', notes: <<THE_END
                Mayor Dick Anderson Attended HEAL Cities Campaign presentation at OMA
                Summer Conference<div>
                  <br /></div>
                <div>Mayor Anderson also&nbsp;<span style=""font-size: 10.0pt;"">v</span>
                  <span style=""font-size: 10.0pt;"">isited HEAL Cities Campaign exhibit
                    at 2013 LOC Annual Meeting. &nbsp;</span></div>
THE_END
    }
    cities << { name: 'Lebanon', state: 'OR', primary_contacts: 'Paul Aziz at City of Lebanon', county: 'Linn', notes: <<THE_END
                HEAL Resolution.<br />
                <br />
                Attended   HEAL Nation Webinar, the Small Communities Toolbox on 9/24/14.<br />
THE_END
    }
    cities << { name: 'Lakeview', state: 'OR', primary_contacts: 'Ray Simms at City of Grants Pass', county: 'Lake', notes: <<THE_END
                <span style=""font-size: 13.0px;"">Attended HEAL Nation Webinar
                  Wellness@Work, 6/6/13.</span>
THE_END
    }
    cities << { name: 'Lakeside', state: 'OR', primary_contacts: 'Dean Warner at City of Lakeside', county: 'Coos', notes: <<THE_END
                Stopped by table at 2013 LOC Annual &nbsp;Meeting for &nbsp;materials
                and info<div>   <br /></div>
                 <div>Mayor Dean Warner&nbsp;<span style=""font-size: 10.0pt;"">attended
                    the HEAL Cities presentation at the July 26, 2013 Oregon Mayors
                    Association Summer Conference</span></div>
                <div>
                  <span style=""font-size: 10.0pt;"">
                    <br /></span></div>
                <div>
                  <span style=""font-size: 10.0pt;"">Mayor Dean Warner&nbsp;</span>
                  <span style=""font-size: 10.0pt;"">v</span>
                  <span style=""font-size: 10.0pt;"">isited HEAL Cities Campaign exhibit
                    at 2013 LOC Annual Meeting. &nbsp;</span></div>
THE_END
    }
    cities << { name: 'Lake Oswego', state: 'OR', primary_contacts: '', county: 'Clackamas', notes: <<THE_END
                David Donaldson, City Manager,&nbsp;attended HEAL Cities Campaign presentation at 2012 OCCMA Summer Conference
THE_END
    }
    cities << { name: 'La Pine', state: 'OR', primary_contacts: 'Ken Mulenex at City of La Pine', county: 'Deschutes', notes: <<THE_END
                Mayor Ken Mulenex&nbsp;attended the HEAL Cities presentation at the July
                26, 2013 Oregon Mayors Association Summer Conference<div>
                  <br /></div>
                <div>Mayor Mulenex&nbsp;<span style=""font-size: 10.0pt;"">v</span>
                  <span style=""font-size: 10.0pt;"">isited HEAL Cities Campaign exhibit
                    at 2013 LOC Annual Meeting. &nbsp;</span></div>
THE_END
    }
    cities << { name: 'La Grande', state: 'OR', primary_contacts: 'Robert Strope at City of La Grande', county: 'Union', notes: <<THE_END
                City Manager Robert Strope&nbsp;v<span style=""font-size: 10.0pt;"">isited
                  HEAL Cities Campaign exhibit at 2013 LOC Annual Meeting. &nbsp;</span>
THE_END
    }
    cities << { name: 'Klamath Falls', state: 'OR', primary_contacts: '', county: 'Klamath', notes: <<THE_END
                Mayor Irving &quot;Bud&quot; Hart declined offer to join Advisory
                Committee but expressed interest in Program.<br />
                <br />
                <span style=""font-size: 13.0px;"">Attended HEAL Nation Webinar
                  Wellness@Work, 6/6/13.</span>
                <br />
THE_END
    }
    cities << { name: 'Keizer', state: 'OR', primary_contacts: '', county: 'Marion', notes: <<THE_END
                Christopher Eppley, City Manager,&nbsp;attended HEAL Cities Campaign
                presentation at 2012 OCCMA Summer Conference<div>
                  <br /></div>
                <div>Mayor Lore Christopher&nbsp;<span
                    style=""font-size: 10.0pt;"">attended the HEAL Cities presentation at
                    the July 26, 2013 Oregon Mayors Association Summer Conference</span></div>
THE_END
    }
    cities << { name: 'Junction City', state: 'OR', primary_contacts: '', county: 'Lane', notes: <<THE_END
                Kevin Watson, City&nbsp;Manager,&nbsp;attended HEAL Cities Campaign presentation at 2012 OCCMA Summer Conference
THE_END
    }
    cities << { name: 'John Day', state: 'OR', primary_contacts: '', county: 'Grant', notes: <<THE_END
                Attended   HEAL Nation Webinar, the Small Communities Toolbox on 9/24/14.
THE_END
    }
    cities << { name: 'Island City', state: 'OR', primary_contacts: '', county: 'Union', notes: <<THE_END
                Mayor Dale DeLong&nbsp;attended the HEAL Cities presentation at the July
                26, 2013 Oregon Mayors Association Summer Conference
THE_END
    }
    cities << { name: 'Irrigon', state: 'OR', primary_contacts: '', county: 'Morrow', notes: <<THE_END
                Mayor David Burns&nbsp;attended the HEAL Cities presentation at the July
                26, 2013 Oregon Mayors Association Summer Conference
THE_END
    }
    cities << { name: 'Independence', state: 'OR', primary_contacts: 'David Clyne at City of Independence, John McArdle at City of  Independence', county: 'Polk', notes: <<THE_END
                HEAL Resolution adopted Feb 3 2014
THE_END
    }
    cities << { name: 'Hood River', state: 'OR', primary_contacts: '', county: 'Hood River', notes: <<THE_END
                Robert Francis, City Manager,&nbsp;attended HEAL Cities Campaign
                presentation at 2012 OCCMA Summer Conference.<br />
                <br />
                <span style=""font-size: 13.0px;"">Attended HEAL Nation Webinar
                  Wellness@Work, 6/6/13.</span>
                <br />
THE_END
    }
    cities << { name: 'Hillsboro', state: 'OR', primary_contacts: 'Aron Carleson at City of Hillsboro, Olga Acuña at City of Hillsboro, Darell Lumaco at City of Hillsboro', county: 'Washington', notes: <<THE_END
                D. Ellen Conley, City Manager,&nbsp;attended HEAL Cities Campaign
                presentation at 2012 OCCMA Summer Conference<div>   <br /></div>
                  <div>Council President Aron Carleson and Councilor Olga Acuna
                    and&nbsp;<span style=""font-size: 10.0pt;"">attended     presentation
                    on Heal Cities Campaign at the 2013 LOC Annual Meeting.</span></div>
                <div>
                  <span style=""font-size: 10.0pt;"">
                    <br /></span></div>
                <div>
                  <span style=""font-size: 10.0pt;"">Councilor Darell Lumaco&nbsp;</span>
                  <span style=""font-size: 10.0pt;"">v</span>
                  <span style=""font-size: 10.0pt;"">isited HEAL Cities Campaign exhibit
                    at 2013 LOC Annual Meeting. &nbsp;</span></div>
THE_END
    }
    cities << { name: 'Hermiston', state: 'OR', primary_contacts: 'Larry Davis at , Rod Hardin at City of Hermiston', county: 'Umatilla', notes: <<THE_END
                Councilors Lori Davis and Rod Hardin v<span
                  style=""font-size: 10.0pt;"">isited HEAL   Cities Campaign exhibit at
                  2013 LOC Annual Meeting. &nbsp;</span>
THE_END
    }
    cities << { name: 'Heppner', state: 'OR', primary_contacts: '', county: 'Morrow', notes: <<THE_END
                HEAL webinar participant
THE_END
    }
    cities << { name: 'Harrisburg', state: 'OR', primary_contacts: 'Brian Latta at City of Harrisburg', county: 'Linn', notes: <<THE_END
                City Administrator Brian Latta left VM that Council would be voting on a
                HEAL Resolution on 7/25.<div>   <br /></div>
                 <div>Probably interested in Small Grants for HEAL Cities.&nbsp;</div>
THE_END
    }
    cities << { name: 'Happy Valley', state: 'OR', primary_contacts: '', county: 'Clackamas', notes: <<THE_END
                Mayor Lori DeRemer and City Manager Jason Tuck&nbsp;attended the HEAL
                Cities presentation at the July 26, 2013 Oregon Mayors Association
                Summer Conference
THE_END
    }
    cities << { name: 'Halsey', state: 'OR', primary_contacts: '', county: 'Linn', notes: <<THE_END
                Mayor Cynthia Choat&nbsp;attended the HEAL Cities presentation at the
                July 26, 2013 Oregon Mayors Association Summer Conference
THE_END
    }
    cities << { name: 'Halfway', state: 'OR', primary_contacts: 'Sheila Farwell at City of Halfway', county: 'Baker', notes: <<THE_END
                Mayor Sheila Farwell, Mayor, stopped at the HEAL Exhibit at 2013 LOC
                Annual Meeting
THE_END
    }
    cities << { name: 'Gresham', state: 'OR', primary_contacts: 'Kelly Clarke at City of Gresham', county: 'Multnomah', notes: <<THE_END
                Erik Kvarsten, City Manager, and Rachael Fuller, Senior
                Manager, attended HEAL Cities Campaign presentation at 2012 OCCMA
                Summer Conference<div>
                  <br /></div>
                <div>Per Kelly Clarke, Gresham Council passed a HEAL Resolution on July
                  15, 2014. Motivated by Small Grants for HEAL Cities</div>
THE_END
    }
    cities << { name: 'Grants Pass', state: 'OR', primary_contacts: 'Michael Black at City of Grants Pass', county: 'Josephine', notes: <<THE_END
                Aaron Cubic, City Manager,&nbsp;attended HEAL Cities Campaign presentation at 2012 OCCMA Summer Conference<div><br></div><div>2nd contact at LOC (2012)&nbsp;</div>
THE_END
    }
    cities << { name: 'Gold Hill', state: 'OR', primary_contacts: 'Chris Stanley at City of Gold Hill', county: 'Jackson', notes: <<THE_END
                Ron Foggin, City Manager, stopped by HEAL Cities booth in exposition
                hall at 2012 &nbsp;LOC conference &nbsp;(Mr. Foggin then went to work
                for the City of Lebanon, for a brief period.)<div>
                  <br /></div>
                <div>Councilor Chris Stanley&nbsp;<span style=""font-size: 10.0pt;"">v</span>
                  <span style=""font-size: 10.0pt;"">isited HEAL Cities Campaign exhibit
                    at 2013 LOC Annual Meeting. &nbsp;</span></div>
THE_END
    }
    cities << { name: 'Gold Beach', state: 'OR', primary_contacts: 'Tamie Kaufman at City of Gold Beach', county: 'Curry', notes: <<THE_END
                Mayor Karl Popoff&nbsp;attended the HEAL Cities presentation at the July
                26, 2013 Oregon Mayors Association Summer Conference<div>   <br /></div>
                    <div>City Administrator Jodi Fritts-Matthley, Councilor Tamie
                  Kaufman   and Mayor Karl Popoff&nbsp;<span
                  style=""font-size: 10.0pt;"">vi</span>     <span
                    style=""font-size: 10.0pt;"">sited HEAL Cities Campaign exhibit     at
                    2013 LOC Annual Meeting.&nbsp; <br />     <br /></span>   <span
                    style=""font-size: 13.0px;"">Attended HEAL Nation Webinar
                    Wellness@Work, 6/6/13.</span>   <br /></div>
THE_END
    }
    cities << { name: 'Gervais', state: 'OR', primary_contacts: 'Shanti Platt at , Micky Wagner at City of Gervais, Susie Zwemke at City of Gervais', county: 'Marion', notes: <<THE_END
                Mayor Shanti Platt is on Advisory Committee<div>   <br /></div>
                  <div>Mayor Platt&nbsp;attended the HEAL Cities presentation at the
                  July   26, 2013 Oregon Mayors Association Summer Conference<br />
                    <div>   <br /></div>   <div>City Manager Susie &nbsp;Zwemke took
                    over from     previous City Manager in Fall 2013. &nbsp;Previously
                    City Recorder</div></div>
                 <div>   <br /></div>
                 <div>Mayor Shanti Platt and Councilor Micky Wagner&nbsp;<span
                    style=""font-size: 10.0pt;"">attended     presentation on Heal Cities
                    Campaign at the 2013 LOC Annual Meeting.</span></div>
THE_END
    }
    cities << { name: 'Gearhart', state: 'OR', primary_contacts: '', county: 'Clatsop', notes: <<THE_END
                Mayor Dianne Widdop&nbsp;attended the HEAL Cities presentation at the
                July 26, 2013 Oregon Mayors Association Summer Conference
THE_END
    }
    cities << { name: 'Forest Grove', state: 'OR', primary_contacts: 'Michael Sykes at Forest Grove, OR, Thomas (TJ) L. Johnston at City of Forest Grove', county: 'Washington', notes: <<THE_END
                Michael Sykes, City Manager,&nbsp;attended HEAL Cities Campaign
                presentation at 2012 OCCMA Summer Conference<div>   <br /></div>
                 <div>Councilor Thomas (TJ) L. Johnston and &nbsp;<span style=""font-size: 10.0pt;"">vi</span>
                  <span style=""font-size: 10.0pt;"">sited HEAL Cities Campaign exhibit
                    at 2013 LOC Annual Meeting. &nbsp;</span></div>
                <div>
                  <span style=""font-size: 10.0pt;"">
                    <br /></span></div>
                <div>
                  <span style=""font-size: 10.0pt;"">Patricia Truax, wife of &nbsp;Mayor
                    Peter Truax,&nbsp;</span>
                  <span style=""font-size: 10.0pt;"">v</span>
                  <span style=""font-size: 10.0pt;"">isited HEAL Cities Campaign exhibit
                    at 2013 LOC Annual Meeting. &nbsp;</span></div>
THE_END
    }
    cities << { name: 'Florence', state: 'OR', primary_contacts: 'Jacque Betz at , Nola Xavier at City of Florence', county: 'Lane', notes: <<THE_END
                City Manager Jacque Betz&nbsp;attended HEAL Cities Campaign presentation
                at 2012 OCCMA Summer Conference<div>   <br /></div>
                  <div>Jacque Betz is on Advisory Committee</div>
                  <div>   <br /></div>
                  <div>Participated in Wellness@Work HEAL Nation webinar in June 2013</div>
                  <div>   <br /></div>
                  <div>Mayor Nola Xavier&nbsp;<span style=""font-size: 10.0pt;"">attended
                    the HEAL Cities presentation at the July 26, 2013 Oregon Mayors
                    Association Summer Conference</span></div>
                 <div>   <span style=""font-size: 10.0pt;"">     <br /></span></div>
                 <div>   <span style=""font-size: 10.0pt;"">Councilor Joe Henry and Mayor
                    Nola Xavier&nbsp;</span>   <span style=""font-size: 10.0pt;"">v</span>
                  <span style=""font-size: 10.0pt;"">isited HEAL Cities Campaign exhibit
                    at 2013 LOC Annual Meeting. &nbsp;(541.999.2395)</span></div>
THE_END
    }
    cities << { name: 'Falls City', state: 'OR', primary_contacts: 'Amy Houghtailing at City of Falls City, OR, Amber Mathiesen, CFC at ', county: 'Polk', notes: <<THE_END
                Mayor Amy Houghtaling&nbsp;attended the HEAL Cities presentation at the
                July 26, 2013 Oregon Mayors Association Summer Conference<div>   <br /></div>
                  <div>Conducted healthy foods survey on July 28, 2013. &nbsp;Connected
                  with 25 people (of unknown origin) during this survey. &nbsp;[This
                  information taken from programmatic Excel spreadsheet] -NC</div>
                 <div>   <span style=""font-size: 10.0pt;"">BK assisted Amber Mathiesen to
                    apply     to KP for donation of dental supplies in December 2013.
                    &nbsp;Delivered the supplies in January 2014.&nbsp;</span></div>
                 <div>   <br /></div>
                 <div>BK contacted Amber Mathiesen (City Manager) on July 9,
                  acknowledging that Falls City had decided in 2013 not to join the HEAL
                  Campaign due to contrained staff resources, but alerting her to the
                  Small Grant opportunity. &nbsp; The COuncil passed a HEAL Resolution
                  the following day.&nbsp;</div>
THE_END
    }
    cities << { name: 'Fairview', state: 'OR', primary_contacts: 'Tamera Tlustos-Arnold at KP', county: 'Multnomah', notes: <<THE_END
                Samantha Nelson, Interim City Administrator,&nbsp;attended HEAL Cities
                Campaign presentation at 2012 OCCMA Summer Conference<div>   <br /></div>
                  <div>Fairview adopted a HEAL Resolution at City Council meeting on May
                  15, 2013.&nbsp;</div>
                  <div>   <br /></div>
                  <div>Mayor Mike Weatherby&nbsp;<span
                    style=""font-size: 10.0pt;"">attended     the HEAL Cities presentation
                    at the July 26, 2013 Oregon Mayors     Association Summer
                    Conference<br />     <br />Fairview passed a Community Gardens
                    Resolution (Res No. 39-2014)(as part of the     Parks and Rec Master
                    Plan) on July 2, 2014.<br /></span></div>
THE_END
    }
    cities << { name: 'Eugene', state: 'OR', primary_contacts: 'Melissa Taylor at Cowlitz-Wahkiakum Council of Governments, Kitty Piercy at ', county: 'Lane', notes: <<THE_END
                Mayor Kitty Piercy is on Advisory Committee<div>   <br /></div>
                  <div>Councilor Betty Taylor&nbsp;<span
                    style=""font-size: 10.0pt;"">Visited HEAL Cities Campaign exhibit at
                    2013 LOC Annual Meeting.&nbsp; <br />     <br /></span>   <span
                    style=""font-size: 13.0px;"">Attended HEAL Nation Webinar
                    Wellness@Work, 6/6/13.</span>   <br />
                  <br />Attended   HEAL Nation Webinar, the Small Communities Toolbox on 9/24/14.<br /></div>
THE_END
    }
    cities << { name: 'Estacada', state: 'OR', primary_contacts: 'Sheree Smith at Morrow County Health Department', county: 'Clackamas', notes: <<THE_END
                William Elliot, City Manager,&nbsp;attended HEAL Cities Campaign
                presentation at 2012 OCCMA Summer Conference<div>
                  <br /></div>
                <div>Councilor Ed Smith&nbsp;<span style=""font-size: 10.0pt;"">Visited
                    HEAL Cities Campaign exhibit at 2013 LOC Annual Meeting. &nbsp;</span></div>
THE_END
    }
    cities << { name: 'Enterprise', state: 'OR', primary_contacts: '', county: 'Wallowa', notes: <<THE_END
                Mayor Margaret Shaw&nbsp;attended the HEAL Cities presentation at the
                July 26, 2013 Oregon Mayors Association Summer Conference
THE_END
    }
    cities << { name: 'Eagle Point', state: 'OR', primary_contacts: '', county: 'Jackson', notes: <<THE_END
                Henry Lawrence, City Administrator,&nbsp;attended HEAL Cities Campaign
                presentation at 2012 OCCMA Summer Conference<div>   <br /></div>
                 <div>Mayor Robert Russell&nbsp;<span
                    style=""font-size: 10.0pt;"">attended     the HEAL Cities presentation
                    at the July 26, 2013 Oregon Mayors     Association Summer Conference</span></div>
                <div>
                  <span style=""font-size: 10.0pt;"">
                    <br /></span></div>
                <div>
                  <span style=""font-size: 10.0pt;"">Councilor Wayne Brown
                    (c.w.bett@charter.net) &nbsp;</span>
                  <span style=""font-size: 10.0pt;"">v</span>
                  <span style=""font-size: 10.0pt;"">isited HEAL Cities Campaign exhibit
                    at 2013 LOC Annual Meeting. &nbsp;</span></div>
THE_END
    }
    cities << { name: 'Durham', state: 'OR', primary_contacts: '', county: 'Washington', notes: <<THE_END
                Roland Signett, City Administrator,&nbsp;attended HEAL Cities Campaign
                presentation at 2012 OCCMA Summer Conference<div>
                  <br /></div>
                <div>Mayor Gery Schirado&nbsp;<span style=""font-size: 10.0pt;"">attended
                    the HEAL Cities presentation at the July 26, 2013 Oregon Mayors
                    Association Summer Conference</span></div>
THE_END
    }
    cities << { name: 'Dunes City', state: 'OR', primary_contacts: '', county: 'Lane', notes: <<THE_END
                Mayor Rebecca Ruede&nbsp;attended the HEAL Cities presentation at the
                July 26, 2013 Oregon Mayors Association Summer Conference
THE_END
    }
    cities << { name: 'Drain', state: 'OR', primary_contacts: 'Justin D. Cobb at City of Drain, Carl Patenode at City of Drain', county: 'Douglas', notes: <<THE_END
                Councilor Justin D. Cobb&nbsp;attended presentation on Heal Cities
                Campaign at the 2013 LOC Annual Meeting.
THE_END
    }
    cities << { name: 'Donald', state: 'OR', primary_contacts: 'Heidi Blaine at City of Donald', county: 'Marion', notes: <<THE_END
                City Manager Heidi Blaine&nbsp;attended HEAL Cities Campaign
                presentation at 2012 OCCMA Summer Conference<div>
                  <br /></div>
                <div>BK was guest at Town Hall about potential Farmers Market in Oct 2013<br />
                  <div>
                    <br /></div>
                  <div>Adopted HEAL Resolution Dec 10 2013</div></div>
THE_END
    }
    cities << { name: 'Depoe Bay', state: 'OR', primary_contacts: '', county: 'Lincoln', notes: <<THE_END
                Mayor A.J. Mattila&nbsp;attended the HEAL Cities presentation at the
                July 26, 2013 Oregon Mayors Association Summer Conference<div>
                  <br /></div>
                <div>Mayor Mattila&nbsp;<span style=""font-size: 10.0pt;"">v</span>
                  <span style=""font-size: 10.0pt;"">isited HEAL Cities Campaign exhibit
                    at 2013 LOC Annual Meeting. &nbsp;</span></div>
THE_END
    }
    cities << { name: 'Damascus', state: 'OR', primary_contacts: '', county: 'Clackamas', notes: <<THE_END
                Mayor Steve Spinnett&nbsp;attended the HEAL Cities presentation at the
                July 26, 2013 Oregon Mayors Association Summer Conference<div>
                  <br /></div>
                <div>Mayor Spinnett had previously attended a dinner meeting for
                  Washington and Clackamas County where BK made a HEAL presentation (date?)</div>
THE_END
    }
    cities << { name: 'Dallas', state: 'OR', primary_contacts: 'Jim Fairchild at , Ron Foggin at City of Dallas', county: 'Polk', notes: <<THE_END
                Councillor Jim Fairchild is on the Advisory Committee.<div>   <br />
                    <div>Mayor Brian Dalton&nbsp;<span
                      style=""font-size: 10.0pt;"">attended       the HEAL Cities
                      presentation at the July 26, 2013 Oregon Mayors       Association
                      Summer Conference</span></div>   <div>     <span
                      style=""font-size: 10.0pt;"">       <br /></span></div>   <div>City
                    Manager Ron Foggin&nbsp;<span style=""font-size: 10.0pt;"">Visited
                      HEAL Cities Campaign exhibit at 2013 LOC Annual Meeting.
                  &nbsp;</span></div>   <div>     <br /></div>   <div>Spent time with JF
                    and with Mayor Dalton at LOC Annual Meeting     2013<br />     <div>
                    <br /></div>     <div>Passed HEAL       Resolution Nov 18 2013<br />
                      <br />
                      <span style=""font-size: 13.0px;"">Attended HEAL Nation Webinar
                        Wellness@Work, 6/6/13.</span>
                      <br />       <div>         <br /></div></div></div></div>
THE_END
    }
    cities << { name: 'Culver', state: 'OR', primary_contacts: 'Shannon Poole at City of Culver', county: 'Jefferson', notes: <<THE_END
                Mayor Shawna Clanton&nbsp;attended the HEAL Cities presentation at the
                July 26, 2013 Oregon Mayors Association Summer Conference<div>
                  <br /></div>
                <div>Councilor Shannon Poole&nbsp;<span
                    style=""font-size: 10.0pt;"">attended presentation on Heal Cities
                    Campaign at the 2013 LOC Annual Meeting.</span></div>
THE_END
    }
    cities << { name: 'Creswell', state: 'OR', primary_contacts: 'Dave Stramm at City of Creswell', county: 'Lane', notes: <<THE_END
                Mayor Dave Stram&nbsp;attended the HEAL Cities presentation at the July
                26, 2013 Oregon Mayors Association Summer Conference<div>
                  <br /></div>
                <div>Mayor Stram&nbsp;<span style=""font-size: 10.0pt;"">v</span>
                  <span style=""font-size: 10.0pt;"">isited HEAL Cities Campaign exhibit
                    at 2013 LOC Annual Meeting. &nbsp;</span></div>
THE_END
    }
    cities << { name: 'Cottage Grove', state: 'OR', primary_contacts: 'M. Gary Williams at ', county: 'Lane', notes: <<THE_END
                Richard Meyers, City Manager,&nbsp;attended HEAL Cities Campaign
                presentation at 2012 OCCMA Summer Conference<div>   <br /></div>
                  <div>Mayor Thomas Munroe&nbsp;<span
                    style=""font-size: 10.0pt;"">attended     the HEAL Cities presentation
                    at the July 26, 2013 Oregon Mayors     Association Summer Conference</span></div>
                 <div>   <span style=""font-size: 10.0pt;"">     <br /></span></div>
                 <div>   <span style=""font-size: 10.0pt;"">City Manager Richard Meyers
                    &nbsp;and Councilor Jake Boone</span>   <span style=""font-size: 10.0pt;"">v</span>
                  <span style=""font-size: 10.0pt;"">isited HEAL Cities Campaign exhibit
                    at 2013 LOC Annual Meeting. &nbsp;</span></div>
THE_END
    }
    cities << { name: 'Corvallis', state: 'OR', primary_contacts: 'Julie Manning at City of Corvallis', county: 'Benton', notes: <<THE_END
                James Patterson, City Manager,&nbsp;attended HEAL Cities Campaign
                presentation at 2012 OCCMA Summer Conference<div>   <br /></div>
                   <div>Mayor Julie Manning serves on Advisory Committee</div>
                   <div>   <br /></div>
                   <div>On June 3, 2013, the Corvallis City Council adopted Resolution
                  2013-20 setting forth the commitment of the City of Corvallis to put
                  healthy options within reach of all residents. &nbsp;Councilor Penny
                  York sponsored the Resolution. &nbsp; &nbsp;</div>
                   <div>   <br /></div>
                   <div>Mayor Julie &nbsp;Manning and Assistant City &nbsp;Manager
                  Kathie     Louie&nbsp;<span style=""font-size: 10.0pt;"">attended the
                    HEAL Cities     presentation at     the July 26, 2013 Oregon Mayors
                    Association     Summer Conference</span></div>
                   <div>   <br /></div>
                   <div>Mayor Julie Manning arranged for HEAL Cities presentation at
                  Samaritan Childhood Obesity conference Feb 2013<br />   <br />   <span
                    style=""font-size: 13.0px;"">Attended HEAL Nation Webinar
                    Wellness@Work, 6/6/13.</span>   <br />
                  <br />Attended   HEAL Nation Webinar, the Small Communities Toolbox on 9/24/14.<br /></div>
THE_END
    }
    cities << { name: 'Cornelius', state: 'OR', primary_contacts: '', county: 'Washington', notes: <<THE_END
                Rob Drake, City Manager,&nbsp;attended HEAL Cities Campaign presentation at 2012 OCCMA Summer Conference
THE_END
    }
    cities << { name: 'Coquille', state: 'OR', primary_contacts: '', county: 'Coos', notes: <<THE_END
                Mayor Matt Rowe&nbsp;attended the HEAL Cities presentation at the July
                26, 2013 Oregon Mayors Association Summer Conference
THE_END
    }
    cities << { name: 'Coos Bay', state: 'OR', primary_contacts: 'Crystal Shoji at , Mike Vaughn at City of Coos Bay, Rodger Craddock at City of Coos Bay', county: 'Coos', notes: <<THE_END
                Roger Craddock, City Manager,&nbsp;attended HEAL Cities Campaign
                presentation at 2012 OCCMA Summer Conference<div>   <br /></div>
                     <div>Mayor Crystal Shoji is on Advisory Committee</div>
                     <div>   <br /></div>
                     <div>Councilor Mike Vaughn&nbsp;<span
                    style=""font-size: 10.0pt;"">attended presentation on Heal Cities
                    Campaign at the 2013 LOC Annual Meeting.</span></div>
                    <div>   <span style=""font-size: 10.0pt;"">     <br /></span></div>
                    <div>   <span style=""font-size: 10.0pt;"">Mayor Shoji and City
                    &nbsp;Manager Craddock</span>   <span
                  style=""font-size: 10.0pt;"">v</span>   <span
                    style=""font-size: 10.0pt;"">isited HEAL Cities Campaign exhibit
                    at 2013 LOC Annual Meeting.&nbsp; <br />
                    <br /></span>
                  <span style=""font-size: 13.0px;"">Attended HEAL Nation Webinar
                    Wellness@Work, 6/6/13.</span>
                  <br /></div>
THE_END
    }
    cities << { name: 'Columbia City', state: 'OR', primary_contacts: '', county: 'Columbia', notes: <<THE_END
                Participated in HEAL Nation W@W webinar in June 2013<div>
                  <br /></div>
                <div>Mayor Cheryl Young&nbsp;<span style=""font-size: 10.0pt;"">attended
                    the HEAL Cities presentation at the July 26, 2013 Oregon Mayors
                    Association Summer Conference</span></div>
THE_END
    }
    cities << { name: 'Coburg', state: 'OR', primary_contacts: '', county: 'Lane', notes: <<THE_END
                Petra Schuetz, City Manager,&nbsp;attended HEAL Cities Campaign
                presentation at 2012 OCCMA Summer Conference<div>
                  <br /></div>
                <div>Mayor Jae Pudewell&nbsp;<span style=""font-size: 10.0pt;"">attended
                    the HEAL Cities presentation at the July 26, 2013 Oregon Mayors
                    Association Summer Conference</span></div>
THE_END
    }
    cities << { name: 'Clatskanie', state: 'OR', primary_contacts: '', county: 'Columbia', notes: <<THE_END
                Mayor Diane Pohl&nbsp;attended the HEAL Cities presentation at the July
                26, 2013 Oregon Mayors Association Summer Conference
THE_END
    }
    cities << { name: 'Central Point', state: 'OR', primary_contacts: '', county: 'Jackson', notes: <<THE_END
                Phillip Messina, City Manager,&nbsp;attended HEAL Cities Campaign
                presentation at 2012 OCCMA Summer Conference<div>
                  <br /></div>
                <div>Mayor Hank Williams&nbsp;<span style=""font-size: 10.0pt;"">attended
                    the HEAL Cities presentation at the July 26, 2013 Oregon Mayors
                    Association Summer Conference</span></div>
THE_END
    }
    cities << { name: 'Cave Junction', state: 'OR', primary_contacts: 'Carl Jacobson at City of Cave Junction', county: 'Josephine', notes: <<THE_END
                Mayor Carl Jacobson, Jr.&nbsp;attended the HEAL Cities presentation at
                the July 26, 2013 Oregon Mayors Association Summer Conference<div>
                  <br /></div>
                <div>Mayor Jacobson&nbsp;<span style=""font-size: 10.0pt;"">attended
                    presentation on Heal Cities Campaign at the 2013 LOC Annual Meeting.</span></div>
THE_END
    }
    cities << { name: 'Cascade Locks', state: 'OR', primary_contacts: 'Deanna Busdieker at City of Cascade Locks', county: 'Hood River', notes: <<THE_END
                Councilor Deanna Busdieker&nbsp;v<span style=""font-size: 10.0pt;"">isited
                  HEAL Cities Campaign exhibit at 2013 LOC Annual Meeting. &nbsp;</span>
THE_END
    }
    cities << { name: 'Canyonville', state: 'OR', primary_contacts: '', county: 'Douglas', notes: <<THE_END
                Participated in HEALNation W@W webinar.
THE_END
    }
    cities << { name: 'Cannon Beach', state: 'OR', primary_contacts: 'Nancy Giasson at Cannon Beach Community Church, Wendy Higgins at City of Cannon Beach', county: 'Clatsop', notes: <<THE_END
                Councilors Nancy Giasson and Wendy Higgins v<span
                  style=""font-size: 10.0pt;"">isited   HEAL Cities Campaign exhibit at
                  2013 LOC Annual Meeting. &nbsp;</span>
THE_END
    }
    cities << { name: 'Canby', state: 'OR', primary_contacts: '', county: 'Clackamas', notes: <<THE_END
                Mayor attended 2012 LOC conf. &nbsp;<div><br></div><div>No staff.</div>
THE_END
    }
    cities << { name: 'Boardman', state: 'OR', primary_contacts: 'Karen Pettigrew at City of Boardman, Sandy Toms at City of Boardman', county: 'Morrow', notes: <<THE_END
                Stopped to visit HEAL table at 2013 LOC<div>   <br /></div>
                 <div>Mayor Sandy Toms&nbsp;<span style=""font-size: 13.0px;"">attended
                    the     HEAL Cities presentation at the July 26, 2013 Oregon Mayors
                    Association Summer Conference</span></div>
                <div>
                  <span style=""font-size: 13.0px;"">
                    <br /></span></div>
                <div>
                  <span style=""font-size: 13.0px;"">Mayor Sandy Toms&nbsp;</span>
                  <span style=""font-size: 10.0pt;"">v</span>
                  <span style=""font-size: 10.0pt;"">isited HEAL Cities Campaign exhibit
                    at 2013 LOC Annual Meeting. &nbsp;</span></div>
THE_END
    }
    cities << { name: 'Bend', state: 'OR', primary_contacts: 'Jodie Barram at City of Bend', county: 'Deschutes', notes: <<THE_END
                Jon Skidmore, Assistant City Manager, and Robyn Christie, City
                Recorder,&nbsp;attended HEAL Cities Campaign presentation at 2012 OCCMA
                Summer Conference<div>   <br /></div>
                 <div>Jodie Barram, Mayor Pro Tem,&nbsp;<span
                  style=""font-size: 10.0pt;"">v</span>   <span
                    style=""font-size: 10.0pt;"">isited HEAL Cities Campaign exhibit
                    at 2013 LOC Annual Meeting.&nbsp; <br />
                    <br /></span>
                  <span style=""font-size: 13.0px;"">Attended HEAL Nation Webinar
                    Wellness@Work, 6/6/13.</span>
                  <br /></div>
THE_END
    }
    cities << { name: 'Beaverton', state: 'OR', primary_contacts: 'Lindsey Kuipers at City of Beaverton, Denny Doyle at , Nancy Bates at City of Beaverton', county: 'Washington', notes: <<THE_END
                Randy Early, Chief Administrative Officer,&nbsp;attended HEAL Cities
                Campaign presentation at 2012 OCCMA Summer Conference<div>
                  <br /></div>
                <div>Beaverton also at LOC (2012)</div>
                <div>
                  <br /></div>
                <div>Mayor Denny Doyle&nbsp;<span style=""font-size: 13.0px;"">attended
                    the HEAL Cities presentation at the July 26, 2013 Oregon Mayors
                    Association Summer Conference</span></div>
                <div>
                  <span style=""font-size: 13.0px;"">
                    <br /></span></div>
                <div>
                  <span style=""font-size: 13.0px;"">BK participated on Community Health
                    Advisory Committee (meets monthly, part of Community Transformation
                    Grant, working on HEALTH chapter to the Comprehensive Plan</span></div>
                <div>
                  <span style=""font-size: 13.0px;"">
                    <br /></span></div>
                <div>
                  <span style=""font-size: 13.0px;"">HR participated in mid-Atlantic HEAL
                    webinar on Healthy Meeting policies</span></div>
                <div>
                  <span style=""font-size: 13.0px;"">BK working with HR on Healthy Meeting
                    policy and other Wellness@Work content</span></div>
                <div>
                  <span style=""font-size: 13.0px;"">
                    <br /></span></div>
                <div>
                  <span style=""font-size: 13.0px;"">BK&nbsp;</span></div>
THE_END
    }
    cities << { name: 'Bay City', state: 'OR', primary_contacts: 'Melissa Peterson at Latino Health Alliance', county: 'Tillamook', notes: <<THE_END
                Mayor Shaena Peterson stopped by the HEAL Cities Campaign exhibit at the 2013 LOC Annual Meeting
THE_END
    }
    cities << { name: 'Banks', state: 'OR', primary_contacts: 'Christy Greagor at City of Banks', county: 'Washington', notes: <<THE_END
                James Hough, City Manager,&nbsp;attended HEAL Cities Campaign
                presentation at 2012 OCCMA Summer Conference<div>
                  <br /></div>
                <div>Approached BK re 5 Washington County Cities interested in becoming
                  certififed as Bike Friendly Cities</div>
                <div>
                  <br /></div>
                <div>Succeeded after retirement by Kyle Awesome</div>
                <div>
                  <br /></div>
                <div>After KA resignation, JoLynn Becker became Acting CM. &nbsp;Meeting
                  scheduled April 8 2013.</div>
                <div>
                  <br /></div>
                <div>Councilor Christy Greagor&nbsp;<span
                    style=""font-size: 10.0pt;"">attended presentation on Heal Cities
                    Campaign at the 2013 LOC Annual Meeting.</span></div>
THE_END
    }
    cities << { name: 'Bandon', state: 'OR', primary_contacts: 'Claudine Hundhausen at City of Bandon, Nancy Drew at City of Bandon', county: 'Coos', notes: <<THE_END
                Councilor &nbsp;Mary Schamehorn&nbsp;Visited HEAL Cities Campaign
                exhibit at 2013 LOC Annual Meeting. &nbsp;(541.404.7291)<div>   <br /></div>
                 <div>Councilors Claudine Hundhausen and Nancy Drew visited&nbsp;<span
                    style=""font-size: 10.0pt;"">HEAL Cities Campaign exhibit at 2013 LOC
                    Annual Meeting. &nbsp;</span></div>
THE_END
    }
    cities << { name: 'Aumsville', state: 'OR', primary_contacts: '', county: 'Marion', notes: <<THE_END
                Mayor Harold White&nbsp;<span style=""font-size: 13.0px;"">attended the
                  HEAL Cities presentation at the July 26, 2013 Oregon Mayors
                  Association Summer Conference</span>
THE_END
    }
    cities << { name: 'Athena', state: 'OR', primary_contacts: '', county: 'Umatilla', notes: <<THE_END
                Mayor John Shafer&nbsp;<span style=""font-size: 13.0px;"">attended the
                  HEAL Cities presentation at the July 26, 2013 Oregon Mayors
                  Association Summer Conference</span>
                <div>
                  <span style=""font-size: 13.0px;"">
                    <br /></span></div>
                <div>
                  <span style=""font-size: 13.0px;"">BK visiting Athena/Weston for
                    presentation on HEAL Mar 5 2013</span></div>
THE_END
    }
    cities << { name: 'Astoria', state: 'OR', primary_contacts: 'Drew Herzig at City of Astoria, Steven  Blakesley at Clatsop County Public Health, Angela Cosby at City of Astoria', county: 'Clatsop', notes: <<THE_END
                City Manager Paul Benoit&nbsp;attended HEAL Cities Campaign presentation
                at 2012 OCCMA Summer Conference<div>   <br /></div>
                  <div>Councilor Drew Herzig&nbsp;<span
                  style=""font-size: 10.0pt;"">v</span>   <span
                    style=""font-size: 10.0pt;"">isited HEAL Cities Campaign exhibit
                    at 2013 LOC Annual Meeting. &nbsp;</span></div>
                 <div>   <span style=""font-size: 10.0pt;"">     <br /></span></div>
                 <div>   <span style=""font-size: 10.0pt;"">April 16 2014 - BK meets with
                    Clatsop     COunty HD Steve Blakesley. &nbsp;He put BK in contact
                    with Angela     Crosby and Karen Mellin,</span></div>
                 <div>   <span style=""font-size: 10.0pt;"">     <br /></span></div>
                 <div>   <span style=""font-size: 10.0pt;"">June 11 2014 - BK meets in
                    Astoria     with Steve Blakesley, Karen Mellin, Angela Crosby, and
                    other City     staff. &nbsp;Describes Campaign, discussed Small
                    Grants RFP.     &nbsp;Makes site visit with Angela Crosby.</span></div>
                 <div>   <span style=""font-size: 10.0pt;"">     <br /></span></div>
                 <div>   <span style=""font-size: 10.0pt;"">June 12, 2014 - BK meets tieh
                    Council     Drew Herzig, makes site visit with Drew Herzip. &nbsp;</span></div>
                 <div>   <span style=""font-size: 10.0pt;"">     <br /></span></div>
                 <div>   <span style=""font-size: 10.0pt;"">July __ 2014 - Astoria adopts
                    HEAL Resolution.</span></div>
THE_END
    }
    cities << { name: 'Ashland', state: 'OR', primary_contacts: '', county: 'Jackson', notes: <<THE_END
                Dave Kanner, City Admininstrator,attended HEAL Cities Campaign
                presentation at 2012 OCCMA Summer Conference&nbsp;<div>
                  <br /></div>
                <div>City Councilor Michael Morris&nbsp;<span style=""font-size: 10.0pt;"">v</span>
                  <span style=""font-size: 10.0pt;"">isited HEAL Cities Campaign exhibit
                    at 2013 LOC Annual Meeting. &nbsp;</span></div>
THE_END
    }
    cities << { name: 'Amity', state: 'OR', primary_contacts: '', county: 'Yamhill', notes: <<THE_END
                Mayor Michael Cape&nbsp;<span style=""font-size: 13.0px;"">attended the
                  HEAL Cities presentation at the July 26, 2013 Oregon Mayors
                  Association Summer Conference</span>
THE_END
    }
    cities << { name: 'Albany', state: 'OR', primary_contacts: '', county: 'Linn', notes: <<THE_END
                Wes Hare, City Manager,&nbsp;attended HEAL Cities Campaign presentation
                at 2012 OCCMA Summer Conference<div>   <br /></div>
                  <div>Wes is also on Advisory Committee</div>
                  <div>   <br /></div>
                  <div>Mayor Sharon Konopa&nbsp;<span
                    style=""font-size: 13.0px;"">attended     the HEAL Cities presentation
                    at the July 26, 2013 Oregon Mayors     Association Summer
                    Conference.<br />     <br />Attended HEAL Nation Webinar
                    Wellness@Work, 6/6/13 and the small communities toolbox 9/24/13.<br /></span></div>
THE_END
    }

    city_designations_updated = 0
    city_designation_error_count = 0
    error_messages = []

    cities.each do |city|
      saved_city = dbi_ophi.cities.find_by(name: city[:name], county: city[:county], state: city[:state])
      if saved_city.nil?
        add_error_count += 1
        error_messages << "City #{city[:name]} not found"
        break
      end

      cda = saved_city.city_designation_achievements.order(date: :desc).first
      if cda.nil?
        city_designation_error_count += 1
        error_messages << "could not find a cda for city #{city[:name]}."
        break
      end

      notes_html = city[:notes]
      notes_html = notes_html.lines.map {|l| l.strip}.join("\n") #strip extra whitespace out of each line
      notes_html.gsub!(/\n/," ") #replace newlines with a space
      notes_text = render_to_ascii(notes_html) #strip the html, if any

      notes_text = notes_text.lines.map {|l| l.strip}.join("\n") #strip extra whitespace out of each line
      notes_text.gsub!(/\n+/,"\n\n") #replace multiple newlines with two newlines
      cda.notes = notes_text
      if cda.save
        city_designations_updated += 1
      else
        city_designation_error_count += 1
        error_messages << cda.errors.inspect
      end
    end

    puts error_messages
    puts "City designation achievement notes updated: #{city_designations_updated}/ errors:#{city_designation_error_count}."

  end

  private

  def render_to_ascii(node)
    nokogiri_fragment = Nokogiri::HTML.fragment(node)

    blocks = %w[p div address]                      # els to put newlines after
    swaps  = { "br"=>"\n\n", "hr"=>"\n#{'-'*70}\n" }  # content to swap out
    dup = nokogiri_fragment.dup                                  # don't munge the original

    # Get rid of superfluous whitespace in the source
    dup.xpath('.//text()').each{ |t| t.content = t.text.gsub(/\s+/,' ') }

    # Swap out the swaps
    dup.css(swaps.keys.join(',')).each{ |n| n.replace( swaps[n.name] ) }

    # Slap a newline after each block level element
    dup.css(blocks.join(',')).each{ |n| n.after("\n") }

    # Return the modified text content
    dup.text
  end
end