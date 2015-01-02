namespace :heal_ophi_communications do

  def upload_communications
    dbi_ophi = Heal::DatabaseInstance.find_by(instance_name: OPHI_DATABASE_INSTANCE_NAME)

    dbi_ophi.communications.delete_all

    communications = []

    communications << { date: '41864', duration: '20', contact_type: 'E-mail Exchange',  organization_type: 'Participating City', contacts: "Paula Rose at City of Hillsboro, , Lori Mason at City of Hillsboro, ", cities: "Hillsboro, OR", staff: "Beth Kaye", topics: "Other, Site visit", notes: <<END_TEXT
Sent e-mail to follow up on initial meeting.<div>
  <br /></div>
<div>
  <div
    style=""color: rgb(34,34,34);font-family: arial , sans-serif;background-color: rgb(255,255,255);"">&nbsp;I
    enjoyed the tour of the Aquatic Center and appreciated the
    preparation you had done for our conversation.&nbsp;</div>
  <div style=""color: rgb(34,34,34);font-family: arial , sans-serif;background-color: rgb(255,255,255);"">
    <br /></div>
  <div
    style=""color: rgb(34,34,34);font-family: arial , sans-serif;background-color: rgb(255,255,255);"">&nbsp;I
    came away from our meeting very impressed with the range of programs
    Hillsboro has already undertaken to to provide HEAL options to city
    residents, visitors, and employees. &nbsp;I was excited to hear that
    you and your City Manager see the potential of the Campaign to raise
    the profile of health and wellness throughout the City&#39;s
    operations, and to make Parks &amp; Rec the go-to resource on these issues</div>
  <div style=""color: rgb(34,34,34);font-family: arial , sans-serif;background-color: rgb(255,255,255);"">
    <br /></div>
  <div
    style=""color: rgb(34,34,34);font-family: arial , sans-serif;background-color: rgb(255,255,255);"">As
    I emphasized, the HEAL Cities Campaign meets cities where they are,
    and helps them to take the next step. &nbsp;You described a series
    of internal conversations you will be having. &nbsp;When you are
    ready to talk about how to proceed, please let me know. &nbsp;</div>
  <div style=""color: rgb(34,34,34);font-family: arial , sans-serif;background-color: rgb(255,255,255);"">
    <br /></div>
  <div
    style=""color: rgb(34,34,34);font-family: arial , sans-serif;background-color: rgb(255,255,255);"">At
    some point, I would love to take a tour of the city with an insider,
    who could tell me about the history of the area, the plans now in
    place, and ideas for the future. That would help me to understand
    the context for any policy work. &nbsp;</div></div>
END_TEXT
}
    communications << { date: '41863', duration: '90', contact_type: 'In-person Meeting',  organization_type: 'Participating City', contacts: "Paula Rose at City of Hillsboro, , Lori Mason at City of Hillsboro, ", cities: "Hillsboro, OR", staff: "Beth Kaye", topics: "Introduction To HEAL Cities, Land Use & Transportation, Access to Healthy Food Options, Shared Use, Workplace Wellness, Other, Hunger and Obesity, Parks & Rec", notes: <<END_TEXT
<div
  style=""color: rgb(34,34,34);font-family: arial , sans-serif;background-color: rgb(255,255,255);"">Met
  at Aquatics Center. &nbsp;Paula and Lori had prepared for meeting by
  gathering info about Hillsboro&#39;s current HEAL policies. &nbsp;</div>
<div style=""color: rgb(34,34,34);font-family: arial , sans-serif;background-color: rgb(255,255,255);"">
  <br /></div>
<div
  style=""color: rgb(34,34,34);font-family: arial , sans-serif;background-color: rgb(255,255,255);"">Hillsboro
  has IGA with the school district re gym space/aquatic center space.&nbsp;</div>
<div
  style=""color: rgb(34,34,34);font-family: arial , sans-serif;background-color: rgb(255,255,255);"">There
  is a community garden at one of the schools.</div>
<div
  style=""color: rgb(34,34,34);font-family: arial , sans-serif;background-color: rgb(255,255,255);"">Tuality
  Hospital is running something called TheFitProject.org</div>
<div
  style=""color: rgb(34,34,34);font-family: arial , sans-serif;background-color: rgb(255,255,255);"">There
  is lots of public transit. &nbsp;The city runs an even every year to
  encourge bike commuting. &nbsp;</div>
<div
  style=""color: rgb(34,34,34);font-family: arial , sans-serif;background-color: rgb(255,255,255);"">Hillsboro
  has been very engaged in acquiring partks.</div>
<div style=""color: rgb(34,34,34);font-family: arial , sans-serif;background-color: rgb(255,255,255);"">
  <br /></div>
<div
  style=""color: rgb(34,34,34);font-family: arial , sans-serif;background-color: rgb(255,255,255);"">Some
  potential HEAL policies where Hillsboro might engage:</div>
<div
  style=""color: rgb(34,34,34);font-family: arial , sans-serif;background-color: rgb(255,255,255);"">Snap
  Match at the Farmer&#39;s Market</div>
<div
  style=""color: rgb(34,34,34);font-family: arial , sans-serif;background-color: rgb(255,255,255);"">A
  Food Resource Manager (making sure good food does not go to waste and
  makes it to the tables of the hungry)</div>
<div
  style=""color: rgb(34,34,34);font-family: arial , sans-serif;background-color: rgb(255,255,255);"">Community
  garden orother activity at the Senior Center</div>
<div style=""color: rgb(34,34,34);font-family: arial , sans-serif;background-color: rgb(255,255,255);"">
  <br /></div>
<div
  style=""color: rgb(34,34,34);font-family: arial , sans-serif;background-color: rgb(255,255,255);"">Paula
  sees HEAL as a potentially big program. &nbsp;She will talk to Wayne
  and Dave, and to the committee (not sure which one). &nbsp;She thinks
  Michael (the City Manager?) will be &quot;all over it.&quot; &nbsp;</div>
<div style=""color: rgb(34,34,34);font-family: arial , sans-serif;background-color: rgb(255,255,255);"">
  <br /></div>
END_TEXT
}
    communications << { date: '41949', duration: '90', contact_type: 'In-person Meeting',  organization_type: 'County Health Department', contacts: "Rebecca Stavenjord at Multnomah County HD, ", cities: "Gresham, OR", staff: "Beth Kaye", topics: "Land Use & Transportation, Access to Healthy Food Options, Other, Coordination with County Health Departments", notes: <<END_TEXT
Beth attended meeting re Rockwood application to become a Federal
Promise Zone. &nbsp;<div>Discussion reolved around infrstructureL
  &nbsp;housing, transportation, parks, sidewalks for connectivity</div>
<div>
  <br /></div>
<div>Also present:</div>
<div>Julie Reed - Legacy</div>
<div>Dina DeNucci - Wallace Medical Concern</div>
<div>EdHoover - Adventist</div>
<div>Olivia Quiroz - MultCo HD</div>
<div>Linda Nilsen- Solares - Project Access Now</div>
<div>Megan McAnnich- Jones</div>
<div>Betty Domingues - Home Forward</div>
<div>Nora Olsner</div>
<div>Jenny - Rockwood CDC</div>
<div>Casey Kalise -- Chair Kafoury&#39;s office</div>
<div>
  <br /></div>
<div>
  <br /></div>
END_TEXT
}
    communications << { date: '41974', duration: '30', contact_type: 'Telephone Call',  organization_type: 'Participating City', contacts: "Kayla Warner at Clatsop County HD, Dec 09 2014", cities: "Astoria, OR, Seaside, OR, Warrenton, OR", staff: "Beth Kaye", topics: "Land Use & Transportation, Access to Healthy Food Options, Workplace Wellness, Other, Coordination with County Health Departments, Evaluation", notes: <<END_TEXT
Warrenton is interested in joining HEAL Cities<div>Kayla met with Debbie
  Morrow, who is on the school Board, &nbsp;very involved in Way to
  Wellville, and has close ties with the City Manager. &nbsp;Kayla
  introduced the subject of HEAL Cities, and Debbie was interested.
  &nbsp;Warrenton has more poverty than the other cities in Clatsop
  County. &nbsp;They would like to set up a meeting/site visit. Beth
  reviewed HEAL resolution process. &nbsp;</div>
<div>
  <br /></div>
<div>Seaside: &nbsp;Kayla met with Esther Moburg (the Library Director)
  and Neal Wallace, Public Works. &nbsp;Public Works interested in
  putting new bike racks downtown. &nbsp;Might be able to get $$ from
  Oregon Arts Council. &nbsp;(Raised equity issue - &nbsp;how about bike
  racks in the neighborhoods where year round residents live.)&nbsp;</div>
<div>
  <br /></div>
<div>Astoria: &nbsp;upset that it did not get the Small Grant.
  &nbsp;Working to assess what policies it has and where the gaps are. &nbsp;</div>
<div>
  <br /></div>
<div>Beth suggested that County might consider funding a food resource
  developer - perhaps in cooperation with the North Coast Food Web.</div>
<div>
  <br /></div>
<div>Beth had previously suggested ChangeLab Solutions: &nbsp;Kayla
  really liked this resource. &nbsp;</div>
<div>
  <br /></div>
<div>
  <br /></div>
END_TEXT
}
    communications << { date: '41946', duration: '90', contact_type: 'Telephone Call',  organization_type: 'County Health Department', contacts: "Steven  Blakesley at Clatsop County Public Health, ", cities: "Astoria, OR", staff: "Beth Kaye", topics: "Other, Coordination with County Health Departments", notes: <<END_TEXT
Steven Blakesley is the Clatsop County HD point person for Way to
Wellville, a 5 year program sponsored by financier Esther Dyson (with
participation from RWJF , IBM, and other heavy hitters) where 5
communities across the US have been challenged to act to improve
community health. &nbsp;At the end of the program, the community that
has made the greatest improvements will receive a substantial cash
prize. &nbsp;<div>
  <br /></div>
<div>The evaluation team is led by the National Institutes of Medecine.
  &nbsp;Two OSU community reserachers, Paige Farris and Jackie Shannon,
  are involved with developing the eval model and tools.</div>
<div>
  <br /></div>
<div>Dyson is interested in health care disruption: &nbsp;how can new
  tech and tools be brought to bear in a way that radically changes the
  status quo. The idea is to be bold and experiment. &nbsp;During the
  Way to Wellville period, the communities will &nbsp;be able to request
  assistance from a broad range of companies who are interested in
  developing and testing new products and services that may have broader
  application. &nbsp;For example, Arizona State has signed on to analyze
  sludge and outflow from H2O treatment plans to identify the presence
  of benzodiaapines. &nbsp;(goes to rate of drug use int he community,
  safe disposal practices, and presence of toxins in the water supply.)&nbsp;</div>
<div>
  <br /></div>
<div>The Steering Committee includes:<span style=""font-size: 10.0pt;"">&nbsp;&nbsp;</span></div>
<div>
  <span style=""font-size: 10.0pt;"">Nancy Knopf - Coumbia Pacific
    Coordinated Care Organization (CCO is the sponsoring organization)</span></div>
<div>
  <span style=""font-size: 10.0pt;"">Debbie Morrow - CCO Board, School Board</span></div>
<div>
  <span style=""font-size: 10.0pt;"">Bonnie Thompson - COO Porvidence
    Seaside Hospital</span></div>
<div>
  <span style=""font-size: 10.0pt;"">
    <br /></span></div>
<div>
  <span style=""font-size: 10.0pt;"">The Steering Committee works closely
    with CHART, the Community Readiness Health Promotion
    &nbsp;cross-sectoral group that Steven Blakesley assembled and
    convenes. &nbsp;</span></div>
<div>
  <span style=""font-size: 10.0pt;"">
    <br /></span></div>
<div>
  <span style=""font-size: 10.0pt;"">THe Way to Wellvillle work has 7 sectorsL</span></div>
<div>
  <span style=""font-size: 10.0pt;"">social services</span></div>
<div>
  <span style=""font-size: 10.0pt;"">business and business development</span></div>
<div>
  <span style=""font-size: 10.0pt;"">health care- mental and physical</span></div>
<div>
  <span style=""font-size: 10.0pt;"">infrastructure, including built
    environment, parks</span></div>
<div>
  <span style=""font-size: 10.0pt;"">prevention and promotion&#39;education</span></div>
<div>
  <span style=""font-size: 10.0pt;"">elected officials (get them fired up
    to lead, or at least to be supportive)</span></div>
<div>
  <span style=""font-size: 10.0pt;"">
    <br /></span></div>
<div>
  <span style=""font-size: 10.0pt;"">Steve is working on identifying a
    leader ine ach sector</span></div>
<div>
  <span style=""font-size: 10.0pt;"">
    <br /></span></div>
<div>
  <span style=""font-size: 10.0pt;"">The CCO will have 1.5-2.0 FTE to
    direct the thing</span></div>
<div>
  <span style=""font-size: 10.0pt;"">Way to Wellville provides a
    Navigator: an expert on external supporting partners (like IBM) who
    will know what is available and help Clatsop County &nbsp;make the
    connections. &nbsp;The Community can say:</span></div>
<div>
  <span style=""font-size: 10.0pt;"">Here&#39;s what we want to do</span></div>
<div>
  <span style=""font-size: 10.0pt;"">Here is what we think we need</span></div>
<div>
  <span style=""font-size: 10.0pt;"">It could be $$, or it could be TA</span></div>
<div>
  <span style=""font-size: 10.0pt;"">
    <br /></span></div>
<div>
  <span style=""font-size: 10.0pt;"">Also very involved: &nbsp;SUzanne
    Leonard, thehead of the architecture &nbsp;program at PSU; she runs
    the International Making Cities Livable conference, which has been a
    real inspiration to Steven Blakesley</span></div>
<div>
  <span style=""font-size: 10.0pt;"">
    <br /></span></div>
<div>Beth briefed Steve on Oregon Healthiest State. &nbsp;The CHART
  retreat conflicts with the OHS launch. &nbsp;Beth put Steven and Katie
  McClure in touch. &nbsp;</div>
<div>
  <br /></div>
<div>Talked about continuing role for HEAL Cities Campaign in the County
  to help with education of public officials and policy change to
  support healthy communities.&nbsp;</div>
<div>
  <br /></div>
<div>
  <br /></div>
END_TEXT
}
    communications << { date: '41943', duration: '120', contact_type: 'In-person Meeting',  organization_type: 'Other', contacts: "Rebecca Stavenjord at Multnomah County HD, , Jake Warr at TriMet, ", cities: "Gresham, OR", staff: "Beth Kaye", topics: "Land Use & Transportation, Access to Healthy Food Options, Other, Coordination with County Health Departments, Hunger and Obesity", notes: <<END_TEXT
The Rockwood neighborhood of Gresham is one of only 3 in the NW eligible
to qualify for federal Promise Zone designation because of more than 30%
of the population lives in poverty and its population e &nbsp;I
represented OPHI/HEAL CIties in a series of meetings convened by MultCo
Chair Deb Kafoury (and staffed by Rebecca Stavenjord) to develop the
Promise Zone application. &nbsp; There were assurances that, even if
Rockwood does not receive the designation, the planning work would be
used, over time, to improve conditions in Rockwood.&nbsp;<div>
  <br /></div>
<div>Reviewed current Plans and datasources re Rockwood</div>
<div>Identified other people who should be at the table</div>
<div>Began to develop goals and subgoals<br />
  <div>Other participants:</div>
  <div>Jake Warr (TriMet Diversity and Transit Equity Dept)</div>
  <div>Betty Domingues (Home Forward)</div>
  <div>Jade Dodge (Mult Co HD)</div>
  <div>Bocky Bodony (MultCo HD - Food Policy, Built Enviornment)</div>
  <div>Kari Lyons-Eubanks - Mult Co HD - housing &nbsp;(lyonsk@multco.us)</div></div>
END_TEXT
}
    communications << { date: '41941', duration: '15', contact_type: 'Telephone Call',  organization_type: 'Participating City', contacts: "Mia Cariaga at City of Eugene, ", cities: "Eugene, OR", staff: "Beth Kaye", topics: "Other", notes: <<END_TEXT
Talked strategy for getting HEAL Resolution before the Eugene City
Council. &nbsp; She will check with Mayor to see if a worksession is
required. Council is currently scheduled into March 2015.
&nbsp;Resolution may &nbsp;not required a worksession &nbsp;<div>
  <br /></div>
<div>Suggested that Beth meet iwht John Ruiz, City Manager. &nbsp;</div>
END_TEXT
}
    communications << { date: '41936', duration: '90', contact_type: 'In-person Meeting',  organization_type: 'Statewide Organization', contacts: "Jenny Holmes at , ", cities: "Gresham, OR", staff: "Beth Kaye", topics: "Access to Healthy Food Options, Coordination with County Health Departments, Hunger and Obesity", notes: <<END_TEXT
Check-in in anticipation of Rockwood Promise Zone
  meetings.&nbsp;<div>EMO has been working with a NWHF HEALTHY
  BEGINNINGS grant since Jan 2014</div>
<div>
  <br /></div>
<div>There are currently three healthy retail corner stores, and three
  more on the way. &nbsp;2 have purchased coolers. &nbsp;Customer base
  is Pacific Islanders and Latinos. &nbsp;</div>
<div>
  <br /></div>
<div>The Rockwood Food Justice Group, another advocacy organization, is
  focused on creating a Rockwood Coop and International Marketplace.
  Willie Chambers is a leader in that group</div>
<div>
  <br /></div>
<div>Rockwood needs a commercial kitchen for people who want to become
  venders at the new Farmer&#39;s Market. &nbsp;</div>
<div>
  <br /></div>
<div>Goal is for a farmer&#39;s market and system of market gardens
  (urban farming and value added), as well as a distribution hub and
  greater coordination</div>
<div>
  <br /></div>
<div>The City of Gresham is seeing commitments from prospective tenants
  in the Rockwood Triangle, including potential new coop. &nbsp; &nbsp;</div>
<div>
  <br /></div>
<div>Rockwood CDC is a fairly new organization with roots in the evangel
  lical church. &nbsp;</div>
<div>
  <br /></div>
<div>Beth arranged for Jenny to be invited to the upcoming Promise Zone
  planning meetings.&nbsp;</div>
END_TEXT
}
    communications << { date: '41919', duration: '120', contact_type: 'Site Visit',  organization_type: 'Participating City', contacts: "Kenny Asher at City of TIgard, ", cities: "Tigard, OR", staff: "Beth Kaye, Steve White", topics: "Land Use & Transportation", notes: <<END_TEXT
Attended Healthy Communities Lecture presented by CGM and Oregon APA,
featuring Jim Sallis (&quot;obesity warrior&quot;).<div>Vision:
  everybody in Tigard enjoys healthy and inter-connectedlives.
  &nbsp;There&#39;s something in this for everyone:
  &nbsp;sustainability, economic development, health. &nbsp;CO-BENEFITS</div>
<div>Urban trails not historically viewed as a transportation asset.
  &nbsp;KA things they should be. &nbsp;</div>
<div>
  <br /></div>
<div>Took tour of Tigard redevelopment along trail and into downtown. &nbsp;</div>
END_TEXT
}
    communications << { date: '41919', duration: '60', contact_type: 'In-person Meeting',  organization_type: 'Statewide Organization', contacts: "Mike McCauley at League of Oregon Cities, , Katie McClure at Oregon Healthiest State, ", cities: "", staff: "Beth Kaye, Liz Baxter", topics: "Other", notes: <<END_TEXT
High level discussion about relationship between LOC, HEAL Cities
Campaign, and Oregon Healthiest State. &nbsp;<div>Mike&#39;s concern is
  that there are a &quot;multitude of entities that want to have their
  message broadcast to cities. &nbsp;Everyone has a flavor.&quot;</div>
<div>
  <span style=""font-size: 10.0pt;"">Mike is counting on OPHI to filter
    health-related messages and be conduit for the best, clearest, most
    useful programs for cities. &nbsp;&nbsp;</span></div>
<div>
  <span style=""font-size: 10.0pt;"">Mike also concerned about previous
    &quot;soft launch&quot; and subsequent lack of follow up on
    Healthiest State Initiative. &nbsp;And, Mike objected to $25 feel to
    attend 11/13/14 Launch event. &nbsp;</span></div>
<div>
  <span style=""font-size: 10.0pt;"">
    <br /></span></div>
<div>
  <span style=""font-size: 10.0pt;"">Katie described OHS collective impact
    model and asked what Mike would like to have for cities. &nbsp;</span></div>
<div>
  <span style=""font-size: 10.0pt;"">
    <br /></span></div>
<div>
  <span style=""font-size: 10.0pt;"">Liz said each city would have choice
    about what was right approach for it: &nbsp;HEAL Cities only,
    various stae programs, potentially the Blue Zone program.
    &nbsp;Range of items in the toolbox.</span></div>
END_TEXT
}
    communications << { date: '41926', duration: '75', contact_type: 'In-person Meeting',  organization_type: 'Participating City', contacts: "Rudy Owens at City of Tigard, ", cities: "Tigard, OR", staff: "Beth Kaye", topics: "Introduction To HEAL Cities, Land Use & Transportation, Workplace Wellness, Other", notes: <<END_TEXT
Rudy was hired in Fall 2014 by Kenny Asher (Tigard&#39;s visionary CD
manager) and Marty Wine (Tigard City Manager). &nbsp; They are trying to
build a culture of wellness in the city. &nbsp;Specifically,&nbsp;<span
  style=""font-size: 13.333334px;"">Tigard has developed the goal of
  becoming Oregon&#39;s most walkable city.&nbsp;</span>
The political leadership is gradually getting on board. &nbsp; &nbsp;
Rudy was interested in discussing how to engage the community and build
community support for the goal, and how to tell the story:<div>What are
  we doing?</div>
<div>What are our metrics?</div>
<div>What are our messages?</div>
<div>What is resonating?</div>
<div>
  <br /></div>
<div>Rudy is focusing on external communications &nbsp;Has a contract in
  progress with CIO Washington County office to help facilitate
  conversations with immigrant/refugee and other newcomer communities.&nbsp;</div>
<div>
  <br /></div>
<div>Tigard generallly has trust in local public service. &nbsp;Fire
  District &nbsp;and School District well regarded. &nbsp;Has been
  tweeting on projects. &nbsp;</div>
<div>Beth reviewed the messaging research done by OHA (&quot;Oregonians
  want to eat better, move more, and have more energy to do the things
  they love.&quot; ) &nbsp;She also reviewed HEAL messages.</div>
<div>
  <br /></div>
<div>
  <br /></div>
<div>Rudy requested local Oregon stories on SRTS success. &nbsp;<span
    style=""font-size: 13.333334px;"">Referred Rudy to Kari Schlosshauer - SRTS.</span></div>
<div>
  <span style=""font-size: 13.333334px;"">
    <br /></span></div>
<div>
  <span style=""font-size: 13.333334px;"">Beth gave Rudy a draft
    Resolution with the language Tigard would need to include to become
    a HEAL City. &nbsp;&nbsp;</span></div>
END_TEXT
}
    communications << { date: '41982', duration: '60', contact_type: 'In-person Meeting',  organization_type: 'County Health Department', contacts: "Kayla Warner at Clatsop County HD, Dec 09 2014", cities: "Astoria, OR, Gearhart, OR, Seaside, OR, Warrenton, OR", staff: "Beth Kaye, Dawn Robbins", topics: "Land Use & Transportation, Access to Healthy Food Options, Workplace Wellness, Small Grants for HEAL Cities, Parks & Rec", notes: <<END_TEXT
Beth reviewed the process for submitting new policies in order for a
HEAL City to receive the FIT or FABULOUS designation. &nbsp;HEAL Cities
is a policy promotion campaign, and only considers existing policies
when determining if a city enters the Campaign with a EAGER or ACTIVE
designation. &nbsp;<div>
  <br /></div>
<div>Cities may apply for Small Grants to implement an existing policy,
  although applications tied to a new policy may be viewed as stronger.</div>
<div>
  <br /></div>
<div>Seaside is interested in installing bike racks. &nbsp;Beth and KW
  discussed the possibility of a design competition or design project at
  the Clatsop County Community College Astoria campus to design racks
  &nbsp;with coastal motifs for Seaside or racks with related motifs for
  all cities in Clatsop County. &nbsp; Seaside could apply for a small
  grant to procure and install the racks. &nbsp;Seaside would have to
  think through how the project would satisfy the equity criterion:
  &nbsp;perhaps racks could be installed in underserved/low-income
  neighborhoods. &nbsp;</div>
<div>
  <br /></div>
<div>We talked about signage. &nbsp;Little evidence that lack of signage
  for fruits and vegetables is an issue. &nbsp; Discussed:</div>
<div>1. apple logos next to healthy food options&nbsp;</div>
<div>2. healthy vending policies -- Countywide as part of Way to Wellville?</div>
<div>3. need for recipes on how to prepare vegetables</div>
<div>4. &nbsp;need for childcare so parents can shop/cook</div>
<div>5. need for single point where a consumer could get info re
  nutrition, recipes, classes, etc. &nbsp;</div>
<div>
  <br /></div>
<div>Dawn then talked with Kayla about school district wellness policies.</div>
END_TEXT
}
    communications << { date: '41981', duration: '15', contact_type: 'E-mail Exchange',  organization_type: 'County Health Department', contacts: "Kayla Warner at Clatsop County HD, Dec 09 2014", cities: "Astoria, OR, Seaside, OR, Warrenton, OR", staff: "Beth Kaye", topics: "Other, Coordination with County Health Departments", notes: <<END_TEXT
Arranged to meet to discuss:<div>1. Warrenton joining HCC</div>
<div>2. &nbsp;How to get retailers to display signage re availabliity of
  fruits and vegetables</div>
<div>3. Process to earn Fit or Fabulous City designation</div>
END_TEXT
}
    communications << { date: '41962', duration: '30', contact_type: 'Telephone Call',  organization_type: 'Participating City', contacts: "Shawn Irvine at City of Independence, , John  Camacho at Farmworker Housing Development Corporation, ", cities: "Independence, OR", staff: "Beth Kaye", topics: "Small Grants for HEAL Cities", notes: <<END_TEXT
John Camacho is working on recruitment of students (with Resident
Manager of housing complex at Colonia Amistad) and contacts with school.
&nbsp; John had origfinally focused on recruiting high school kids, but
Resident Manager suggested middle school instead. &nbsp;10 boys signed
up. &nbsp; Recruting girls. &nbsp;John is getting permission slips from
parents. &nbsp;Resident Manager is calling it a club. &nbsp;<div>
  <br /></div>
<div>Community member has offered snacks for meeting food. &nbsp;(Beth
  says: No soda.)</div>
<div>
  <br /></div>
<div>Has gardeners: no contracted as of yet, but in the works. Shawn
  will take care of contracts with gardeners. &nbsp;</div>
<div>
  <br /></div>
<div>Shawn had been concerned about grant end date and wanted an
  extension to May or June. &nbsp;Was primarily worried about
  recruitment. Now that John has recruited at least 10 kids, his anxiety
  is relieved and he is full speed ahead. No extension needed. &nbsp;</div>
<div>
  <br /></div>
<div>Has not yet purchased wood. (Shawn wanted to make sure that
  recruitment efforts would be successful.)</div>
<div>
  <br /></div>
<div>Back on track. &nbsp;Let&#39;s keep moving forward. &nbsp;Green
  lights all around.&nbsp;</div>
<div>
  <br /></div>
<div>Independence&#39;s Latino outreach manager was also on call.
  &nbsp;Kevin? &nbsp;BK to followup with Shawn for contact info. &nbsp;<br />
  <div>
    <br /></div></div>
END_TEXT
}
    communications << { date: '41961', duration: '20', contact_type: 'E-mail Exchange',  organization_type: 'Participating City', contacts: "Petra Scheutz at City of Coburg, ", cities: "Coburg, OR", staff: "Beth Kaye", topics: "Land Use & Transportation, Access to Healthy Food Options, Other", notes: <<END_TEXT
<span
  style=""color: rgb(31,73,125);font-family: Calibri , sans-serif;font-size: 15.0px;background-color: rgb(255,255,255);"">According
  to Petra, on 11/12, Coburg CIty Council &quot;decided to move forward
  with a resolution, but they were adamant that there be no ‘social
  engineering’ about eating healthy i.e. the majority did not want any
  healthy eating policies to be added to comp plan. They agreed that
  eating healthy was good but that local government should not ‘dictate’
  to the citizens what that is.&nbsp; I offered for you to come down
  early next year to discuss the premise of the whole initiative, but
  they did not think it was necessary.&nbsp; The bottom line is that
  there was consensus to bring a resolution to the December
  meeting.&nbsp; It will focus on active transportation and
  infrastructure. &quot;</span>
<div>
  <span style=""color: rgb(31,73,125);font-family: Calibri , sans-serif;font-size: 15.0px;background-color: rgb(255,255,255);"">
    <br /></span></div>
<div>
  <font color=""#1f497d"" face=""Calibri, sans-serif"">
    <span
      style=""font-size: 15.0px;background-color: rgb(255,255,255);"">Coburg
      will pass a resolution on 12/9. &nbsp;I requested a copy of the
      resolution, and photos for the website. &nbsp;</span></font></div>
END_TEXT
}
    communications << { date: '41961', duration: '45', contact_type: 'E-mail Exchange',  organization_type: 'Other', contacts: "John  Camacho at Farmworker Housing Development Corporation, ", cities: "Independence, OR", staff: "Beth Kaye", topics: "Small Grants for HEAL Cities", notes: <<END_TEXT
John Camacho of the Farmworker Housing Development Corp got in touch to
ask about an extension through June for the Mi Tierra small grant
awarded to the City of Independence in Sept, 2014. &nbsp;I explained
that my ED would have to decide, but cautioned that OPHI has a final
report on the Small Grants due to KP on 3/31/15. &nbsp;<div>
  <br /></div>
<div>I asked for more information about the progress thus far to
  ascertain whether there is an issue. &nbsp;<br />
  <div>
    <br /></div>
  <div>We discussed progress so far and what will be completed by the
    scheduled 3/15/15 end of the grant. &nbsp;I did not see cause for
    alarm. &nbsp;The primary outcome of the grant is the creation of a
    curriculum, which appears to be on track, the planning of a garden,
    and the construction of raised beds. &nbsp;The grant anticipates
    planting (weather permitting) but not tending or harvesting given
    the 3/15 completion date.<div>
      <br /></div>
    <div>John concluded that he will confer with Shawn Irvine at the
      City of Independence and determine whether a conference
        call&nbsp;<span style=""font-size: 10.0pt;"">is necessary&nbsp;</span>
      <span style=""font-size: 10.0pt;"">to discuss any potential
        modifications to the proposal &nbsp;&nbsp;</span></div></div></div>
END_TEXT
}
    communications << { date: '41933', duration: '15', contact_type: 'General Presentation',  organization_type: 'KP', contacts: "Tracy Wiedt at National League of Cities, ", cities: "", staff: "Beth Kaye", topics: "", notes: <<END_TEXT
<b
  style=""color: rgb(102,102,102);font-family: &#39;Helvetica Neue&#39; , Helvetica , Arial , san-serif;font-size: 14.0px;line-height: 16.0px;background-color: rgb(245,245,245);"">2nd
  Annual HEAL Cities &amp; Towns Campaign Summit, presented by Kaiser Permanente</b>
END_TEXT
}
    communications << { date: '41858', duration: '15', contact_type: 'Telephone Call',  organization_type: 'Participating City', contacts: "Ric Ingham at City of Veneta, , Katie Babits at City of Veneta, Aug 07 2014", cities: "Veneta, OR", staff: "Beth Kaye", topics: "Land Use & Transportation, Access to Healthy Food Options, Shared Use, Small Grants for HEAL Cities", notes: <<END_TEXT
Two projects:<div>
  <br /></div>
<div>Shared use at Veneta Elementary &nbsp;(would also mean that Veneta
  would pass a smoke free parks ordinance)</div>
<div>Pass from Veneta to Elmira (unincorporated part of Lane County -
  outside of UGB)<div>Fern Ridge School district: &nbsp;Elmira has schools</div>
  <div>Looked up Free and Reduced School Lunch rates</div>
  <div>Encouraged them to talk about the WHO as well as the WHAT on the
    application -- who will benefit</div>
  <div>Discussed potential for support letters from the County.
    &nbsp;Most likelyt to get a letter from the County Commissioner
    rather than the HD</div></div>
END_TEXT
}
    communications << { date: '41858', duration: '20', contact_type: 'E-mail Exchange',  organization_type: 'Participating City', contacts: "Candy Cronberger at City of Gold Beach, ", cities: "Gold Beach, OR", staff: "Beth Kaye", topics: "Other, Small Grants for HEAL Cities", notes: <<END_TEXT
Gold Beach did not make the 7/31/14 &nbsp;deadline for becoming a HEAL
City in order to apply for a Small Grant. &nbsp;I explained to Candy why
GB should join the Campaign now, and the possibility of future Small
Grant RFPs if the project is refunded.&nbsp;
END_TEXT
}
    communications << { date: '41858', duration: '20', contact_type: 'Telephone Call',  organization_type: 'Participating City', contacts: "Katie Babits at City of Veneta, Aug 07 2014", cities: "Veneta, OR", staff: "Beth Kaye", topics: "Land Use & Transportation, Small Grants for HEAL Cities", notes: <<END_TEXT
Council supported three proposals: &nbsp;shared use with a local school
  district,<span
  style=""color: rgb(31,73,125);font-family: arial , sans-serif;font-size: 14.4px;background-color: rgb(255,255,255);"">Ric
  &amp; I, with help from staff here at City Hall, decided on three
  projects to present to Council for HEAL grant opportunities.&nbsp; The
  opportunity which received the most support was a shared use agreement
  with the Fern Ridge School District at the Veneta Elementary School
  for the outside playground and play structures.&nbsp; When compiling
  information for the grant application, it was evident that our costs
  would be much less than $5,000.&nbsp; Is the $5,000 an absolute
  minimum, or would we still be considered for a grant if we were asking
  for, say, $1,625?</span>
<div>
  <span style=""color: rgb(31,73,125);font-family: arial , sans-serif;font-size: 14.4px;background-color: rgb(255,255,255);"">
    <br /></span></div>
<div>
  <span
    style=""color: rgb(31,73,125);font-family: arial , sans-serif;font-size: 14.4px;background-color: rgb(255,255,255);"">I
    advised her to bundle two projects, the shared use and the concept
    plan for the Veneta- &nbsp;pathway. &nbsp;She should list match
    separately for each, and, in the cover letter, indicate that Veneta
    would be happy if HEAL Cities funding either or both. &nbsp;&nbsp;</span></div>
<div>
  <span style=""color: rgb(31,73,125);font-family: arial , sans-serif;font-size: 14.4px;background-color: rgb(255,255,255);"">
    <br /></span></div>
<div>
  <span
    style=""color: rgb(31,73,125);font-family: arial , sans-serif;font-size: 14.4px;background-color: rgb(255,255,255);"">I
    also passed along contact info for Constance Beaumont at TGM. &nbsp;</span></div>
END_TEXT
}
    communications << { date: '41858', duration: '20', contact_type: 'Telephone Call',  organization_type: 'Participating City', contacts: "Katie Babits at City of Veneta, Aug 07 2014", cities: "Veneta, OR", staff: "Beth Kaye", topics: "Land Use & Transportation, Small Grants for HEAL Cities", notes: <<END_TEXT
Council supported three proposals: &nbsp;shared use with a local school
  district,<span
  style=""color: rgb(31,73,125);font-family: arial , sans-serif;font-size: 14.4px;background-color: rgb(255,255,255);"">Ric
  &amp; I, with help from staff here at City Hall, decided on three
  projects to present to Council for HEAL grant opportunities.&nbsp; The
  opportunity which received the most support was a shared use agreement
  with the Fern Ridge School District at the Veneta Elementary School
  for the outside playground and play structures.&nbsp; When compiling
  information for the grant application, it was evident that our costs
  would be much less than $5,000.&nbsp; Is the $5,000 an absolute
  minimum, or would we still be considered for a grant if we were asking
  for, say, $1,625?</span>
<div>
  <span style=""color: rgb(31,73,125);font-family: arial , sans-serif;font-size: 14.4px;background-color: rgb(255,255,255);"">
    <br /></span></div>
<div>
  <span
    style=""color: rgb(31,73,125);font-family: arial , sans-serif;font-size: 14.4px;background-color: rgb(255,255,255);"">I
    advised her to bundle two projects, the shared use and the concept
    plan for the Veneta- &nbsp;pathway. &nbsp;She should list match
    separately for each, and, in the cover letter, indicate that Veneta
    would be happy if HEAL Cities funding either or both. &nbsp;&nbsp;</span></div>
<div>
  <span style=""color: rgb(31,73,125);font-family: arial , sans-serif;font-size: 14.4px;background-color: rgb(255,255,255);"">
    <br /></span></div>
<div>
  <span
    style=""color: rgb(31,73,125);font-family: arial , sans-serif;font-size: 14.4px;background-color: rgb(255,255,255);"">I
    also passed along contact info for Constance Beaumont at TGM. &nbsp;</span></div>
END_TEXT
}
    communications << { date: '41305', duration: '30', contact_type: 'E-mail Exchange',  organization_type: 'Participating City', contacts: "Paul Hennon Hennon at City of Tualatin Community Services, ", cities: "Tualatin, OR", staff: "Beth Kaye", topics: "Site visit", notes: <<END_TEXT
Discussed when Resolution could appear on the Council Agenda.
END_TEXT
}
    communications << { date: '41316', duration: '30', contact_type: 'General Presentation',  organization_type: 'Participating City', contacts: "Lou Ogden at Resource Strategies Planning Group, ", cities: "Tualatin, OR", staff: "Beth Kaye", topics: "Introduction To HEAL Cities", notes: <<END_TEXT
Made presentation to Tualatin City Council re HEAL Cities Campaign.
&nbsp;Tualatin passes resolution to join Campaign as an Active City
END_TEXT
}
    communications << { date: '41591', duration: '90', contact_type: 'General Presentation',  organization_type: 'Participating City', contacts: "Dana P. Hlavac at City of Lebanon, , Paul Aziz at City of Lebanon, ", cities: "Lebanon, OR", staff: "Beth Kaye", topics: "Introduction To HEAL Cities", notes: <<END_TEXT
Presentation to Lebaonon City Council prior to adoption of HEAL Resolution
END_TEXT
}
    communications << { date: '41555', duration: '90', contact_type: 'In-person Meeting',  organization_type: 'Other', contacts: "Deb Fell-Carlson at SAIF, ", cities: "Lebanon, OR", staff: "Beth Kaye", topics: "Introduction To HEAL Cities, Land Use & Transportation, Access to Healthy Food Options, Other", notes: <<END_TEXT
Excellent debrief and strategy session with Deb.&nbsp;<div>Very
  conservative political environment. &nbsp;Very relationship based.</div>
END_TEXT
}
    communications << { date: '41555', duration: '90', contact_type: 'In-person Meeting',  organization_type: 'Participating City', contacts: "Dana P. Hlavac at City of Lebanon, , Paul Aziz at City of Lebanon, , Deb Fell-Carlson at SAIF, ", cities: "Lebanon, OR", staff: "Beth Kaye", topics: "Introduction To HEAL Cities, Land Use & Transportation, Access to Healthy Food Options, Workplace Wellness, Other, Coordination with County Health Departments, Parks & Rec", notes: <<END_TEXT
Initial meeting to discuss feasibility of Lebanon joining the HEAL
Cities Campaign
END_TEXT
}
    communications << { date: '41269', duration: '90', contact_type: 'Telephone Call',  organization_type: 'Participating City', contacts: "Paul Hennon Hennon at City of Tualatin Community Services, ", cities: "Tualatin, OR", staff: "Beth Kaye", topics: "Introduction To HEAL Cities, Land Use & Transportation, Access to Healthy Food Options, Shared Use, Let's Move Cities Towns & Counties", notes: <<END_TEXT
Extended telephone conversation<div>
  <span style=""font-size: 10.0pt;"">distinguished HEAL and LMCTC</span></div>
<div>
  <div>
    <br /></div>
  <div>Juanitia Pole Center has good programs operated by Loaves &amp;
    Fishes/Meals on Wheels</div>
  <div>
    <br /></div>
  <div>Connected me with Julie Ludeman of YAC. &nbsp;YAC big on
    bullying, green things, NOT OBESITY</div></div>
END_TEXT
}
    communications << { date: '41628', duration: '90', contact_type: 'In-person Meeting',  organization_type: 'Participating City', contacts: "Lou Ogden at Resource Strategies Planning Group, , Paul Hennon Hennon at City of Tualatin Community Services, , Sherilyn Lombos at City of Tualatin, ", cities: "Tualatin, OR", staff: "Beth Kaye", topics: "Introduction To HEAL Cities, Land Use & Transportation, Access to Healthy Food Options, Other, Coordination with County Health Departments", notes: <<END_TEXT
What is Washington County doing that the Mayor can leverage in Tualitin?
&nbsp;In the Region?<div>
  <br /></div>
<div>Wilsonville and Tualatin have not meshed, even though the Mayors
  have a good relationship. &nbsp;Some key differences: &nbsp;size, mix
  of residence and industry, economy, age of population</div>
<div>
  <br /></div>
<div>Clackamas Count has a good Healthy Kids program but there is
  insufficient access</div>
<div>
  <br /></div>
<div>The Washington COunty Mayors work well together on transportation
  and economic development issues</div>
<div>
  <br /></div>
<div>Dick Schouten has been a leader on public health</div>
<div>
  <br /></div>
<div>There is a monthly Regional Mayors meeting&nbsp;</div>
<div>
  <br /></div>
<div>Washington COunty &nbsp;mayors meet once a month</div>
<div>Clackamas County Mayors have a monthly dinner. &nbsp;Has been going
  onfor 30 years. &nbsp;Will arrange to invite BK to speak about HEAL</div>
<div>
  <br /></div>
<div>Lou will send me the name of his Healthy Kids contact at the
  Clackamas County Health Department</div>
<div>
  <br /></div>
<div>Beaverton and Tigard both have active youth advisory councils</div>
END_TEXT
}
    communications << { date: '41159', duration: '60', contact_type: 'In-person Meeting',  organization_type: 'Participating City', contacts: "Lou Ogden at Resource Strategies Planning Group, ", cities: "Tualatin, OR", staff: "Beth Kaye", topics: "Introduction To HEAL Cities, Let's Move Cities Towns & Counties", notes: <<END_TEXT
Initial meeting with Mayor Lou Ogden. &nbsp;Very involved with NLC and
passionate about youth issues. &nbsp;Long time Mayor of Tualatin.
&nbsp;Very positive start.
END_TEXT
}
    communications << { date: '41284', duration: '30', contact_type: 'E-mail Exchange',  organization_type: 'Participating City', contacts: "Paul Hennon Hennon at City of Tualatin Community Services, , Tracy Wiedt at National League of Cities, ", cities: "Tualatin, OR", staff: "Beth Kaye", topics: "Let's Move Cities Towns & Counties", notes: <<END_TEXT
Introduced Paul and Tracy. &nbsp;Tualatin interested in devoting a
Counil session to health and would l ike LMCTC to participate. &nbsp;
END_TEXT
}
    communications << { date: '41270', duration: '30', contact_type: 'E-mail Exchange',  organization_type: 'Participating City', contacts: "Paul Hennon Hennon at City of Tualatin Community Services, ", cities: "Tualatin, OR", staff: "Beth Kaye", topics: "Land Use & Transportation, Access to Healthy Food Options, Shared Use, Parks & Rec", notes: <<END_TEXT
Follow up e-mails re:<div>Introduction to Julie Ludeman to involve the
  Tualiatin Youth Advisory Council in recommending policy to Council</div>
<div>
  <br /></div>
<div>Will speak to City Manager (Sherilyn Lombos) about getting HEAL
  Resolution on Council Agenda</div>
<div>
  <br /></div>
<div>
  <p class=""MsoNormal"" style=""margin: 0.0px;color: rgb(34,34,34);font-family: arial , sans-serif;font-size: 12.8px;background-color: rgb(255,255,255);"">&nbsp;<u></u></p>
  <p class=""MsoNormal""
    style=""margin: 0.0px;color: rgb(34,34,34);font-family: arial , sans-serif;font-size: 12.8px;background-color: rgb(255,255,255);"">Tualtin
    has 2 shared use agreements: &nbsp;intergovernmental agreements for
    the Ki-A-Kuts Bicycle and Pedestrian Bridge over the Tualatin River
    and for the sports field/running trail t</p>
  <p class=""MsoNormal"" style=""margin: 0.0px;color: rgb(34,34,34);font-family: arial , sans-serif;font-size: 12.8px;background-color: rgb(255,255,255);"">
    <br /></p>
  <p class=""MsoNormal""
    style=""margin: 0.0px;color: rgb(34,34,34);font-family: arial , sans-serif;font-size: 12.8px;background-color: rgb(255,255,255);"">Community
    Garden conversion: &nbsp;Regarding Stoneridge Park, I am going to
    guess that converting the grassy area into a garden including
    demolition, and installation of a gravel path, raised gardens, soil,
    water, sign, no fencing would be $10,000 to $15,000, if we
    contracted with someone to build it.<u></u>
    <u></u></p>
  <p class=""MsoNormal"" style=""margin: 0.0px;color: rgb(34,34,34);font-family: arial , sans-serif;font-size: 12.8px;background-color: rgb(255,255,255);"">
    <u></u>&nbsp;<u></u></p>
  <p class=""MsoNormal"" style=""margin: 0.0px;color: rgb(34,34,34);font-family: arial , sans-serif;font-size: 12.8px;background-color: rgb(255,255,255);"">
    <br /></p></div>
END_TEXT
}
    communications << { date: '41362', duration: '30', contact_type: 'E-mail Exchange',  organization_type: 'Participating City', contacts: "Paul Hennon Hennon at City of Tualatin Community Services, ", cities: "Tualatin, OR", staff: "Beth Kaye", topics: "Other", notes: <<END_TEXT
Coordinating April 8 presentation on HEAL to Tualtin City Council
END_TEXT
}
    communications << { date: '41417', duration: '90', contact_type: 'In-person Meeting',  organization_type: 'Participating City', contacts: "Julie Ludemann at City of Tualatin, ", cities: "Tualatin, OR", staff: "Beth Kaye", topics: "Land Use & Transportation, Access to Healthy Food Options, Other, Hunger and Obesity", notes: <<END_TEXT
Involve Tualatin Youth Advisory Committee in making recommendations to
Council for policy change. &nbsp;<div>
  <br /></div>
<div>Used worksheets and other materials I created for the purpose.</div>
END_TEXT
}
    communications << { date: '41410', duration: '90', contact_type: 'General Presentation',  organization_type: 'Participating City', contacts: "Julie Ludemann at City of Tualatin, ", cities: "Tualatin, OR", staff: "Beth Kaye", topics: "Introduction To HEAL Cities, General Information About Obesity, Land Use & Transportation, Access to Healthy Food Options, Other, Hunger and Obesity", notes: <<END_TEXT
Second session working with the Tualatin Youth Advisory Commmittee
END_TEXT
}
    communications << { date: '41380', duration: '30', contact_type: 'E-mail Exchange',  organization_type: 'Participating City', contacts: "Paul Hennon Hennon at City of Tualatin Community Services, ", cities: "Tualatin, OR", staff: "Beth Kaye", topics: "Other, Let's Move Cities Towns & Counties", notes: <<END_TEXT
Working on article for Local Focus featuring Tualatin's participation in
HEAL Cities
END_TEXT
}
    communications << { date: '41533', duration: '90', contact_type: 'General Presentation',  organization_type: 'Statewide Organization', contacts: "Patty Brescia at City of Wilsonville, , Justin Cutler at Sunset Empire Parks & Rec, ", cities: "", staff: "Beth Kaye", topics: "Introduction To HEAL Cities, Parks & Rec", notes: <<END_TEXT
<span
  style=""color: rgb(34,34,34);font-family: arial , sans-serif;font-size: 12.8px;background-color: rgb(255,255,255);"">ORPA
  conference 2013</span>
<div>
  <span
    style=""color: rgb(34,34,34);font-family: arial , sans-serif;font-size: 12.8px;background-color: rgb(255,255,255);"">Parks
    and Rec people are very friendly, and very focused on their</span>
  <br style=""color: rgb(34,34,34);font-family: arial , sans-serif;font-size: 12.8px;background-color: rgb(255,255,255);"" />
  <span
    style=""color: rgb(34,34,34);font-family: arial , sans-serif;font-size: 12.8px;background-color: rgb(255,255,255);"">community
    centers, parks and programs. &nbsp;When I say that I work on helping</span>
  <br style=""color: rgb(34,34,34);font-family: arial , sans-serif;font-size: 12.8px;background-color: rgb(255,255,255);"" />
  <span
    style=""color: rgb(34,34,34);font-family: arial , sans-serif;font-size: 12.8px;background-color: rgb(255,255,255);"">city
    leaders create healthy communities, most look at me blankly. &nbsp;They</span>
  <br style=""color: rgb(34,34,34);font-family: arial , sans-serif;font-size: 12.8px;background-color: rgb(255,255,255);"" />
  <span
    style=""color: rgb(34,34,34);font-family: arial , sans-serif;font-size: 12.8px;background-color: rgb(255,255,255);"">move
    immediately to capital and operating costs concerns - &nbsp;not much</span>
  <br style=""color: rgb(34,34,34);font-family: arial , sans-serif;font-size: 12.8px;background-color: rgb(255,255,255);"" />
  <span
    style=""color: rgb(34,34,34);font-family: arial , sans-serif;font-size: 12.8px;background-color: rgb(255,255,255);"">appreciation
    for policy. &nbsp;There is low healthy-food consciousness: &nbsp;there</span>
  <br style=""color: rgb(34,34,34);font-family: arial , sans-serif;font-size: 12.8px;background-color: rgb(255,255,255);"" />
  <span
    style=""color: rgb(34,34,34);font-family: arial , sans-serif;font-size: 12.8px;background-color: rgb(255,255,255);"">was
    an enormous tub of Cokes and Sprites at the lunch, most of the</span>
  <br style=""color: rgb(34,34,34);font-family: arial , sans-serif;font-size: 12.8px;background-color: rgb(255,255,255);"" />
  <span
    style=""color: rgb(34,34,34);font-family: arial , sans-serif;font-size: 12.8px;background-color: rgb(255,255,255);"">sandwiches
    were on white bread, and there was no fruit to be found. &nbsp;(I</span>
  <br style=""color: rgb(34,34,34);font-family: arial , sans-serif;font-size: 12.8px;background-color: rgb(255,255,255);"" />
  <span
    style=""color: rgb(34,34,34);font-family: arial , sans-serif;font-size: 12.8px;background-color: rgb(255,255,255);"">brought
    my own apples.)</span>
  <br style=""color: rgb(34,34,34);font-family: arial , sans-serif;font-size: 12.8px;background-color: rgb(255,255,255);"" />
  <br style=""color: rgb(34,34,34);font-family: arial , sans-serif;font-size: 12.8px;background-color: rgb(255,255,255);"" />
  <span
    style=""color: rgb(34,34,34);font-family: arial , sans-serif;font-size: 12.8px;background-color: rgb(255,255,255);"">The
    universal challenge is resource development, which means either</span>
  <br style=""color: rgb(34,34,34);font-family: arial , sans-serif;font-size: 12.8px;background-color: rgb(255,255,255);"" />
  <span
    style=""color: rgb(34,34,34);font-family: arial , sans-serif;font-size: 12.8px;background-color: rgb(255,255,255);"">passing
    bonds/levies, irritating taxpayers by charging for rec center</span>
  <br style=""color: rgb(34,34,34);font-family: arial , sans-serif;font-size: 12.8px;background-color: rgb(255,255,255);"" />
  <span
    style=""color: rgb(34,34,34);font-family: arial , sans-serif;font-size: 12.8px;background-color: rgb(255,255,255);"">&quot;memberships,&quot;
    or figuring out what fee-based programming will attract</span>
  <br style=""color: rgb(34,34,34);font-family: arial , sans-serif;font-size: 12.8px;background-color: rgb(255,255,255);"" />
  <span
    style=""color: rgb(34,34,34);font-family: arial , sans-serif;font-size: 12.8px;background-color: rgb(255,255,255);"">boomers.
    &nbsp; &nbsp;The &quot;community building&quot; benefit of HEAL
    Cities may appeal to</span>
  <br style=""color: rgb(34,34,34);font-family: arial , sans-serif;font-size: 12.8px;background-color: rgb(255,255,255);"" />
  <span
    style=""color: rgb(34,34,34);font-family: arial , sans-serif;font-size: 12.8px;background-color: rgb(255,255,255);"">this
    crowd. &nbsp;I present with Patty Brescia of Wilsonville tomorrow before</span>
  <br style=""color: rgb(34,34,34);font-family: arial , sans-serif;font-size: 12.8px;background-color: rgb(255,255,255);"" />
  <span style=""color: rgb(34,34,34);font-family: arial , sans-serif;font-size: 12.8px;background-color: rgb(255,255,255);"">lunch.&nbsp;</span></div>
END_TEXT
}
    communications << { date: '41852', duration: '90', contact_type: 'In-person Meeting',  organization_type: 'Participating City', contacts: "Shanti Platt at , , Sam Sasaki at City of Gervais, ", cities: "Gervais, OR", staff: "Beth Kaye", topics: "Introduction To HEAL Cities, Access to Healthy Food Options, Workplace Wellness", notes: <<END_TEXT
May issues:<div>Consolidating schools</div>
<div>Huge diversity of students: Latino, Sudanese</div>
<div>Some joint use with school: &nbsp;open Thursday nights for
  quilting, and Spanish and Russian language lessons</div>
<div>No Gervais Farmers Market&nbsp;<div>Signage does not make sense -
    ODOT or Marion County are in charge</div></div>
<div>Would like to get a TGM grant</div>
<div>
  <br /></div>
<div>In the 1980s, the city began to self-insure its employees.
  &nbsp;The rates for insurance are related to usage. &nbsp;Employees
  are motivated to &nbsp;keep health care costs down. &nbsp;In the
  mid-1980s, joined CIS. &nbsp;</div>
<div>
  <br /></div>
<div>Next step is to pass a resolution</div>
<div>
  <br /></div>
END_TEXT
}
    communications << { date: '74317', duration: '90', contact_type: 'In-person Meeting',  organization_type: 'Participating City', contacts: "Tamera Tlustos-Arnold at KP, ", cities: "Fairview, OR", staff: "Beth Kaye", topics: "Land Use & Transportation, Access to Healthy Food Options, Other, Coordination with County Health Departments, Hunger and Obesity", notes: <<END_TEXT
Tamie: &quot;We don't have a commitment to children exercising on a
regular basis.&quot;<div>
  <br /></div>
<div>We did some planning for an upcoming meeting with KP re East County
  strategy. &nbsp;Want ast County to have a reputationa s a healthy
  community. &nbsp;Kids need access to a full range of resources and to
  support for making good choices. &nbsp;</div>
<div>- SRTS</div>
<div>-School gardens</div>
<div>-F2S</div>
<div>- bikes/bike helmets/sneakers/balls</div>
<div>- healthy choices on menus</div>
<div>Also need similar array of resources and support for Seniors.&nbsp;</div>
<div>
  <br /></div>
<div>Challenging to make policy changes in all East COunty communities.</div>
<div>
  <div>
    <br /></div>
  <div>School is key player --- important to coordinate with Elizabeth
    Engberg at KP.</div>
  <div>
    <br /></div>
  <div>MultCo HD could host an effort to bring key players together</div>
  <div>
    <br /></div>
  <div>Key off Multnomah County needs assessment</div>
  <div>
    <br /></div>
  <div>It would be good to look at maps -- can we get them from OHA?
    (Dan Morris'' successor)</div>
  <div>
    <br /></div>
  <div>Importance of SMART goals for individuals, DOSE approach for communities</div>
  <div>Would be great to have support from Mayors to bring messaging
    peple together, &nbsp;</div></div>
END_TEXT
}
    communications << { date: '41401', duration: '90', contact_type: 'General Presentation',  organization_type: 'County Health Department', contacts: "Amy Houghtailing at City of Falls City, OR, , Misha Peel at Polk  County Health Department, ", cities: "Dallas, OR, Falls City, OR, Independence, OR, Monmouth, OR", staff: "Beth Kaye", topics: "Introduction To HEAL Cities, Access to Healthy Food Options", notes: <<END_TEXT

END_TEXT
}
    communications << { date: '41505', duration: '30', contact_type: 'E-mail Exchange',  organization_type: 'Participating City', contacts: "Samantha Nelson at City of Fairview, , Mike Weatherby at City of Fairview, ", cities: "Fairview, OR", staff: "Beth Kaye", topics: "Other", notes: <<END_TEXT
Connected City with STEM organizing effort<div>
  <br /></div>
<div>
  <span
    style=""color: rgb(34,34,34);font-family: arial , sans-serif;font-size: 12.8px;background-color: rgb(255,255,255);"">In
    the course of my work on the HEAL Cities Campaign, I met a very nice,</span>
  <br style=""color: rgb(34,34,34);font-family: arial , sans-serif;font-size: 12.8px;background-color: rgb(255,255,255);"" />
  <span
    style=""color: rgb(34,34,34);font-family: arial , sans-serif;font-size: 12.8px;background-color: rgb(255,255,255);"">entrepreneurial
    businessman who is involved in an effort to make Troutdale</span>
  <br style=""color: rgb(34,34,34);font-family: arial , sans-serif;font-size: 12.8px;background-color: rgb(255,255,255);"" />
  <span
    style=""color: rgb(34,34,34);font-family: arial , sans-serif;font-size: 12.8px;background-color: rgb(255,255,255);"">and
    Gresham a center for STEM (Science, Technology, Math) education. &nbsp;As</span>
  <br style=""color: rgb(34,34,34);font-family: arial , sans-serif;font-size: 12.8px;background-color: rgb(255,255,255);"" />
  <span
    style=""color: rgb(34,34,34);font-family: arial , sans-serif;font-size: 12.8px;background-color: rgb(255,255,255);"">you
    know, employment forecasts show the largest job growth in the STEM</span>
  <br style=""color: rgb(34,34,34);font-family: arial , sans-serif;font-size: 12.8px;background-color: rgb(255,255,255);"" />
  <span
    style=""color: rgb(34,34,34);font-family: arial , sans-serif;font-size: 12.8px;background-color: rgb(255,255,255);"">sector.
    &nbsp;The better prepared our students our to seek those jobs, the more</span>
  <br style=""color: rgb(34,34,34);font-family: arial , sans-serif;font-size: 12.8px;background-color: rgb(255,255,255);"" />
  <span
    style=""color: rgb(34,34,34);font-family: arial , sans-serif;font-size: 12.8px;background-color: rgb(255,255,255);"">opportunities
    they will have. &nbsp; There is no reason Fairview should not be</span>
  <br style=""color: rgb(34,34,34);font-family: arial , sans-serif;font-size: 12.8px;background-color: rgb(255,255,255);"" />
  <span
    style=""color: rgb(34,34,34);font-family: arial , sans-serif;font-size: 12.8px;background-color: rgb(255,255,255);"">at
    the table; Willie and I agreed that the effort would be stronger if</span>
  <br style=""color: rgb(34,34,34);font-family: arial , sans-serif;font-size: 12.8px;background-color: rgb(255,255,255);"" />
  <span
    style=""color: rgb(34,34,34);font-family: arial , sans-serif;font-size: 12.8px;background-color: rgb(255,255,255);"">Fairview
    were involved.</span></div>
END_TEXT
}
    communications << { date: '41390', duration: '45', contact_type: 'Telephone Call',  organization_type: 'Federal agency', contacts: "Molly Reece, MPH at U.S. Department of Health & Human Services, , Tracy Wiedt at National League of Cities, ", cities: "Tualatin, OR", staff: "Beth Kaye", topics: "Let's Move Cities Towns & Counties", notes: <<END_TEXT
Talked about status of Tualatin on 5 LMCTC goals, and strategized about
how to promote further policy change
END_TEXT
}
    communications << { date: '41747', duration: '90', contact_type: 'In-person Meeting',  organization_type: 'Participating City', contacts: "Tamera Tlustos-Arnold at KP, ", cities: "Fairview, OR", staff: "Beth Kaye", topics: "Other", notes: <<END_TEXT
Discussed slow pace of change.&nbsp;<div>
  <br /></div>
<div>Strategiezed re moving policy in Fairview, and brining other cities
  in East Multnomah County on board.&nbsp;</div>
END_TEXT
}
    communications << { date: '41396', duration: '90', contact_type: 'In-person Meeting',  organization_type: 'Participating City', contacts: "Lindsey Kuipers at City of Beaverton, , Amanda Garcia-Snell at Washington County DHHS, ", cities: "Beaverton, OR", staff: "Beth Kaye", topics: "Land Use & Transportation, Access to Healthy Food Options, Coordination with County Health Departments", notes: <<END_TEXT
Community Health Advisory Committee (CHAC) meeting
END_TEXT
}
    communications << { date: '41386', duration: '30', contact_type: 'Telephone Call',  organization_type: 'Other', contacts: "Theonie Gilmore at Wilsonville Arts & Culture Council, ", cities: "Wilsonville, OR", staff: "Beth Kaye", topics: "Other, Parks & Rec", notes: <<END_TEXT
Wilsonville has no swimming pool or performing arts center. &nbsp;Needs both.&nbsp;
END_TEXT
}
    communications << { date: '41383', duration: '90', contact_type: 'In-person Meeting',  organization_type: 'Participating City', contacts: "Tamera Tlustos-Arnold at KP, , Lindsey Nesbit at City of Gresham, ", cities: "Fairview, OR", staff: "Beth Kaye", topics: "Introduction To HEAL Cities, Land Use & Transportation, Parks & Rec", notes: <<END_TEXT
Last Recreation Master Plan was in 2002<div>Nature in the Neighborhood
  $$ came from METRO in 2006 - Lindsey speculates that focus switched to
  NinN at that time</div>
<div>
  <br /></div>
<div>Tamie reports that Parks Advisory Committee is now Parks &amp; Rec
  Advisory Committee. &nbsp;Linsey says members are very engaged:
  &nbsp;Steve Kaufman, Brian Caper, Councilor Owen</div>
<div>
  <br /></div>
<div>Goal is to replace play equipment at Park Cleone, and perhaps
  Lakeshore ROad (may be able to use SDC $$$)</div>
<div>
  <br /></div>
<div>Want to do community survey -- many families only have one car so
  access to parks &amp; rec may be limited</div>
<div>
  <br /></div>
<div>There is currently no fast food in Faiview, but Mayor and Council
  want to keep opportunity open. &nbsp;If an available site was sought
  for a fast food outlet, this would be considered positive economic development.&nbsp;</div>
END_TEXT
}
    communications << { date: '41396', duration: '120', contact_type: 'In-person Meeting',  organization_type: 'Participating City', contacts: "Lindsey Kuipers at City of Beaverton, ", cities: "Beaverton, OR", staff: "Beth Kaye", topics: "Other", notes: <<END_TEXT
Joint meeting with Beaverton's VolunteerAdvisory Council to discuss Comp
Plan process and public oureach/engagement challenges. &nbsp;
END_TEXT
}
    communications << { date: '41381', duration: '120', contact_type: 'In-person Meeting',  organization_type: 'Participating City', contacts: "Lindsey Kuipers at City of Beaverton, ", cities: "Beaverton, OR", staff: "Beth Kaye", topics: "Land Use & Transportation", notes: <<END_TEXT
first meeting of the Community Health Advisory Committee that will be
guiding Staff work on the Health Element of the Beaverton Comprehensive
Plan. &nbsp;Review of comp plan is on-going
END_TEXT
}
    communications << { date: '41355', duration: '90', contact_type: 'In-person Meeting',  organization_type: 'Participating City', contacts: "Tamera Tlustos-Arnold at KP, , Allan Berry at City of Fairview, ", cities: "Fairview, OR", staff: "Beth Kaye", topics: "Land Use & Transportation", notes: <<END_TEXT
Began review of policy menu to assess Fairview policy needs/gaps.<div>
  <br /></div>
<div>Potential contacts: &nbsp; Mark Clark in Wood Village, and Glenn
  WHite in Troutdale.&nbsp;</div>
END_TEXT
}
    communications << { date: '41348', duration: '90', contact_type: 'General Presentation',  organization_type: 'Participating City', contacts: "Patty Brescia at City of Wilsonville, , Mark C. Ottenad at City of Wilsonville, , Tim Knapp at City of Wilsonville, ", cities: "Wilsonville, OR", staff: "Beth Kaye", topics: "Welcome to HEAL Cities", notes: <<END_TEXT
Brief presentation to Wilsonville City Council. &nbsp;Mayor reads
Proclamation. &nbsp;
END_TEXT
}
    communications << { date: '41341', duration: '120', contact_type: 'Site Visit',  organization_type: 'Participating City', contacts: "Tamera Tlustos-Arnold at KP, , Allan Berry at City of Fairview, ", cities: "Fairview, OR", staff: "Beth Kaye", topics: "Land Use & Transportation, Access to Healthy Food Options, Shared Use, Coordination with County Health Departments, Site visit, Parks & Rec", notes: <<END_TEXT
Tour of Salish Ponds Park<div>Woodland ELementary - no school garden at
  present; previous garden destroyed for lack of support - it had become
  an eyesore</div>
<div>
  <br /></div>
<div>Learning Academy - 75% F&amp;RSL, large Latino population</div>
<div>Reynolds - &nbsp;largest HS in the state</div>
<div>Troutdale Elementary &nbsp;has its own rec dept</div>
<div>Gen Otto Park had $40 K in renovations, including installation of a
  commercial kitchen</div>
<div>
  <br /></div>
<div>Yoshida -- considering redevelopment of Reynolds Metals superfund
  site as resort. &nbsp;FedEx currently does waer rendition at the site</div>
<div>
  <br /></div>
<div>Need for bicycke nderpass at the Hamilton Bridge project</div>
<div>
  <br /></div>
<div>Old Town Gresham has no sidewalks</div>
<div>
  <br /></div>
<div>Interlochen neighborhood gets building permits from Fairview, has
  its own property owners association (Fairview Lake Prop. Owners Assn)</div>
END_TEXT
}
    communications << { date: '41334', duration: '90', contact_type: 'In-person Meeting',  organization_type: 'Participating City', contacts: "Tamera Tlustos-Arnold at KP, , Allan Berry at City of Fairview, ", cities: "Fairview, OR", staff: "Beth Kaye", topics: "Land Use & Transportation, Access to Healthy Food Options, Let's Move Cities Towns & Counties", notes: <<END_TEXT
Discussed lack of connectivity, safety issue for cyclists and
pedestirans, safety issues for students attending Reynolds High School.<div>
  <br /></div>
<div>
  <br /></div>
<div>Discussed interests of Parks Committee, park funding.</div>
<div>
  <br /></div>
<div>Fairview is working on its Transportation System Plan update.
  &nbsp;It wants to get a TGM grant. &nbsp;</div>
<div>
  <br /></div>
<div>there is a Farmer's &nbsp;Market.</div>
<div>
  <br /></div>
<div>It has one community garden - would like more. &nbsp;WOuld like
  pocket parts.</div>
<div>
  <br /></div>
<div>Works with Judy Shiprack at Metro.&nbsp;</div>
<div>
  <br /></div>
<div>Described 4 city and 3 city meeting structure. &nbsp;3 city
  meetings focus on shared services. &nbsp;</div>
<div>
  <br /></div>
<div>Tamie took me on a tour and we took photos.&nbsp;</div>
END_TEXT
}
    communications << { date: '41347', duration: '90', contact_type: 'General Presentation',  organization_type: 'Participating City', contacts: "Tamera Tlustos-Arnold at KP, , Mike Weatherby at City of Fairview, ", cities: "Fairview, OR, Troutdale, OR, Wood Village, OR", staff: "Beth Kaye", topics: "Introduction To HEAL Cities", notes: <<END_TEXT
Made brief presentation with Tamie Arnold on HEAL Cities Campaign to try
to get regional participation
END_TEXT
}
    communications << { date: '41407', duration: '60', contact_type: 'In-person Meeting',  organization_type: 'Participating City', contacts: "Mike Weatherby at City of Fairview, ", cities: "Fairview, OR, Gresham, OR, Troutdale, OR, Wood Village, OR", staff: "Beth Kaye", topics: "Introduction To HEAL Cities, Land Use & Transportation, Access to Healthy Food Options, Workplace Wellness, Other", notes: <<END_TEXT
Warm conversation. &nbsp;Offered to convene East County cities to talk
about HEAL Cities.
END_TEXT
}
    communications << { date: '41382', duration: '90', contact_type: 'In-person Meeting',  organization_type: 'Participating City', contacts: "Mike Weatherby at City of Fairview, ", cities: "Fairview, OR", staff: "Beth Kaye", topics: "Introduction To HEAL Cities", notes: <<END_TEXT
Attended Mayor Weatherby's Business Roundtable. &nbsp;Joanne Valencia ,
Senior Transportation Planner for Multnomah County, spoke about MultCo
transportation projects
END_TEXT
}
    communications << { date: '41621', duration: '90', contact_type: 'E-mail Exchange',  organization_type: 'Participating City', contacts: "Tamera Tlustos-Arnold at KP, , Allan Berry at City of Fairview, , Samantha Nelson at City of Fairview, ", cities: "Fairview, OR", staff: "Beth Kaye, Amy Gilroy", topics: "Other", notes: <<END_TEXT
Gave Fairview the opportunity to receive assistance from a PSU MURP
class &nbsp;on Healthy Food Access. Opportunity was furnished by Bob
Wise at Cogen Owens Cogen. &nbsp; Samantha Nelson declined because City
does not have capacity or budget to supervise MURPS. &nbsp;Try again
next year
END_TEXT
}
    communications << { date: '41851', duration: '15', contact_type: 'E-mail Exchange',  organization_type: 'Participating City', contacts: "Tamera Tlustos-Arnold at KP, , Allan Berry at City of Fairview, , Samantha Nelson at City of Fairview, ", cities: "Fairview, OR", staff: "Beth Kaye", topics: "Access to Healthy Food Options", notes: <<END_TEXT
Following up to see if Fairview adopted a Community Gardens &nbsp;policy?
END_TEXT
}
    communications << { date: '41792', duration: '30', contact_type: 'E-mail Exchange',  organization_type: 'Participating City', contacts: "Tamera Tlustos-Arnold at KP, ", cities: "Fairview, OR", staff: "Beth Kaye", topics: "Land Use & Transportation, Access to Healthy Food Options, Other", notes: <<END_TEXT
Fairview wants to move towards becoming a FIT City<div>Also wants to do
  some regional work<br />
  <div>
    <br /></div>
  <div>Tamie is coordinating with Fairview committees. &nbsp;Wants to pursue:</div></div>
<div>
  <span
    style=""color: rgb(34,34,34);font-family: sans-serif;font-size: medium;background-color: rgb(255,255,255);"">We
    also talked about the potential of sharing a recreation program
    (Fairview/Troutdale), community gardens, farmers markets, Sunday
    Parkways, Safe Routes to Schools, a city map of walking trails and
    parks, and complete streets to name a few of the topics. &nbsp;It
    was a very energetic meeting and I don't want to lose momentum.
    &nbsp;We were discussing next steps and thought it would be
    beneficial to arrange a meeting that involved Beth, our City
    Manager, our public works director, along with the same folks from
    Wood Village and Troutdale and Kaiser. &nbsp;Looking at a late June
    or early July meeting, date to be determined. &nbsp;Who else should
    be at this initial meeting? &nbsp;Eventually, I want to get the
    schools engaged in this conversation as well as METRO.&nbsp;</span></div>
END_TEXT
}
    communications << { date: '41810', duration: '90', contact_type: 'In-person Meeting',  organization_type: 'Participating City', contacts: "Tamera Tlustos-Arnold at KP, , Allan Berry at City of Fairview, , Samantha Nelson at City of Fairview, ", cities: "Fairview, OR", staff: "Beth Kaye", topics: "Land Use & Transportation, Access to Healthy Food Options, Hunger and Obesity, Small Grants for HEAL Cities", notes: <<END_TEXT
Discussed various policy initiatives Fairview is considering, and
reviewed potential projects for Small Grants for HEAL Cities application
END_TEXT
}
    communications << { date: '41816', duration: '90', contact_type: 'E-mail Exchange',  organization_type: 'Participating City', contacts: "Allan Berry at City of Fairview, ", cities: "Fairview, OR", staff: "Beth Kaye", topics: "Access to Healthy Food Options, Small Grants for HEAL Cities", notes: <<END_TEXT
TA on ordinance establishing community garden intiative
END_TEXT
}
    communications << { date: '41827', duration: '60', contact_type: 'In-person Meeting',  organization_type: 'Participating City', contacts: "Heidi Blaine at City of Donald, Oct 23 2013", cities: "Donald, OR", staff: "Beth Kaye", topics: "Land Use & Transportation, Access to Healthy Food Options, Small Grants for HEAL Cities", notes: <<END_TEXT
Had good chance to talk with Heidi at OCCMA. &nbsp;Person from Aurora
wants to organize Farm Stand. &nbsp;Heidi had concerns. &nbsp;Talked
about CSA. &nbsp;
END_TEXT
}
    communications << { date: '41826', duration: '45', contact_type: 'In-person Meeting',  organization_type: 'Participating City', contacts: "Eileen Stein at City of Mount Angel, ", cities: "Mount Angel, OR", staff: "Beth Kaye", topics: "Introduction To HEAL Cities, Land Use & Transportation, Hunger and Obesity, Small Grants for HEAL Cities", notes: <<END_TEXT
Eileen was very receptive to info about HEAL Cities. &nbsp;City of Mount
Angel wants to be Oktoberfest year round. &nbsp; Discussed follow up and
site visit later in 2014. &nbsp;
END_TEXT
}
    communications << { date: '41737', duration: '60', contact_type: 'E-mail Exchange',  organization_type: 'Participating City', contacts: "Shanti Platt at , , Kathy Figley at City of Woodburn, ", cities: "Woodburn, OR", staff: "Beth Kaye", topics: "Introduction To HEAL Cities", notes: <<END_TEXT
Following up on introduction from Shanti Pladd (Mayor of Gervais),
intriduced Campaign to Mayor FIgley and offered meeting. &nbsp;
END_TEXT
}
    communications << { date: '41213', duration: '30', contact_type: 'E-mail Exchange',  organization_type: 'Participating City', contacts: "Julie Manning at City of Corvallis, ", cities: "Corvallis, OR", staff: "Beth Kaye", topics: "Other", notes: <<END_TEXT
Julie asked for update; alerted Campaign that&nbsp;<span
  style=""color: rgb(34,34,34);font-family: arial , sans-serif;font-size: 12.8px;background-color: rgb(255,255,255);"">&nbsp;new
  City Council would be seated n January and that group will go through
  a goal-setting session for the upcoming two-year term. &nbsp;The
  county is also completing a community health assessment, so there will
  be some opportunities in the near future to factor this program into
  some larger conversations.</span>
<div>
  <span style=""color: rgb(34,34,34);font-family: arial , sans-serif;font-size: 12.8px;background-color: rgb(255,255,255);"">
    <br /></span></div>
END_TEXT
}
    communications << { date: '369948', duration: '120', contact_type: 'E-mail Exchange',  organization_type: 'Participating City', contacts: "Lou Ogden at Resource Strategies Planning Group, , Kyle Awesome at City of Banks, , Wes Hare at City of Albany, , Julie Manning at City of Corvallis, , Kitty Piercy at , , Ralph Grutzmacher at , , Larry Davis at , , Jim Fairchild at , , Shanti Platt at , , Virginia Carnes at , , Jacque Betz at , , John Oberst at City of Monmouth, , Crystal  Shoji at City of Coos Bay, ", cities: "Banks, OR, Beaverton, OR, Corvallis, OR, Dallas, OR, Gervais, OR, Monmouth, OR, Pilot Rock, OR, Toledo, OR, Tualatin, OR", staff: "Beth Kaye", topics: "Introduction To HEAL Cities, Other, Coordination with County Health Departments", notes: <<END_TEXT
Colloquy among Advisory Committee &nbsp;members and HEAL Staff about
&nbsp;how to recruit cities for the Campaign. &nbsp;Kitty Piercy backs
written invitation from LOC on LOC lettterhead. &nbsp; Lou &nbsp;Ogden
favors continued exposure and peer-to-peer outreach. &nbsp; Beth
explains outreach though local health departments, conference
appearances, articles in Local Focus, etc. &nbsp;<div>
  <br /></div>
<div>Lou suggest joint letter from several AC members. &nbsp;. &nbsp;</div>
END_TEXT
}
    communications << { date: '41326', duration: '45', contact_type: 'E-mail Exchange',  organization_type: 'Participating City', contacts: "Julie Manning at City of Corvallis, ", cities: "Corvallis, OR", staff: "Beth Kaye", topics: "Introduction To HEAL Cities, Other", notes: <<END_TEXT
1) enclosed 11/12/12 letter explaining of how Advisory Committee
feedback was incorporated into HEAL policies and other documents
&nbsp;(for some reason, it had not reached her) &nbsp;Apologized for
communication glitch<div>
  <br /></div>
<div>2) requested introduction to Mayor Peterson</div>
<div>
  <br /></div>
<div>3) attached model Resolution and explained that Corvallis would
  come in as an ACTIVE city</div>
END_TEXT
}
    communications << { date: '41337', duration: '15', contact_type: 'E-mail Exchange',  organization_type: 'Participating City', contacts: "Julie Manning at City of Corvallis, , Anna M. Peterson at City of Salem, ", cities: "Corvallis, OR, Salem, OR", staff: "Beth Kaye", topics: "Access to Healthy Food Options, Other", notes: <<END_TEXT
In response to Mayor Manning's request, Mayor Peterson agrees to put me
/HEAL Cities on agenda for Oregon Mayor's Conference 2013
END_TEXT
}
    communications << { date: '41337', duration: '60', contact_type: 'E-mail Exchange',  organization_type: 'Participating City', contacts: "Julie Manning at City of Corvallis, , Anna M. Peterson at City of Salem, ", cities: "Corvallis, OR, Salem, OR", staff: "Beth Kaye", topics: "Introduction To HEAL Cities, Access to Healthy Food Options, Other, Hunger and Obesity", notes: <<END_TEXT
At my request, Julie Manning (host of the 2013 Oregon Maypr's
Conference) introduces me to Mayor Anna Peterson of Salem, with info
about the HEAL Cities Campaign and a suggestion that I be invited to
participate int he food-related sessions. &nbsp;
END_TEXT
}
    communications << { date: '41337', duration: '45', contact_type: 'E-mail Exchange',  organization_type: 'Participating City', contacts: "Julie Manning at City of Corvallis, ", cities: "Corvallis, OR", staff: "Beth Kaye", topics: "Other", notes: <<END_TEXT
Julie tells me that she will be bringing the HEAL resolution to the
  City's&nbsp;<span
  style=""color: rgb(34,34,34);font-family: arial , sans-serif;font-size: 12.8px;background-color: rgb(255,255,255);"">March
  12 Legislative Committee meeting and then to our full City
  Council.&nbsp; Agrees to keep me posted. &nbsp;Thinks Draft Resolution
  and Policy Menu will suffice. &nbsp;</span>
END_TEXT
}
    communications << { date: '41670', duration: '20', contact_type: 'E-mail Exchange',  organization_type: 'Participating City', contacts: "Julie Manning at City of Corvallis, ", cities: "Corvallis, OR", staff: "Beth Kaye", topics: "General Information About Obesity, Other", notes: <<END_TEXT
Invited Julie to be on my panel at the Childhood Obesity Summit.&nbsp;
END_TEXT
}
    communications << { date: '41675', duration: '30', contact_type: 'E-mail Exchange',  organization_type: 'Participating City', contacts: "Dan Field at Kaiser Permanente NW, , Julie Manning at City of Corvallis, , Anna M. Peterson at City of Salem, ", cities: "Corvallis, OR, Salem, OR", staff: "Beth Kaye", topics: "Access to Healthy Food Options", notes: <<END_TEXT
Dan suggested Molly Haynes as a speaker on healthy food at LOC Mayor's
Conference in Summer 2014
END_TEXT
}
    communications << { date: '41366', duration: '60', contact_type: 'E-mail Exchange',  organization_type: 'Participating City', contacts: "Lou Ogden at Resource Strategies Planning Group, , Sherilyn Lombos at City of Tualatin, , Tamera Tlustos-Arnold at KP, , Jim Fairchild at , , Shanti Platt at , , Stu Rasmussen at City of Silverton, , Samantha Nelson at City of Fairview, , Jennifer Spurgeon at Weston City COuncil, Oct 17 2013, Ruth Mattox at City of Silverton, , Paul Aziz at City of Lebanon, , Scott Burge at City of Scappoose, , John McArdle at City of  Independence, , David Clyne at City of Independence, , Brian  Dalton at City of Dallas, ", cities: "Cornelius, OR, Dallas, OR, Donald, OR, Fairview, OR, Gervais, OR, Independence, OR, Lebanon, OR, Scappoose, OR, Silverton, OR, Tualatin, OR, Weston, OR, Wilsonville, OR", staff: "Beth Kaye", topics: "Other, Coordination with County Health Departments", notes: <<END_TEXT
<div>Asked for elected officials to consider writing   an Op Ed or
  Letter to the Editor re HEAL Cities<div>     <div
      style=""color: rgb(34,34,34);font-family: arial , sans-serif;font-size: 12.8px;background-color: rgb(255,255,255);"">
        <p class=""MsoNormal"" style=""margin: 0.0px;"">         <b>Please
          help me get some media focus on the work you are doing
          to create healthy communities. &nbsp;</b>&nbsp;There
          are<b>&nbsp;two big national &quot;hooks&quot; right now for
          media stories on health: &nbsp;</b></p></div>     <div
      style=""color: rgb(34,34,34);font-family: arial , sans-serif;font-size: 12.8px;background-color: rgb(255,255,255);"">
        <ul>         <li class=""MsoNormal""
          style=""margin: 0.0px 0.0px 0.0px 15.0px;"">the release last
          week of the national&nbsp;<b>County Health Rankings</b>,
          ranking each county on a list of important health outcomes
          (for Oregon's rankings, see<a
            href=""http://www.countyhealthrankings.org/app/oregon/2014/rankings/outcomes/overall""
            target=""_blank""
        style=""color: rgb(17,85,204);"">http://www.countyhealthrankings.org/app/oregon/2014/rankings/outcomes/overall</a>);&nbsp;<b>and</b>&nbsp;</li>
          <li class=""MsoNormal""
          style=""margin: 0.0px 0.0px 0.0px 15.0px;"">the fact that April
          7-13 is&nbsp;<b>Public Health Week</b>, a national event to
          celebrate and promote public health. &nbsp;&nbsp;</li></ul></div></div></div>
END_TEXT
}
    communications << { date: '41673', duration: '10', contact_type: 'E-mail Exchange',  organization_type: 'Participating City', contacts: "Julie Manning at City of Corvallis, , Stephen DeGhetto at Corvallis Parks & Rec, ", cities: "Corvallis, OR", staff: "Beth Kaye", topics: "Land Use & Transportation, Access to Healthy Food Options, Other, Parks & Rec", notes: <<END_TEXT
Julie Manning backs out of panel for Samaritan Childhood Obesity
conference; Steve DeGhetto will take her place
END_TEXT
}
    communications << { date: '41674', duration: '120', contact_type: 'E-mail Exchange',  organization_type: 'Participating City', contacts: "Stephen DeGhetto at Corvallis Parks & Rec, ", cities: "Corvallis, OR", staff: "Beth Kaye", topics: "Introduction To HEAL Cities, Access to Healthy Food Options, Other, Parks & Rec", notes: <<END_TEXT
E-mail exchange and telephone calls. &nbsp;Steve sent the slides for his
presentation at the Samaritan Childhood Obesity Conference. &nbsp;<div>
  <br /></div>
<div>He was added to my afternoon panel. He described what he planned to present:</div>
<div>
  <p class=""MsoNormal"" style=""margin: 0.0px;color: rgb(34,34,34);font-family: arial , sans-serif;font-size: 12.8px;background-color: rgb(255,255,255);"">
    <span
      style=""font-size: 11.0pt;font-family: Calibri , sans-serif;color: rgb(31,73,125);"">Hi
      Beth, In the morning Rocio and I will draw on the specifics in the
      Creciendo en Salud project. The topic includes specific
      organizational changes county wide, and how our partnership works.<u></u>
      <u></u></span></p>
  <p class=""MsoNormal"" style=""margin: 0.0px;color: rgb(34,34,34);font-family: arial , sans-serif;font-size: 12.8px;background-color: rgb(255,255,255);"">
    <span
      style=""font-size: 11.0pt;font-family: Calibri , sans-serif;color: rgb(31,73,125);"">In
      the afternoon I can briefly touch on the big picture reality as an
      organizational advocate/ leader. The integration of public health,
      land use, shared use partnerships and workplace wellness into
      Parks and Recreation facilities planning, staff work plan and
      programming. There is a business aspects (policy&amp; financial)
      and social needs, how we blend these disciplines into
      institutionalized procedures is the key for maintaining programs
      beyond grants. Let me know, Steve</span></p></div>
END_TEXT
}
    communications << { date: '41813', duration: '30', contact_type: 'E-mail Exchange',  organization_type: 'Participating City', contacts: "Julie Manning at City of Corvallis, , Lisa Scherf at Corvallis Dept of Public Works, , Stephen DeGhetto at Corvallis Parks & Rec, , Karen Emery at Corvallis  Parks & Rec, ", cities: "Corvallis, OR", staff: "Beth Kaye", topics: "Other", notes: <<END_TEXT
Contacted Corvallis to see if it would be interested in putting in an
LOI for the CDC PICH grant. &nbsp;They decided that the timeline was too
short and they lacked the capacity to participate at this time.
  &nbsp;<div>(summarizes senies of e-mails)</div>
END_TEXT
}
    communications << { date: '41803', duration: '30', contact_type: 'E-mail Exchange',  organization_type: 'Participating City', contacts: "Julie Manning at City of Corvallis, , Lisa Scherf at Corvallis Dept of Public Works, , Stephen DeGhetto at Corvallis Parks & Rec, , Karen Emery at Corvallis  Parks & Rec, ", cities: "Corvallis, OR", staff: "Beth Kaye", topics: "Evaluation", notes: <<END_TEXT
Invitation to participate in telephone interview for Eval.&nbsp;
END_TEXT
}
    communications << { date: '41750', duration: '30', contact_type: 'In-person Meeting',  organization_type: 'Participating City', contacts: "Lisa Scherf at Corvallis Dept of Public Works, ", cities: "Corvallis, OR", staff: "Beth Kaye", topics: "Introduction To HEAL Cities, Land Use & Transportation", notes: <<END_TEXT
Met Lisa at the Oregon Active Transportation Conference. &nbsp;She was
not aware that Corvallis was a HEAL City. &nbsp; Julie Manning is
outgoing Mayor, and Lisa is concerned that new Mayor, new Council,
(perhaps new City Manager?) are not as dedicated to Active
Transportation. &nbsp; Thought it might be helpful to have HEAL Campaign
more involved. &nbsp;<div>
  <br /></div>
<div>Agreed to follow up with her.&nbsp;</div>
END_TEXT
}
    communications << { date: '41754', duration: '30', contact_type: 'E-mail Exchange',  organization_type: 'Participating City', contacts: "Lisa Scherf at Corvallis Dept of Public Works, ", cities: "Corvallis, OR", staff: "Beth Kaye", topics: "Introduction To HEAL Cities, Land Use & Transportation, Other", notes: <<END_TEXT
Followed up on meeting at OATS with an invitation to join HEAL, an offer
of a site visit, and a proffer of HEAL materials. &nbsp;
END_TEXT
}
    communications << { date: '41241', duration: '60', contact_type: 'In-person Meeting',  organization_type: 'Participating City', contacts: "Lou Ogden at Resource Strategies Planning Group, ", cities: "Tualatin, OR", staff: "Beth Kaye", topics: "Introduction To HEAL Cities, Other, Let's Move Cities Towns & Counties", notes: <<END_TEXT
Met with Mayor Ogden and Peter Brandom, Sustainability Manager, as well
as many others, to discuss LMCTC and HEAL Cities alignment<div>
  <br /></div>
<div>
  <br /></div>
END_TEXT
}
    communications << { date: '41233', duration: '90', contact_type: 'In-person Meeting',  organization_type: 'Participating City', contacts: "Lou Ogden at Resource Strategies Planning Group, , Julie Ludemann at City of Tualatin, ", cities: "Tualatin, OR", staff: "Beth Kaye", topics: "Introduction To HEAL Cities, Other, Let's Move Cities Towns & Counties", notes: <<END_TEXT
Met with the Mayor, Julie Ludeman who runs the YAC, and Mark Fryberg of
PGE (underwrites YAC)&nbsp;<div>
  <br /></div>
<div>Orientation to upcoming NLC conference, Oregon reception,
  opportunities to netowrk</div>
END_TEXT
}
    communications << { date: '41230', duration: '60', contact_type: 'In-person Meeting',  organization_type: 'Participating City', contacts: "Lou Ogden at Resource Strategies Planning Group, ", cities: "Tualatin, OR", staff: "Beth Kaye", topics: "Introduction To HEAL Cities, General Information About Obesity, Other", notes: <<END_TEXT
Lou is a champion and leader.&nbsp;<div>
  <br /></div>
<div>Very involved with NLC and Institue on Children and Families.</div>
<div>
  <br /></div>
<div>Began to focus on youth obesity 5-6 years ago. &nbsp;Strong
  recognition of problem in Tualatin. &nbsp;Became NLC rep to Leaders
  for HEalthy COmmunities Summit, and the National Safe ROutes to School
  Summit. &nbsp;</div>
<div>Also involved in LMCTC</div>
<div>
  <br /></div>
<div>Has support on Tualatin Council from Councilor MOnique Bakeman (Bachman?)</div>
<div>Semiannual walk/bike to school day</div>
<div>Strong Parks master Plan with a lot of trails'Nationally regonized
  active parks - $2 &nbsp;million for artificial turg, 5K of x-country trails</div>
<div>
  <br /></div>
<div>Thee hospitals in Tualatin: &nbsp;Meridian Park, Providence, and
  KP, plus Legacy</div>
<div>
  <br /></div>
<div>Tualatin has a Youth Advisory Committee (YAC) taught by Julie
  Ludeman. &nbsp;PGE is a funder. &nbsp;Would I be willing to work with YAC?</div>
END_TEXT
}
    communications << { date: '41594', duration: '60', contact_type: 'In-person Meeting',  organization_type: 'Participating City', contacts: "Amber Mathiesen, CFC at , ", cities: "Falls City, OR", staff: "Beth Kaye", topics: "Introduction To HEAL Cities, Access to Healthy Food Options, Other, Coordination with County Health Departments", notes: <<END_TEXT
We began by discussing the Akha Farms situation, but shifted quickly to
a more general conversation about Falls City. &nbsp;<div>
  <br /></div>
<div>Falls City has &nbsp;many excellent walking trails. &nbsp;It has
  Black ROck for Mountain biking. &nbsp;There is a walking trail along
  the river. &nbsp;There is not great connectivity - not an easy way to
  get from one park or trail to another.&nbsp;</div>
<div>
  <br /></div>
<div>Very poor city. &nbsp;Huge use of golf carts to save fuel.</div>
<div>
  <br /></div>
<div>The Elementary School has a COmmunity Garden, and purchases some
  produce locally. &nbsp;78% of the kids are on Free or Reduced School
  Lunch. &nbsp;The school feeds the kids in the afternoon and sometimes
  the evening as well (backpack program). &nbsp;</div>
<div>
  <br /></div>
<div>There are two walking bridges. &nbsp;One needs demolition. &nbsp;It
  connects a platted subdivision to the High school. &nbsp;</div>
<div>
  <br /></div>
<div>falls City HS has 40 students. &nbsp;Students each do a senior
  project to give back to the community. &nbsp;</div>
<div>
  <br /></div>
<div>The big community event is a fee Thansksgiving Dinner. &nbsp;</div>
<div>
  <br /></div>
<div>Conversation returned to Akha Farm. &nbsp;It is in a limited space
  adjoining a flood plain. &nbsp;Could it grow produce to supply the
  local store? &nbsp;Council wants to focus on downtown. &nbsp;</div>
<div>
  <br /></div>
<div>there is still an interest in market gardens, urban ag, and artisan
  style businesses &nbsp;(Farmer's Corridor of Falls City to Banks)&nbsp;</div>
<div>
  <br /></div>
<div>The Mayor is Amy Houghtaling&nbsp;</div>
<div>She manages the FACES program (family academic clubs)&nbsp;</div>
<div>
  <br /></div>
<div>Could possible use a Food Corps intern</div>
END_TEXT
}
    communications << { date: '41218', duration: '90', contact_type: 'In-person Meeting',  organization_type: 'Other', contacts: "Taryn Lust, MBA CCRC at Legacy Health Systems, Legacy Park Medical Center, ", cities: "Tualatin, OR", staff: "Beth Kaye", topics: "Introduction To HEAL Cities, Other", notes: <<END_TEXT
Attended meeting of FIT CITY Tualatin at suggestion of &nbsp;Mayor Lou
Ogden. &nbsp;Man health care and wellness industry professionals, plus
Chamber of Commerce rep. &nbsp;<div>
  <br /></div>
<div>Not much interest in policy change</div>
END_TEXT
}
    communications << { date: '41206', duration: '90', contact_type: 'In-person Meeting',  organization_type: 'Participating City', contacts: "Rob Drake at City of Cornelius, , Brad Choi, P.E. at City of Hillsboro, , Martha DeBry at City of North Plains, , Kyle Awesome at City of Banks, ", cities: "Banks, OR, Cornelius, OR, Forest Grove, OR, Hillsboro, OR", staff: "Beth Kaye", topics: "Land Use & Transportation", notes: <<END_TEXT
Consortium of five cities would like to become Bike Friendly Cities as
recommended by Bruce Buffington, President of the NW Bicycle Safety
Council. &nbsp;<div>
  <br /></div>
<div>There may be SIP $$. &nbsp;(Strategic Investment PRogram)</div>
<div>
  <br /></div>
<div>Schools in area: &nbsp;East end is Hillsboro School District, West
  end is the FOrest Grove School District</div>
END_TEXT
}
    communications << { date: '41201', duration: '90', contact_type: 'In-person Meeting',  organization_type: 'Participating City', contacts: "Lindsey Kuipers at City of Beaverton, ", cities: "Beaverton, OR", staff: "Beth Kaye", topics: "Introduction To HEAL Cities, Land Use & Transportation, Access to Healthy Food Options, Other, Coordination with County Health Departments", notes: <<END_TEXT
Lindsey reports to Don Mazziotti, the Community Economic Development Director.<div>
  <br /></div>
<div>Beaverton has a Community Transformation Grant. &nbsp;Dr. Tina
  Castanares is the convenor. &nbsp;Beaverton has also applied for the
  Bloomberg Mayor's Challenge. &nbsp;</div>
<div>
  <br /></div>
<div>The core partners have been meeting for 2 years, 2x/month.
  &nbsp;KP, OHA, PSU and Providence are participating. &nbsp;Washington
  County Public Health is in the lead. &nbsp;</div>
<div>
  <br /></div>
<div>They will be producing a chapter dedicated to health for their Comp
  Plan update. &nbsp;Will be putting out an RFP for a consultant to help
  with the work</div>
<div>
  <br /></div>
<div>Wanted to know if OPHI had consulted on the Portland Plan? &nbsp;DO
  any other Oregon cities have a separate health chapter in their Comp
  Plan? &nbsp;</div>
END_TEXT
}
    communications << { date: '41192', duration: '45', contact_type: 'In-person Meeting',  organization_type: 'Participating City', contacts: "Denny Doyle at , ", cities: "Beaverton, OR", staff: "Beth Kaye", topics: "Introduction To HEAL Cities, Land Use & Transportation, Access to Healthy Food Options, Other", notes: <<END_TEXT
Msyor Doyle was generally positive about HEAL Cities. &nbsp;He described
all the things Beaverton is already doing to promote a healthy
community. &nbsp;He mentioned the planning work that Lindsay Kuipers is
leading, other planning w ork done by Barbara Fryer, and the activities
of Councilor Stanton. &nbsp;<div>
  <br /></div>
<div>He said the local Farmer's MArket uses a SNAP multiplier (SNAP
  match) &nbsp;</div>
<div>
  <br /></div>
<div>He suggested I connect with Lani Parr regarding Wellness at Work. &nbsp;</div>
<div>
  <br /></div>
<div>He left meeting in a hurry to make his next appointment. &nbsp;</div>
END_TEXT
}
    communications << { date: '41163', duration: '30', contact_type: 'Telephone Call',  organization_type: 'Participating City', contacts: "Crystal  Shoji at City of Coos Bay, ", cities: "Coos Bay, OR", staff: "Beth Kaye", topics: "Land Use & Transportation", notes: <<END_TEXT
Sidewalks run along major highways that are under jurisdiction of ODOT
of the Federal DOT. &nbsp;<div>
  <br /></div>
<div>There are lots of missing pieces (lack of connectivity).
  &nbsp;Important to do infill. &nbsp; Health Dept should convene the
  conversation. &nbsp;</div>
<div>
  <br /></div>
<div>Schools will be planning new things. &nbsp;The population is going
  down, so schools will not be getting more money and will need to fix
  up what they have. &nbsp;If too many kids walk/bike to school, city
  will lose school buses. &nbsp;That would be a hardship. &nbsp;</div>
<div>
  <br /></div>
<div>Not sure about wellness at work &nbsp;In rural communities like
  Coos Bay, public employees are among the highest paid employees in the
  area. &nbsp;The &nbsp;perception that they are receiving additional
  benefits would not sit well with the public.&nbsp;</div>
<div>
  <br /></div>
<div>Interested in exploring use of City right of way for community
  gardens. &nbsp;</div>
<div>The Boys and Girls Club is &nbsp;modeling walking meetings.</div>
<div>
  <br /></div>
<div>They have a Farmers Market from mid-May to end of Sept, however the
  produce is not grown locally</div>
<div>
  <br /></div>
<div>Will see me at LOC conference</div>
END_TEXT
}
    communications << { date: '41152', duration: '60', contact_type: 'Telephone Call',  organization_type: 'Regional Organization', contacts: "Melissa Taylor at Cowlitz-Wahkiakum Council of Governments, ", cities: "", staff: "Beth Kaye", topics: "Land Use & Transportation, Access to Healthy Food Options", notes: <<END_TEXT
Let Health Dept do behavior change: health ed and awareness<div>
  <br /></div>
<div>regional Planning Council serves at the pleasure of its members
  &nbsp;Does transportation planning in five counties, economic
  development planning in Cowlitz and Lewis Counties, general planning
  for many cities and counties. &nbsp;Worked on a Great Streets plan. &nbsp;</div>
<div>
  <br /></div>
<div>Emphasized quality of place.</div>
<div>
  <br /></div>
<div>Worked on creating a community food system.&nbsp;</div>
END_TEXT
}
    communications << { date: '41143', duration: '10', contact_type: 'Telephone Call',  organization_type: 'Participating City', contacts: "Crystal  Shoji at City of Coos Bay, ", cities: "Coos Bay, OR", staff: "Beth Kaye", topics: "Introduction To HEAL Cities, Land Use & Transportation", notes: <<END_TEXT
Mayor would like to do an initiative with the Coos County Health
Department. &nbsp;Knows there is an obesity problem. &nbsp;However, it
is a challenge to get people excited. &nbsp;The topography of Coos Bay
makes it hard for people to walk or cycle. &nbsp;Safe Routes to School
unlikely to take off because of hilly topography. &nbsp;
END_TEXT
}
    communications << { date: '40977', duration: '90', contact_type: 'In-person Meeting',  organization_type: 'Participating City', contacts: "Stacy Humphrey at City of Gresham, ", cities: "Gresham, OR", staff: "Beth Kaye, Noelle Dobson", topics: "Introduction To HEAL Cities, Land Use & Transportation, Access to Healthy Food Options, Other", notes: <<END_TEXT
Stacy graciously met with BK on her day off to describe her experience
moving HEAL-type policies in the City of Gresham. &nbsp;<div>
  <br /></div>
<div>two major hurdles:</div>
<div>financial realities, and beliefs about the appropriate role of the
  City in health</div>
<div>
  <div>
    <br /></div>
  <div>Mayor Bemis is a self-made man, a restaurant owner with a GED,
    who does not believe that obesity is an issue for government. &nbsp;</div>
  <div>
    <br /></div>
  <div>Counselor Wildmark is likely to be the closest to a HEAL
    Champion. &nbsp;</div>
  <div>
    <br /></div>
  <div>City Staff not in a position to do advocacy. &nbsp;Can do
    communications and planning. &nbsp;</div>
  <div>
    <br /></div>
  <div>Government's role is to create OPTIONS rather than CHOICES. Words
    like HEALTHY, OBESITY, and CHOICE are off limits for City staff.
    &nbsp;Advocates may be able to deliver a more robust &nbsp;message. &nbsp;</div>
  <div>
    <br /></div>
  <div>Was able to fun policy work with grant dollars. &nbsp;</div>
  <div>
    <br /></div>
  <div>Stacy built on what Gresham was already doing so that she was not
    creating any additional line items in the budget.</div>
  <div>
    <br /></div>
  <div>She conducting an audit that situated Gresham among its peer
    cities. &nbsp;She stuck to the facts, and identified best practices
    -- what did Gresham do to achieve a particular policy goal, and how
    did that compare with the national best practice. &nbsp;&nbsp;</div>
  <div>
    <br /></div>
  <div>Convened a technical group, and a stakeholder group that included
    advocates (Sno Cap, Human Solutions, the Gresham-Barlow School
    District, El Programa, Rockwood Community Action Team) that were
    freer to develop health messages and other pieces of the puzzle to
    address obesity.</div></div>
END_TEXT
}
    communications << { date: '40974', duration: '90', contact_type: 'In-person Meeting',  organization_type: 'Participating City', contacts: "Patty Brescia at City of Wilsonville, , Jen Massa Smith at City of Wilsonville, ", cities: "Wilsonville, OR", staff: "Beth Kaye, Noelle Dobson", topics: "Introduction To HEAL Cities, Land Use & Transportation, Other", notes: <<END_TEXT
This was an exploratory meeting, during BK's first &nbsp;month on the
&nbsp;job. &nbsp; Noelle had a relationship with &nbsp;Jen Massa Smith.
&nbsp;We discussed Wilsonville's work on Active Transportation (SMART
transit, walking and biking paths, walking and biking maps, trip
planners and other materials for Wilsonville residents). &nbsp;<div>   <br /></div>
 <div>Patty described the ACHIEVE &nbsp;Coalition, the mentoring it had
  received from Cowlitz on the Move, its mentor community (Longview),
  and its work to increase accessibility to exercise and to increase
  physical activity among Wilsonville residents.&nbsp;</div>
 <div>   <br /></div>
 <div>Afterwards, Noelle and I discussed how HEAL Cities could offer
  value to Wilsonville. &nbsp;Could we help by introducing more diverse
  partners into its Coalition? &nbsp;Help groom a political champion? &nbsp;</div>
 <div>   <br /></div>
 <div>What would a logo look like?</div>
 <div>   <br /></div>
 <div>Should HEAL include Mentor Cities?</div>
END_TEXT
}
    communications << { date: '40967', duration: '20', contact_type: 'E-mail Exchange',  organization_type: 'Participating City', contacts: "Jen Massa Smith at City of Wilsonville, ", cities: "Wilsonville, OR", staff: "Beth Kaye, Noelle Dobson", topics: "Introduction To HEAL Cities, Land Use & Transportation", notes: <<END_TEXT
Noelle introduced BK to Jen Massa Smith. &nbsp;Noelle and Beth
subsequently went to Wilsonville and met with Jen. &nbsp; Jen alerted
&nbsp;Patty Brescia , who was the City;s ACHIEVE grant coordinator, to
the new HEAL Cities Campaign. &nbsp;Jen thought &quot;t<span
  style=""color: rgb(34,34,34);font-family: arial , sans-serif;font-size: 12.8px;background-color: rgb(255,255,255);"">here
  may be some synergy we can create with all of these programs</span>
<br style=""color: rgb(34,34,34);font-family: arial , sans-serif;font-size: 12.8px;background-color: rgb(255,255,255);"" />
<span
  style=""color: rgb(34,34,34);font-family: arial , sans-serif;font-size: 12.8px;background-color: rgb(255,255,255);"">to
  get at the same goals and outcomes&quot;</span>
END_TEXT
}
    communications << { date: '41312', duration: '30', contact_type: 'E-mail Exchange',  organization_type: 'Participating City', contacts: "Julie Fitzgerald at City of Wilsonville, , Patty Brescia at City of Wilsonville, , Mark C. Ottenad at City of Wilsonville, , Tim Knapp at City of Wilsonville, ", cities: "Wilsonville, OR", staff: "Beth Kaye", topics: "", notes: <<END_TEXT
Mark contacted me on February 7th. &nbsp;He had heard my presentation at
LOC in September 2012. &nbsp;Wilsonville had been an ACHIEVE grantee,
and was potentially interested in joining the Campaign. &nbsp; Mark
asked me to call Patty Brescia. &nbsp;<div>
  <br /></div>
<div>I was at the Smart Growth Conference on 2/7. &nbsp;While I was
  there, I met Wilsonville &nbsp;Mayor Tim Knapp and City Councillors
  Julie Fitzgerals and Sue Stevens. &nbsp;</div>
END_TEXT
}
    communications << { date: '41339', duration: '60', contact_type: 'E-mail Exchange',  organization_type: 'Participating City', contacts: "Patty Brescia at City of Wilsonville, , Mark C. Ottenad at City of Wilsonville, ", cities: "Wilsonville, OR", staff: "Beth Kaye", topics: "Introduction To HEAL Cities", notes: <<END_TEXT
E-mails re PowerPoint and packet for BK presentation at 3/18/13 City
Council meeting&nbsp;
END_TEXT
}
    communications << { date: '41379', duration: '30', contact_type: 'E-mail Exchange',  organization_type: 'Participating City', contacts: "Patty Brescia at City of Wilsonville, , Mark C. Ottenad at City of Wilsonville, ", cities: "Wilsonville, OR", staff: "Beth Kaye", topics: "Other", notes: <<END_TEXT
E-mails re article about Wilsonville joining the HEAL Cities Campaign
that ran in the Boones Ferry Messenger. &nbsp;
END_TEXT
}
    communications << { date: '41379', duration: '60', contact_type: 'E-mail Exchange',  organization_type: 'Participating City', contacts: "Mark C. Ottenad at City of Wilsonville, ", cities: "Wilsonville, OR", staff: "Beth Kaye", topics: "Other", notes: <<END_TEXT
Worked with Mark on Wilsonville references in an article for the LOC
magazine, Local Focus. &nbsp;
END_TEXT
}
    communications << { date: '41850', duration: '30', contact_type: 'E-mail Exchange',  organization_type: 'Participating City', contacts: "Lou Ogden at Resource Strategies Planning Group, , Wes Hare at City of Albany, , Julie Manning at City of Corvallis, , Kitty Piercy at , , Ralph Grutzmacher at , , Shanti Platt at , , Virginia Carnes at , , Jacque Betz at , , John Oberst at City of Monmouth, , Crystal  Shoji at City of Coos Bay, ", cities: "", staff: "Beth Kaye, Karli Thorstenson, Dawn Powell", topics: "Workplace Wellness", notes: <<END_TEXT
Invivted all Advisory Committee members to participate in first HEAL
National webinar, 6/6/13, on Creating a Culture of Wellness in the
Municpal Workplace
END_TEXT
}
    communications << { date: '41429', duration: '15', contact_type: 'E-mail Exchange',  organization_type: 'Participating City', contacts: "Sherilyn Lombos at City of Tualatin, , Patty Brescia at City of Wilsonville, , Mark C. Ottenad at City of Wilsonville, , Samantha Nelson at City of Fairview, , Villagrana Andrea at City of Wilsonville, ", cities: "Fairview, OR, Tualatin, OR, Wilsonville, OR", staff: "Beth Kaye", topics: "Workplace Wellness", notes: <<END_TEXT
Invited Wilsonville, Fairview, and Tualatin, as HEAL Cities, &nbsp; to
participate in first HEAL Nation webinar on Creating a CUlture of
Wellness in the Municipal Workplace. &nbsp;
END_TEXT
}
    communications << { date: '41438', duration: '90', contact_type: 'E-mail Exchange',  organization_type: 'Participating City', contacts: "Patty Brescia at City of Wilsonville, ", cities: "Wilsonville, OR", staff: "Beth Kaye", topics: "Other, Welcome to HEAL Cities", notes: <<END_TEXT
Drafted a letter for Assistant City Manager Jeanna Troha to execute,
affirming City's committment to work with Campaign, per Proclamation of
the Mayor on March 18, 2013. &nbsp;Letter assigns staff (Patty Brescia)
to be liaison with Campaign, and sets timeline for Staff to report back
to the Council by September 9. &nbsp;
END_TEXT
}
    communications << { date: '41810', duration: '30', contact_type: 'E-mail Exchange',  organization_type: 'Participating City', contacts: "Patty Brescia at City of Wilsonville, , Laura LaJoie at , ", cities: "Wilsonville, OR", staff: "Beth Kaye", topics: "Introduction To HEAL Cities", notes: <<END_TEXT
Laura was newest member of Wilsonville Community Coalition, and
requested background on the HEAL Cities Campaign, and info on how HEAL
Cities Campaign could help Wilsonville reach its healthy community goals.
END_TEXT
}
    communications << { date: '41473', duration: '90', contact_type: 'E-mail Exchange',  organization_type: 'County Health Department', contacts: "Villagrana Andrea at City of Wilsonville, , Scott France at Clackamas County Health Dept, , Craig Mosbaek at , ", cities: "Wilsonville, OR", staff: "Beth Kaye, Dawn Powell", topics: "", notes: <<END_TEXT
Series of e-mails and telephone calls to set up a meeting with Andrea
Villagrana to discuss (1) smoke-free campuses, at behest of Scott
France; and (2) how to increase uptake of smoking cessation benefits
available to City employees. &nbsp; Consulted with Dawn on some
suggestions from her experience with Wellness@Work.<div>   <br /></div>
 <div>Ultimately, was not successful at putting a meeting together, due
  to AV unavailablity/lack of interest.&nbsp;</div>
END_TEXT
}
    communications << { date: '41499', duration: '120', contact_type: 'In-person Meeting',  organization_type: 'Participating City', contacts: "Patty Brescia at City of Wilsonville, ", cities: "Wilsonville, OR", staff: "Beth Kaye", topics: "Introduction To HEAL Cities, Other", notes: <<END_TEXT
Met to discuss presentation for ORPA about HEAL CIties Campaign and
Wilsonville's participation in same.&nbsp;
END_TEXT
}
    communications << { date: '41867', duration: '90', contact_type: 'In-person Meeting',  organization_type: 'Participating City', contacts: "Patty Brescia at City of Wilsonville, ", cities: "Wilsonville, OR", staff: "Beth Kaye", topics: "Land Use & Transportation, Access to Healthy Food Options, Shared Use, Coordination with County Health Departments", notes: <<END_TEXT
Attending meeting of Wilsonville HEAL Coalition.
END_TEXT
}
    communications << { date: '41503', duration: '45', contact_type: 'E-mail Exchange',  organization_type: 'Participating City', contacts: "Lou Ogden at Resource Strategies Planning Group, , Paul Hennon Hennon at City of Tualatin Community Services, , Sherilyn Lombos at City of Tualatin, , Molly Reece, MPH at U.S. Department of Health & Human Services, ", cities: "Tualatin, OR", staff: "Beth Kaye", topics: "Other, Let's Move Cities Towns & Counties", notes: <<END_TEXT
Arranged site visit for 8/29-30 for Molly Reece, HHS re Let's Move.&nbsp;
END_TEXT
}
    communications << { date: '41499', duration: '45', contact_type: 'E-mail Exchange',  organization_type: 'Participating City', contacts: "Tamera Tlustos-Arnold at KP, , Allan Berry at City of Fairview, , Samantha Nelson at City of Fairview, , Molly Reece, MPH at U.S. Department of Health & Human Services, ", cities: "Fairview, OR", staff: "Beth Kaye", topics: "Let's Move Cities Towns & Counties, Site visit", notes: <<END_TEXT
Through calls and e-mails, arranged site visit for 8/29-8?30 to Fairview.
END_TEXT
}
    communications << { date: '41499', duration: '30', contact_type: 'E-mail Exchange',  organization_type: 'Participating City', contacts: "Patty Brescia at City of Wilsonville, , Molly Reece, MPH at U.S. Department of Health & Human Services, ", cities: "Wilsonville, OR", staff: "Beth Kaye", topics: "Let's Move Cities Towns & Counties, Site visit", notes: <<END_TEXT
Made arrangements for Molly Reece to conduct site visit to Wilsonville
on Aug 30, 2013 re Let's Move. &nbsp;
END_TEXT
}
    communications << { date: '41506', duration: '30', contact_type: 'E-mail Exchange',  organization_type: 'Participating City', contacts: "Heidi Blaine at City of Donald, Oct 23 2013", cities: "Aurora, OR, Donald, OR, Mount Angel, OR", staff: "Beth Kaye", topics: "Land Use & Transportation", notes: <<END_TEXT
Passed on this info from Wilsonville's contacts re bike routes and
mapping resources:<div>
  <br /></div>
<div>
  <span
    style=""color: rgb(34,34,34);font-family: arial , sans-serif;font-size: 12.8px;background-color: rgb(255,255,255);"">Bike
    routes would come from bike clubs. &nbsp;We could supply a few and have</span>
  <br style=""color: rgb(34,34,34);font-family: arial , sans-serif;font-size: 12.8px;background-color: rgb(255,255,255);"" />
  <span
    style=""color: rgb(34,34,34);font-family: arial , sans-serif;font-size: 12.8px;background-color: rgb(255,255,255);"">contacts
    in other groups that could also do that. &nbsp;As far as maps are</span>
  <br style=""color: rgb(34,34,34);font-family: arial , sans-serif;font-size: 12.8px;background-color: rgb(255,255,255);"" />
  <span
    style=""color: rgb(34,34,34);font-family: arial , sans-serif;font-size: 12.8px;background-color: rgb(255,255,255);"">concerned
    perhaps Jae Heidenreich could help. &nbsp;Her contact info is:</span>
  <br style=""color: rgb(34,34,34);font-family: arial , sans-serif;font-size: 12.8px;background-color: rgb(255,255,255);"" />
  <span
    style=""color: rgb(34,34,34);font-family: arial , sans-serif;font-size: 12.8px;background-color: rgb(255,255,255);"">Tourism Development</span>
  <br style=""color: rgb(34,34,34);font-family: arial , sans-serif;font-size: 12.8px;background-color: rgb(255,255,255);"" />
  <a style=""color: rgb(17,85,204);font-family: arial , sans-serif;font-size: 12.8px;background-color: rgb(255,255,255);"">503.742.5910</a>
  <span
    style=""color: rgb(34,34,34);font-family: arial , sans-serif;font-size: 12.8px;background-color: rgb(255,255,255);"">&nbsp;/ Direct</span>
  <br style=""color: rgb(34,34,34);font-family: arial , sans-serif;font-size: 12.8px;background-color: rgb(255,255,255);"" />
  <a href=""mailto:JHeidenreich@co.clackamas.or.us"" style=""color: rgb(17,85,204);font-family: arial , sans-serif;font-size: 12.8px;background-color: rgb(255,255,255);"">JHeidenreich@co.clackamas.or.us</a>
  <span style=""color: rgb(34,34,34);font-family: arial , sans-serif;font-size: 12.8px;background-color: rgb(255,255,255);"">&lt;mailto:</span>
  <a href=""mailto:JHeidenreich@co.clackamas.or.us"" style=""color: rgb(17,85,204);font-family: arial , sans-serif;font-size: 12.8px;background-color: rgb(255,255,255);"">JHeidenreich@co.clackamas.or.us</a>
  <span style=""color: rgb(34,34,34);font-family: arial , sans-serif;font-size: 12.8px;background-color: rgb(255,255,255);"">&gt;</span>
  <br style=""color: rgb(34,34,34);font-family: arial , sans-serif;font-size: 12.8px;background-color: rgb(255,255,255);"" /></div>
END_TEXT
}
    communications << { date: '41506', duration: '45', contact_type: 'E-mail Exchange',  organization_type: 'Participating City', contacts: "Patty Brescia at City of Wilsonville, ", cities: "Aurora, OR, Donald, OR, Mount Angel, OR, Wilsonville, OR", staff: "Beth Kaye", topics: "Land Use & Transportation", notes: <<END_TEXT
Networked with Patty to get info about bike routes and bike maps for
three communities (Aurora, Mount Angel, and DOnald) that are interested
in a joint project.&nbsp;<div>
  <br /></div>
<div>Here's what Patty learned and passed on:</div>
<div>
  <br /></div>
<div>
  <span
    style=""color: rgb(34,34,34);font-family: arial , sans-serif;font-size: 12.8px;background-color: rgb(255,255,255);"">Bike
    routes would come from bike clubs. &nbsp;We could supply a few and have</span>
  <br style=""color: rgb(34,34,34);font-family: arial , sans-serif;font-size: 12.8px;background-color: rgb(255,255,255);"" />
  <span
    style=""color: rgb(34,34,34);font-family: arial , sans-serif;font-size: 12.8px;background-color: rgb(255,255,255);"">contacts
    in other groups that could also do that. &nbsp;As far as maps are</span>
  <br style=""color: rgb(34,34,34);font-family: arial , sans-serif;font-size: 12.8px;background-color: rgb(255,255,255);"" />
  <span
    style=""color: rgb(34,34,34);font-family: arial , sans-serif;font-size: 12.8px;background-color: rgb(255,255,255);"">concerned
    perhaps Jae Heidenreich could help. &nbsp;Her contact info is:</span>
  <br style=""color: rgb(34,34,34);font-family: arial , sans-serif;font-size: 12.8px;background-color: rgb(255,255,255);"" />
  <span
    style=""color: rgb(34,34,34);font-family: arial , sans-serif;font-size: 12.8px;background-color: rgb(255,255,255);"">Tourism Development</span>
  <br style=""color: rgb(34,34,34);font-family: arial , sans-serif;font-size: 12.8px;background-color: rgb(255,255,255);"" />
  <a style=""color: rgb(17,85,204);font-family: arial , sans-serif;font-size: 12.8px;background-color: rgb(255,255,255);"">503.742.5910</a>
  <span
    style=""color: rgb(34,34,34);font-family: arial , sans-serif;font-size: 12.8px;background-color: rgb(255,255,255);"">&nbsp;/ Direct</span>
  <br style=""color: rgb(34,34,34);font-family: arial , sans-serif;font-size: 12.8px;background-color: rgb(255,255,255);"" />
  <a href=""mailto:JHeidenreich@co.clackamas.or.us"" style=""color: rgb(17,85,204);font-family: arial , sans-serif;font-size: 12.8px;background-color: rgb(255,255,255);"">JHeidenreich@co.clackamas.or.us</a>
  <span style=""color: rgb(34,34,34);font-family: arial , sans-serif;font-size: 12.8px;background-color: rgb(255,255,255);"">&lt;mailto:</span>
  <a href=""mailto:JHeidenreich@co.clackamas.or.us"" style=""color: rgb(17,85,204);font-family: arial , sans-serif;font-size: 12.8px;background-color: rgb(255,255,255);"">JHeidenreich@co.clackamas.or.us</a>
  <span style=""color: rgb(34,34,34);font-family: arial , sans-serif;font-size: 12.8px;background-color: rgb(255,255,255);"">&gt;</span>
  <br style=""color: rgb(34,34,34);font-family: arial , sans-serif;font-size: 12.8px;background-color: rgb(255,255,255);"" /></div>
END_TEXT
}
    communications << { date: '41513', duration: '30', contact_type: 'E-mail Exchange',  organization_type: 'Regional Organization', contacts: "Mark C. Ottenad at City of Wilsonville, , Greg Leo at French Prairie Forum, ", cities: "Wilsonville, OR", staff: "Beth Kaye", topics: "Introduction To HEAL Cities", notes: <<END_TEXT
Mark Ottenad introduced me to Greg Leo, who invited me to rpesent about
HEAL Cities to the French Prairie Forum on 9/19/13. &nbsp;The French
Prairie Forum includes cities from Clackamas County and Marion County. &nbsp;
END_TEXT
}
    communications << { date: '41513', duration: '45', contact_type: 'E-mail Exchange',  organization_type: 'Participating City', contacts: "Patty Brescia at City of Wilsonville, , Villagrana Andrea at City of Wilsonville, ", cities: "Wilsonville, OR", staff: "Beth Kaye", topics: "Workplace Wellness, Other", notes: <<END_TEXT
Furhter efforts to engage Wilsonville HR Director Andrea Willagrana.&nbsp;<div>
  <br /></div>
<div>Working with Patty on ORPA presentation.</div>
END_TEXT
}
    communications << { date: '41514', duration: '45', contact_type: 'E-mail Exchange',  organization_type: 'Participating City', contacts: "Patty Brescia at City of Wilsonville, ", cities: "Wilsonville, OR", staff: "Beth Kaye", topics: "Other", notes: <<END_TEXT
Discussion re report to Council in October 21
END_TEXT
}
    communications << { date: '41526', duration: '60', contact_type: 'E-mail Exchange',  organization_type: 'Statewide Organization', contacts: "Patty Brescia at City of Wilsonville, , Stephanie Redman at Oregon Recreation & Park Association, ", cities: "Wilsonville, OR", staff: "Beth Kaye", topics: "Introduction To HEAL Cities, Other", notes: <<END_TEXT
Discussion about outreach to Oregon Parks &amp; Rec Association members.
END_TEXT
}
    communications << { date: '41529', duration: '90', contact_type: 'E-mail Exchange',  organization_type: 'Participating City', contacts: "Patty Brescia at City of Wilsonville, ", cities: "Wilsonville, OR", staff: "Beth Kaye", topics: "Other, Coordination with County Health Departments", notes: <<END_TEXT
Drafted letter in support of Wilsonville application to Clackamas County
for a HEAL Grant.<div>
  <br /></div>
<div>Asked for a quite from the Mayor for HEAL publicity.</div>
END_TEXT
}
    communications << { date: '41899', duration: '90', contact_type: 'General Presentation',  organization_type: 'Statewide Organization', contacts: "Patty Brescia at City of Wilsonville, ", cities: "Seaside, OR, Wilsonville, OR", staff: "Beth Kaye", topics: "Introduction To HEAL Cities", notes: <<END_TEXT
Presentation at Oregon Parks and Rec Association Conference&nbsp;
END_TEXT
}
    communications << { date: '41894', duration: '20', contact_type: 'E-mail Exchange',  organization_type: 'Participating City', contacts: "Patty Brescia at City of Wilsonville, ", cities: "Wilsonville, OR", staff: "Beth Kaye", topics: "Introduction To HEAL Cities, Other", notes: <<END_TEXT
Planning for presentation at the ORPA conference
END_TEXT
}
    communications << { date: '41540', duration: '20', contact_type: 'E-mail Exchange',  organization_type: 'Participating City', contacts: "Patty Brescia at City of Wilsonville, ", cities: "Wilsonville, OR", staff: "Beth Kaye", topics: "Access to Healthy Food Options, Other", notes: <<END_TEXT
Discussed Press Release for new Healthy Food Checkout aisle at Lamb's
Thriftway. &nbsp;
END_TEXT
}
    communications << { date: '41542', duration: '45', contact_type: 'E-mail Exchange',  organization_type: 'Participating City', contacts: "Patty Brescia at City of Wilsonville, ", cities: "Wilsonville, OR", staff: "Beth Kaye", topics: "Other", notes: <<END_TEXT
Prep for League of Oregon Cities conference. &nbsp;Wilsonville is
highlighting HEAL Cities in its hospitality suite. &nbsp;&nbsp;
END_TEXT
}
    communications << { date: '41542', duration: '10', contact_type: 'E-mail Exchange',  organization_type: 'Participating City', contacts: "Patty Brescia at City of Wilsonville, , Villagrana Andrea at City of Wilsonville, ", cities: "Wilsonville, OR", staff: "Beth Kaye", topics: "Workplace Wellness", notes: <<END_TEXT
one in a stsrong of efforts to set up an appointment with Andrea
Villagrana, Wilsonville's HR manager, to talk about worksite wellness
END_TEXT
}
    communications << { date: '41552', duration: '120', contact_type: 'In-person Meeting',  organization_type: 'Participating City', contacts: "Patty Brescia at City of Wilsonville, , Katie Mangle at City of Wilsonville, ", cities: "Wilsonville, OR", staff: "Beth Kaye", topics: "Land Use & Transportation", notes: <<END_TEXT
Discussed Wilsonville TSP and current projects
END_TEXT
}
    communications << { date: '41849', duration: '60', contact_type: 'E-mail Exchange',  organization_type: 'Participating City', contacts: "Patty Brescia at City of Wilsonville, , Katie Mangle at City of Wilsonville, ", cities: "Wilsonville, OR", staff: "Beth Kaye", topics: "Land Use & Transportation, Access to Healthy Food Options, Other", notes: <<END_TEXT
<span
  style=""color: rgb(34,34,34);font-family: arial , sans-serif;font-size: 12.8px;background-color: rgb(255,255,255);"">BK
  provided feedback (IN CAPS) on Wilsonville's list of New policies last
  6 months, and folllowed up with phone call.&nbsp;</span>
<br style=""color: rgb(34,34,34);font-family: arial , sans-serif;font-size: 12.8px;background-color: rgb(255,255,255);"" />
<br style=""color: rgb(34,34,34);font-family: arial , sans-serif;font-size: 12.8px;background-color: rgb(255,255,255);"" />
<span
  style=""color: rgb(34,34,34);font-family: arial , sans-serif;font-size: 12.8px;background-color: rgb(255,255,255);"">1.
  &nbsp; &nbsp; &nbsp; Council adopted the TSP on June 17, 2013. In it
  there is a lot of language about street connectivity that is lot more
  detailed than before. She said it includes bike friendly guidelines
  and complete streets language.</span>
<br style=""color: rgb(34,34,34);font-family: arial , sans-serif;font-size: 12.8px;background-color: rgb(255,255,255);"" />
<span
  style=""color: rgb(34,34,34);font-family: arial , sans-serif;font-size: 12.8px;background-color: rgb(255,255,255);"">YES.
  &nbsp;THIS IS A HEAL POLICY CHANGE.</span>
<br style=""color: rgb(34,34,34);font-family: arial , sans-serif;font-size: 12.8px;background-color: rgb(255,255,255);"" />
<br style=""color: rgb(34,34,34);font-family: arial , sans-serif;font-size: 12.8px;background-color: rgb(255,255,255);"" />
<span
  style=""color: rgb(34,34,34);font-family: arial , sans-serif;font-size: 12.8px;background-color: rgb(255,255,255);"">2.
  &nbsp; &nbsp; &nbsp; Portions of the Tonquin trail in Wilsonville have
  been completed in the past 6 months. I'm sure your're familiar with
  this trail meant to link Sherwood- Tualatin- Wilsonville for bike
  riders. THIS IS IMPLEMENTATION of previous policy- you should mention
  it, but it is not new HEAL policy.</span>
<br style=""color: rgb(34,34,34);font-family: arial , sans-serif;font-size: 12.8px;background-color: rgb(255,255,255);"" />
<br style=""color: rgb(34,34,34);font-family: arial , sans-serif;font-size: 12.8px;background-color: rgb(255,255,255);"" />
<span
  style=""color: rgb(34,34,34);font-family: arial , sans-serif;font-size: 12.8px;background-color: rgb(255,255,255);"">3.
  &nbsp; &nbsp; &nbsp; Under Bike and Ped plan, the police underwent a
  sting operation to enforce a crosswalk that has already been signed on
  both sides right in front of City Hall, but often has cars barely
  missing pedestrians crossing</span>
<br style=""color: rgb(34,34,34);font-family: arial , sans-serif;font-size: 12.8px;background-color: rgb(255,255,255);"" />
<br style=""color: rgb(34,34,34);font-family: arial , sans-serif;font-size: 12.8px;background-color: rgb(255,255,255);"" />
<span
  style=""color: rgb(34,34,34);font-family: arial , sans-serif;font-size: 12.8px;background-color: rgb(255,255,255);"">IF
  THIS WAS A ONE-TIME ACTION, no policy change. &nbsp;If COUNCIL or CITY
  MANAGER or the CHIEF of POLICE have announced an intention to use
  stings on a more frequent basis to enforce pedestrian and bicyclist
  crossing safety, then it is a POLICY. &nbsp; Mention it either way- as
  a HEAL policy or as action to implement a a HEAL policy.</span>
<br style=""color: rgb(34,34,34);font-family: arial , sans-serif;font-size: 12.8px;background-color: rgb(255,255,255);"" />
<br style=""color: rgb(34,34,34);font-family: arial , sans-serif;font-size: 12.8px;background-color: rgb(255,255,255);"" />
<br style=""color: rgb(34,34,34);font-family: arial , sans-serif;font-size: 12.8px;background-color: rgb(255,255,255);"" />
<span
  style=""color: rgb(34,34,34);font-family: arial , sans-serif;font-size: 12.8px;background-color: rgb(255,255,255);"">4.
  &nbsp; &nbsp; &nbsp; Englemann Park was just dedicated Nov. 4, 2012.
  NICE. &nbsp;The decision-making on this project pre-dates HEAL, but if
  city residents can reach it by bike, walking, or transit, then it is
  an example of increased connectivity, and should be mentioned as an
  action the City took to implement a HEAL policies.</span>
<br style=""color: rgb(34,34,34);font-family: arial , sans-serif;font-size: 12.8px;background-color: rgb(255,255,255);"" />
<br style=""color: rgb(34,34,34);font-family: arial , sans-serif;font-size: 12.8px;background-color: rgb(255,255,255);"" />
<span
  style=""color: rgb(34,34,34);font-family: arial , sans-serif;font-size: 12.8px;background-color: rgb(255,255,255);"">5.
  &nbsp; &nbsp; &nbsp; The Healthy checkout lane sign went up at Lamb's
  but I think you already gave us credit for that one</span>
<br style=""color: rgb(34,34,34);font-family: arial , sans-serif;font-size: 12.8px;background-color: rgb(255,255,255);"" />
<span
  style=""color: rgb(34,34,34);font-family: arial , sans-serif;font-size: 12.8px;background-color: rgb(255,255,255);"">YES-
  possibly CONTINUED IMPLEMENTATION, if the City paid for the signage.
  &nbsp;You could also cite it as evidence of continued activity by your
  cross-sectoral collaboration group.</span>
<br style=""color: rgb(34,34,34);font-family: arial , sans-serif;font-size: 12.8px;background-color: rgb(255,255,255);"" />
<span
  style=""color: rgb(34,34,34);font-family: arial , sans-serif;font-size: 12.8px;background-color: rgb(255,255,255);"">6.
  &nbsp; &nbsp; &nbsp; We support a community garden and a farmers
  market (both seasonal)</span>
<br style=""color: rgb(34,34,34);font-family: arial , sans-serif;font-size: 12.8px;background-color: rgb(255,255,255);"" />
<span
  style=""color: rgb(34,34,34);font-family: arial , sans-serif;font-size: 12.8px;background-color: rgb(255,255,255);"">iIScSUPPORT
  pursuant to a POLICY &nbsp;supporting expanded access to healthy food
  options, or are these stand-alone projects? &nbsp;My guess is that
  they are stand-Aline's. &nbsp;I would refer to them as HEAL projects
  and perhaps suggest that they form the basis for a HEAL Healthy a Food
  Access Policy.</span>
<br style=""color: rgb(34,34,34);font-family: arial , sans-serif;font-size: 12.8px;background-color: rgb(255,255,255);"" />
END_TEXT
}
    communications << { date: '41551', duration: '30', contact_type: 'E-mail Exchange',  organization_type: 'Participating City', contacts: "Patty Brescia at City of Wilsonville, , Mark C. Ottenad at City of Wilsonville, ", cities: "Wilsonville, OR", staff: "Beth Kaye", topics: "Land Use & Transportation, Access to Healthy Food Options, Other", notes: <<END_TEXT
<p class=""MsoNormal"" style=""margin: 0.0px;color: rgb(34,34,34);font-family: arial , sans-serif;font-size: 12.8px;background-color: rgb(255,255,255);"">
  <b>In response to a request, Patty sent the following &nbsp;list of
    New policies last 6 months<u></u>
    <u></u></b></p>
<p style=""color: rgb(34,34,34);font-family: arial , sans-serif;font-size: 12.8px;background-color: rgb(255,255,255);"">
  <u></u>1.<span style=""font-size: 7.0pt;font-family: &quot;Times New Roman&quot;;"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
  <u></u>Council adopted the TSP on June 17, 2013. In it there is a lot
  of language about street connectivity that is lot more detailed than
  before. She said it includes bike friendly guidelines and complete
  streets language.<u></u>
  <u></u></p>
<p style=""color: rgb(34,34,34);font-family: arial , sans-serif;font-size: 12.8px;background-color: rgb(255,255,255);"">
  <u></u>2.<span style=""font-size: 7.0pt;font-family: &quot;Times New Roman&quot;;"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
  <u></u>Portions of the Tonquin trail in Wilsonville have been
  completed in the past 6 months. I’m sure your’re familiar with this
  trail meant to link Sherwood- Tualatin- Wilsonville for bike riders<u></u>
  <u></u></p>
<p style=""color: rgb(34,34,34);font-family: arial , sans-serif;font-size: 12.8px;background-color: rgb(255,255,255);"">
  <u></u>3.<span style=""font-size: 7.0pt;font-family: &quot;Times New Roman&quot;;"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
  <u></u>Under Bike and Ped plan, the police underwent a sting operation
  to enforce a crosswalk that has already been signed on both sides
  right in front of City Hall, but often has cars barely missing
  pedestrians crossing<u></u>
  <u></u></p>
<p class=""MsoNormal"" style=""margin: 0.0px 0.0px 0.0px 0.25in;color: rgb(34,34,34);font-family: arial , sans-serif;font-size: 12.8px;background-color: rgb(255,255,255);"">
  <u></u>&nbsp;<u></u></p>
<p class=""MsoNormal"" style=""margin: 0.0px 0.0px 0.0px 0.25in;color: rgb(34,34,34);font-family: arial , sans-serif;font-size: 12.8px;background-color: rgb(255,255,255);"">
  <b>IN the last year<u></u>
    <u></u></b></p>
<p style=""color: rgb(34,34,34);font-family: arial , sans-serif;font-size: 12.8px;background-color: rgb(255,255,255);"">
  <u></u>4.<span style=""font-size: 7.0pt;font-family: &quot;Times New Roman&quot;;"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
  <u></u>Englemann Park was just dedicated Nov. 4, 2012<u></u>
  <u></u></p>
<p style=""color: rgb(34,34,34);font-family: arial , sans-serif;font-size: 12.8px;background-color: rgb(255,255,255);"">
  <u></u>5.<span style=""font-size: 7.0pt;font-family: &quot;Times New Roman&quot;;"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
  <u></u>The Healthy checkout lane sign went up at Lamb’s but I think
  you already gave us credit for that one<u></u>
  <u></u></p>
<p style=""color: rgb(34,34,34);font-family: arial , sans-serif;font-size: 12.8px;background-color: rgb(255,255,255);"">
  <u></u>6.<span style=""font-size: 7.0pt;font-family: &quot;Times New Roman&quot;;"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
  <u></u>We support a community garden and a farmers market (both seasonal)<u></u>
  <u></u></p>
<div>
  <br /></div>
END_TEXT
}
    communications << { date: '41557', duration: '20', contact_type: 'E-mail Exchange',  organization_type: 'Participating City', contacts: "Patty Brescia at City of Wilsonville, ", cities: "Wilsonville, OR", staff: "Beth Kaye", topics: "Coordination with County Health Departments", notes: <<END_TEXT
Shared information re Clackamas County HEAL Grants (administered by
Kirsten Ingersoll at Clackamas County HD
END_TEXT
}
    communications << { date: '41565', duration: '120', contact_type: 'In-person Meeting',  organization_type: 'Participating City', contacts: "Patty Brescia at City of Wilsonville, ", cities: "Wilsonville, OR", staff: "Beth Kaye", topics: "Land Use & Transportation, Access to Healthy Food Options", notes: <<END_TEXT
Attended meeting of WIlsonville HEAL Coalition
END_TEXT
}
    communications << { date: '41565', duration: '60', contact_type: 'E-mail Exchange',  organization_type: 'Participating City', contacts: "Patty Brescia at City of Wilsonville, ", cities: "Wilsonville, OR", staff: "Beth Kaye", topics: "Land Use & Transportation, Other", notes: <<END_TEXT
Preparing for City Council Presentation re progress of HEAL Cities
CAmpaign in Wilsonville; new designation as FIT City
END_TEXT
}
    communications << { date: '41614', duration: '30', contact_type: 'E-mail Exchange',  organization_type: 'County Health Department', contacts: "Pam Hutchinson at Marion COunty Health Department, , Misha Peel at Polk County HD, , Ashley Baggett at The Public Health Foundation of Columbia County, ", cities: "Dallas, OR, Donald, OR, Falls City, OR, Independence, OR, Monmouth, OR, St. Helens, OR, Salem, OR, Scappoose, OR, Woodburn, OR", staff: "Beth Kaye", topics: "Access to Healthy Food Options", notes: <<END_TEXT
Alerted them to upcoming webinar on Healthy Eating Out: Raising the Bar
for Nutrition at Restaurants.&nbsp;<div>
  <br /></div>
<div>
  <span
    style=""color: rgb(34,34,34);font-family: arial , sans-serif;font-size: 12.8px;background-color: rgb(255,255,255);"">I
    thought this webinar might interest you. &nbsp;The moderator,
    Christine Fry, works at ChangeLab Solutions; &nbsp;I met with her on
    my recent trip to Oakland and picked her brain about recognition
    programs, a slightly different topic. &nbsp;She is smart and
    rigorous. &nbsp;</span></div>
<div>
  <span style=""color: rgb(34,34,34);font-family: arial , sans-serif;font-size: 12.8px;background-color: rgb(255,255,255);"">
    <br /></span></div>
END_TEXT
}
    communications << { date: '41614', duration: '30', contact_type: 'E-mail Exchange',  organization_type: 'Participating City', contacts: "Tamera Tlustos-Arnold at KP, , Julie Manning at City of Corvallis, , Patty Brescia at City of Wilsonville, ", cities: "Corvallis, OR, Fairview, OR, Wilsonville, OR", staff: "Beth Kaye", topics: "Access to Healthy Food Options, Coordination with County Health Departments", notes: <<END_TEXT
Alerted them to upcoming webinar on Healthy Eating Out: Raising the Bar
for Nutrition at Restaurants.&nbsp;<div>
  <br /></div>
<div>
  <span
    style=""color: rgb(34,34,34);font-family: arial , sans-serif;font-size: 12.8px;background-color: rgb(255,255,255);"">I
    thought this webinar might interest you. &nbsp;The moderator,
    Christine Fry, works at ChangeLab Solutions; &nbsp;I met with her on
    my recent trip to Oakland and picked her brain about recognition
    programs, a slightly different topic. &nbsp;She is smart and
    rigorous. &nbsp;</span></div>
<div>
  <span style=""color: rgb(34,34,34);font-family: arial , sans-serif;font-size: 12.8px;background-color: rgb(255,255,255);"">
    <br /></span></div>
END_TEXT
}
    communications << { date: '41618', duration: '20', contact_type: 'E-mail Exchange',  organization_type: 'Participating City', contacts: "Patty Brescia at City of Wilsonville, , Mark C. Ottenad at City of Wilsonville, ", cities: "Wilsonville, OR", staff: "Beth Kaye", topics: "Other", notes: <<END_TEXT
Discussion re value for Wilsonville of Coalition for a Livable Future
training on the Regional Equity Atlas 2.0.&nbsp;
END_TEXT
}
    communications << { date: '41632', duration: '30', contact_type: 'E-mail Exchange',  organization_type: 'Participating City', contacts: "John Oberst at , ", cities: "Monmouth, OR", staff: "Beth Kaye", topics: "Small Grants for HEAL Cities", notes: <<END_TEXT
Provided input on design of Proposal to KP for SMall Grants for HEAL Cities&nbsp;
END_TEXT
}
    communications << { date: '41633', duration: '30', contact_type: 'E-mail Exchange',  organization_type: 'Participating City', contacts: "Shanti Platt at , ", cities: "Gervais, OR", staff: "Beth Kaye", topics: "Small Grants for HEAL Cities", notes: <<END_TEXT
Provided input on proposal to KP for Small Grants for HEAL Cities
END_TEXT
}
    communications << { date: '41633', duration: '30', contact_type: 'E-mail Exchange',  organization_type: 'Participating City', contacts: "Ralph Grutzmacher at , ", cities: "Toledo, OR", staff: "Beth Kaye", topics: "Small Grants for HEAL Cities", notes: <<END_TEXT
Provided input on proposal to &nbsp;KP for design of Small Grants program&nbsp;
END_TEXT
}
    communications << { date: '41632', duration: '120', contact_type: 'E-mail Exchange',  organization_type: 'Participating City', contacts: "Lou Ogden at Resource Strategies Planning Group, , Daniel S. Morris, MS, PhD at Oregon Health Authority, , Tamera Tlustos-Arnold at KP, , Dan Field at Kaiser Permanente NW, , Mike McCauley at League of Oregon Cities, , Wes Hare at City of Albany, , Julie Manning at City of Corvallis, , Kitty Piercy at , , Ralph Grutzmacher at , , John Oberst at , , Jim Fairchild at , , Shanti Platt at , , Virginia Carnes at , , Kevin Toon at League of Oregon Cities, , Jacque Betz at , , Patty Brescia at City of Wilsonville, , Crystal  Shoji at City of Coos Bay, ", cities: "", staff: "Beth Kaye, Noelle Dobson", topics: "Small Grants for HEAL Cities", notes: <<END_TEXT
Sought advice from Advisory Committee members re proposal to KP for
Small Grant program
END_TEXT
}
    communications << { date: '41634', duration: '30', contact_type: 'E-mail Exchange',  organization_type: 'Participating City', contacts: "Jim Fairchild at , ", cities: "Dallas, OR", staff: "Beth Kaye", topics: "Small Grants for HEAL Cities", notes: <<END_TEXT
Jim commented on concepts for Small Grants for HEAL Cities RFP proposal
to KP. &nbsp;<div>
  <br /></div>
<div>$5-10 K enough.</div>
<div>Match important.&nbsp;</div>
<div>May -June payout best to allow cities to take advantage of dry
  season. &nbsp;</div>
END_TEXT
}
    communications << { date: '41642', duration: '30', contact_type: 'E-mail Exchange',  organization_type: 'Participating City', contacts: "Lou Ogden at Resource Strategies Planning Group, , Sherilyn Lombos at City of Tualatin, ", cities: "Tualatin, OR", staff: "Beth Kaye", topics: "Small Grants for HEAL Cities", notes: <<END_TEXT
Lou sent in his comments and comments of CM Sherilyn Lombos on the Small
Grants concept shared with the Advisory Committee. &nbsp;
END_TEXT
}
    communications << { date: '41678', duration: '40', contact_type: 'E-mail Exchange',  organization_type: 'Participating City', contacts: "Patty Brescia at City of Wilsonville, ", cities: "Wilsonville, OR", staff: "Beth Kaye", topics: "Access to Healthy Food Options, Other", notes: <<END_TEXT
Asked if I could put Coquille Indian Tribe in touch with Wilsonville
&nbsp;Lamb's Thiftway store manager re Healthy Check Out Lanes<div>
  <br /></div>
<div>Checked in to see if Wilsonville wanted TA on any policy options</div>
<div>
  <br /></div>
<div>Informed Patty re upcoming series of classes on Food &amp; Garden
  Education for Parks Dept Staff or HEAL Coalition&nbsp;</div>
<div>
  <br /></div>
END_TEXT
}
    communications << { date: '41654', duration: '45', contact_type: 'E-mail Exchange',  organization_type: 'Participating City', contacts: "Patty Brescia at City of Wilsonville, ", cities: "Wilsonville, OR", staff: "Beth Kaye, Dawn Powell, Steve White", topics: "Other", notes: <<END_TEXT
In response to an earlier e-mail request from Patty, BK presented
suggestions re keynote speakers for ORPA 2014:<div>James Sallis with
  Active Living Research at San Diego State &nbsp;(Steve) or&nbsp;</div>
<div>
  <br /></div>
<span
  style=""color: rgb(34,34,34);font-family: arial , sans-serif;font-size: 12.8px;background-color: rgb(255,255,255);"">Leigh
  Anne Jasheway, who has an MPH, but left public health for comedy.
  &nbsp;Dawn once saw her speak before the Oregon State Auditor's
  Association and folks were rolling on the floor. &nbsp;She teaches
  comedy writing at Lane Community College so she's a local sort. &nbsp;</span>
<div>
  <a href=""http://www.accidentalcomic.com/"" target=""_blank"" style=""font-family: arial , sans-serif;font-size: 12.8px;color: rgb(17,85,204);"">http://www.accidentalcomic.com/</a>&nbsp;</div>
<div>
  <br /></div>
END_TEXT
}
    communications << { date: '41703', duration: '10', contact_type: 'E-mail Exchange',  organization_type: 'Participating City', contacts: "Patty Brescia at City of Wilsonville, ", cities: "Wilsonville, OR", staff: "Beth Kaye", topics: "Other", notes: <<END_TEXT
Conversation re HEAL presentation at ORPA 2014 (to do it or &nbsp;not to
do it, and about what exactly?)
END_TEXT
}
    communications << { date: '41682', duration: '25', contact_type: 'E-mail Exchange',  organization_type: 'Participating City', contacts: "Patty Brescia at City of Wilsonville, , Mark C. Ottenad at City of Wilsonville, ", cities: "Wilsonville, OR", staff: "Beth Kaye, Steve White", topics: "Land Use & Transportation", notes: <<END_TEXT
Approached Wilsonville re interest in being part of a panel presentation
at OATS 2014
END_TEXT
}
    communications << { date: '41711', duration: '10', contact_type: 'E-mail Exchange',  organization_type: 'Participating City', contacts: "Patty Brescia at City of Wilsonville, ", cities: "Wilsonville, OR", staff: "Beth Kaye", topics: "Coordination with County Health Departments", notes: <<END_TEXT
Patty solicits help to prepare for &nbsp;presentation to Clackamas
County Public Health Advisory Committee
END_TEXT
}
    communications << { date: '41715', duration: '30', contact_type: 'E-mail Exchange',  organization_type: 'Participating City', contacts: "Patty Brescia at City of Wilsonville, ", cities: "Wilsonville, OR", staff: "Beth Kaye", topics: "Coordination with County Health Departments", notes: <<END_TEXT
E-mail and VM. &nbsp;Patty was preparing presentation to Clackamas
County Public Health Advisory Committee. &nbsp; Discussed materials
&nbsp;to include re HEAL Cities Campaign. &nbsp;Coached re themes. &nbsp;<div>
  <br /></div>
<div>
  <br /></div>
<div>
  <br /></div>
END_TEXT
}
    communications << { date: '41738', duration: '30', contact_type: 'E-mail Exchange',  organization_type: 'Statewide Organization', contacts: "Patty Brescia at City of Wilsonville, , Stephanie Redman at Oregon Recreation & Park Association, ", cities: "Wilsonville, OR", staff: "Beth Kaye", topics: "Other", notes: <<END_TEXT
Discussion about whether to have a HEAL Panel at 2014 ORPA conference. &nbsp;
END_TEXT
}
    communications << { date: '41747', duration: '120', contact_type: 'In-person Meeting',  organization_type: 'Participating City', contacts: "Patty Brescia at City of Wilsonville, ", cities: "Wilsonville, OR", staff: "Beth Kaye", topics: "Other", notes: <<END_TEXT
Series of calls and e-mails culminated in meeting to decide whether we
coud come up with a good HEAL Cities presentation for 2014 ORPA
conference. &nbsp; We decided that we could not. &nbsp;&nbsp;<div>
  <br /></div>
<div>California Parks &amp; Rec HEAL Strategy could be presented to ORPA
  Steering Committee in future.</div>
<div>
  <br /></div>
<div>Could feature Parks implementation in future years. &nbsp;</div>
<div>
  <br /></div>
<div>Also talked about HEAL Coalition efforts in Wilsonville, and
  Patty's new responsibilities at Wilsonville Parks &amp; Rec. &nbsp;</div>
END_TEXT
}
    communications << { date: '41803', duration: '10', contact_type: 'E-mail Exchange',  organization_type: 'Participating City', contacts: "Patty Brescia at City of Wilsonville, , Mark C. Ottenad at City of Wilsonville, ", cities: "Wilsonville, OR", staff: "Beth Kaye, Noelle Dobson", topics: "Evaluation", notes: <<END_TEXT
Sent Interview guide
END_TEXT
}
    communications << { date: '41792', duration: '20', contact_type: 'E-mail Exchange',  organization_type: 'Participating City', contacts: "Patty Brescia at City of Wilsonville, ", cities: "Wilsonville, OR", staff: "Beth Kaye", topics: "Small Grants for HEAL Cities", notes: <<END_TEXT
E-mail followed by telephone call re use of Small Grant for outdoor
exercise equipment for seniors.&nbsp;<div>
  <br /></div>
<div>Discussed equity, sustainability, &nbsp;match. &nbsp;</div>
END_TEXT
}
    communications << { date: '41789', duration: '30', contact_type: 'E-mail Exchange',  organization_type: 'Participating City', contacts: "Patty Brescia at City of Wilsonville, , Mark C. Ottenad at City of Wilsonville, ", cities: "Wilsonville, OR", staff: "Beth Kaye", topics: "Other", notes: <<END_TEXT
Approached Wilsonville re interest in applying for a CDC PICH grant. &nbsp;<div>
  <br /></div>
<div>Ultimately, received negative response. &nbsp;Too much going on,
  with planning for new Aquatic Center, and other Parks proposals&nbsp;</div>
END_TEXT
}
    communications << { date: '41789', duration: '45', contact_type: 'E-mail Exchange',  organization_type: 'Participating City', contacts: "Patty Brescia at City of Wilsonville, ", cities: "Wilsonville, OR", staff: "Beth Kaye", topics: "Coordination with County Health Departments, Evaluation, Small Grants for HEAL Cities", notes: <<END_TEXT
For HEAL Wilsonville agenda, I proposed:<div>
  <ul>
    <li>
      <span style=""font-size: 10.0pt;"">discussion re Small Grants</span></li>
    <li>
      <span style=""font-size: 10.0pt;"">inviting someone from Clackamas
        County HD to talk about County Health Rankings</span></li></ul></div>
<div>
  <br /></div>
<div>Also asked Patty to identify someone from City to participate in
  Evaluation Interview.</div>
END_TEXT
}
    communications << { date: '41765', duration: '90', contact_type: 'E-mail Exchange',  organization_type: 'Participating City', contacts: "Patty Brescia at City of Wilsonville, ", cities: "Wilsonville, OR", staff: "Beth Kaye", topics: "Other, Hunger and Obesity", notes: <<END_TEXT
Drafted TA e-mail re what it would take for Wilsonville to run a summer
food program. &nbsp;<div>
  <br /></div>
<div>
  <span
    style=""color: rgb(34,34,34);font-family: arial , sans-serif;font-size: 12.8px;background-color: rgb(255,255,255);"">&nbsp;I
    am not recommending that Wilsonville do a federally funded program.</span>
  <div
    style=""color: rgb(34,34,34);font-family: arial , sans-serif;font-size: 12.8px;background-color: rgb(255,255,255);"">I
    agree that there are too many regulations</div>
  <div
    style=""color: rgb(34,34,34);font-family: arial , sans-serif;font-size: 12.8px;background-color: rgb(255,255,255);"">Also,
    there are only two ways to qualify for a federal summer hunger
    program, and Wilsonville meets neither of them: &nbsp;</div>
  <div style=""color: rgb(34,34,34);font-family: arial , sans-serif;font-size: 12.8px;background-color: rgb(255,255,255);"">
    <ol>
      <li style=""margin-left: 15.0px;"">Test 1: &nbsp;50% or more of
        students must qualify for Free &amp; Reduced School Lunch: no
        Wilsonville Public Schools meet this requirement. &nbsp;Art
        &amp; tech HS meets it, but, as a charter school, is not
        eligible. &nbsp;There are signficant levels of poverty/hunger in
        the schools, but they do not exceed 50%. &nbsp;<br /></li>
      <li style=""margin-left: 15.0px;"">Test 2: &nbsp;use the Summer
        Hunger Indicator Map, based on census date. &nbsp;According to
        the map, there is one eligible area in Wilsonvillle. &nbsp;The
        program would &nbsp;have to be located in that area: &nbsp;the
        area &nbsp;N of Beckman Road, W of I-5, near Coffee Creek.
        &nbsp;The only park there is Canyon Creek Park. &nbsp; Lesley
        and I thought it was a thinly-populated area, with more of a
        rural feel than other parts of the city.&nbsp;</li></ol></div>
  <div style=""color: rgb(34,34,34);font-family: arial , sans-serif;font-size: 12.8px;background-color: rgb(255,255,255);"">
    <br /></div>
  <div
    style=""color: rgb(34,34,34);font-family: arial , sans-serif;font-size: 12.8px;background-color: rgb(255,255,255);"">However,
    I do recommend that Wilsonville consider doing an unofficial
    locally-funded program for the month of July. &nbsp;</div>
  <div style=""color: rgb(34,34,34);font-family: arial , sans-serif;font-size: 12.8px;background-color: rgb(255,255,255);"">
    <br /></div>
  <div
    style=""color: rgb(34,34,34);font-family: arial , sans-serif;font-size: 12.8px;background-color: rgb(255,255,255);"">Why:
    &nbsp;Even though Wilsonvilled schools do not have more than 50%
    F&amp;RSL levels, there are significant numbers of hungry kids who
    really miss those school meals. July is the biggest month for summer
    meal programs across Oregon and the nation. &nbsp;</div>
  <div style=""color: rgb(34,34,34);font-family: arial , sans-serif;font-size: 12.8px;background-color: rgb(255,255,255);"">
    <br /></div>
  <div style=""color: rgb(34,34,34);font-family: arial , sans-serif;font-size: 12.8px;background-color: rgb(255,255,255);"">
    <br /></div>
  <div
    style=""color: rgb(34,34,34);font-family: arial , sans-serif;font-size: 12.8px;background-color: rgb(255,255,255);"">Requirements
    of a summer food program:</div>
  <div style=""color: rgb(34,34,34);font-family: arial , sans-serif;font-size: 12.8px;background-color: rgb(255,255,255);"">
    <ul>
      <li style=""margin-left: 15.0px;"">Funding: &nbsp;$4/kid/meal. (The
        federal lunch reimbursement rate is $3.47. &nbsp;Lesley
        suggested that we budget $4.00. &nbsp; To feed 100 kids four
        days/week would be $1600. &nbsp; To run the program for 4 weeks
        would be $7,400 in food costs. &nbsp;This money could come from
        any number of sources: &nbsp;General Fund, local Chamber,
        private donors, Library Foundation, &nbsp;local United Way???? &nbsp;<br /></li>
      <li style=""margin-left: 15.0px;"">Food prep: &nbsp;Lesley felt that
        the West Lynn/Wilsonville School District might be willing to
        supply the meals at a $4.00 rate.&nbsp;<br /></li>
      <li style=""margin-left: 15.0px;"">Supervision: &nbsp;Parks &amp;
        Rec. &nbsp;<br /></li>
      <li style=""margin-left: 15.0px;"">Activities: &nbsp;key to getting
        kids there. &nbsp;Parks &amp; rec again.Also, the folks at the
        library looked in to doing a lunch program because they are
        eager to engage kids in reading and other library activities.
        &nbsp;They couldn't carry it off on their own, but they might be
        able to partner with Parks. &nbsp; &nbsp;<br /></li>
      <li style=""margin-left: 15.0px;"">Transportation to the meal site:
        Wilsonville's free SMART transportation means that kids and
        their families could come to Memorial Park or any central
        location served by the transit system. &nbsp;This is a HUGE
        advantage because it means there is no opportunity cost.&nbsp;</li>
      <li style=""margin-left: 15.0px;"">Outreach: &nbsp;Parks &amp; Rec.
        &nbsp;Maybe SMART could advertise program, too. &nbsp;Could also
        hold a kickoff event -- maybe involve HEAL in that? &nbsp;<br /></li>
      <li style=""margin-left: 15.0px;"">Eligibility not an issue: &nbsp;
        Because the program would be locally funded, no ID or proof of
        income would be required. &nbsp;&nbsp;</li>
      <li style=""margin-left: 15.0px;"">Who would the program feed:
        &nbsp;we could limit it to kids. &nbsp;However, there's a very
        successful program in Pdx that provides parent meals as well as
        kids meals. &nbsp;This has really boosted turnout of hungry
        kids. &nbsp;Younger kids can't go to these lunch sites without
        parent help. &nbsp;Parents make the extra effort to bring the
        younger children because everyone can eat. &nbsp; (I LOVE this
        idea. &nbsp;I think we would have a good turnout from the
        beginning if we opened it to the whole family. &nbsp;)<br /></li>
      <li style=""margin-left: 15.0px;"">Food safety: &nbsp; we need more
        research on this. &nbsp;I don't think keeping food cold until
        lunch is the problem. &nbsp;The issue is making sure kids don't
        stuff the tuna sandwich in the backpack for family back home --
        the sandwich will breed bacteria and that can cause food
        poisoning. &nbsp;We have to be clear that this is not a backpack
        program. (Unless we added on a backpack program.)<br /></li>
      <li style=""margin-left: 15.0px;"">Other opportunities: &nbsp;The
        Oregon Food Bank has a Access &amp; Community Ed (ACES) program
        that might be able to do a fruit drop, so that kids could
        have/take home fresh fruit. &nbsp;<br /></li></ul></div>
  <div
    style=""color: rgb(34,34,34);font-family: arial , sans-serif;font-size: 12.8px;background-color: rgb(255,255,255);"">I've
    got the names and numbers of the library folks who are interested in
    helping, as well as the ACE folks at the food bank. &nbsp;</div>
  <div style=""color: rgb(34,34,34);font-family: arial , sans-serif;font-size: 12.8px;background-color: rgb(255,255,255);"">
    <br /></div>
  <div
    style=""color: rgb(34,34,34);font-family: arial , sans-serif;font-size: 12.8px;background-color: rgb(255,255,255);"">What
    do you think? &nbsp;Can HEAL Wilsonville make this happen? &nbsp;It
    would be a lift, but I think it would feel really good. &nbsp;</div></div>
END_TEXT
}
    communications << { date: '41764', duration: '10', contact_type: 'E-mail Exchange',  organization_type: 'Participating City', contacts: "Patty Brescia at City of Wilsonville, ", cities: "Wilsonville, OR", staff: "Beth Kaye", topics: "Shared Use, Other, Hunger and Obesity", notes: <<END_TEXT
Discussion re potential for Wilsonville summer food program&nbsp;
END_TEXT
}
    communications << { date: '41682', duration: '20', contact_type: 'E-mail Exchange',  organization_type: 'State Agency', contacts: "Constance Beaumont at Oregon Dept of Land Conservation and Development, ", cities: "Wilsonville, OR", staff: "Beth Kaye", topics: "Land Use & Transportation, Other", notes: <<END_TEXT
BK is working with CB to get a panel at OATS that will feature HEAL
Cities that have made policy change on Active Transportation, such as Wilsonville
END_TEXT
}
    communications << { date: '41682', duration: '10', contact_type: 'E-mail Exchange',  organization_type: 'Participating City', contacts: "Jen Massa Smith at City of Wilsonville, ", cities: "Wilsonville, OR", staff: "Beth Kaye", topics: "Land Use & Transportation", notes: <<END_TEXT
Discussed featuring Wilsonville on panel at Oregon Active Transportation
Conference. &nbsp; (One in a series of VMs and e-mail exchanges.)
END_TEXT
}
    communications << { date: '41761', duration: '90', contact_type: 'Telephone Call',  organization_type: 'Statewide Organization', contacts: "Lesley Nelson at Partners for a Hunger Free Oregon, ", cities: "Wilsonville, OR", staff: "Beth Kaye", topics: "Access to Healthy Food Options, Shared Use, Other, Hunger and Obesity", notes: <<END_TEXT
Extended conversation with Lesley Nelson about potential for a summer
lunch program in Wilsonville. &nbsp; Reviewed federal and state
regulations, potential partners, potential locations, political considerations.
END_TEXT
}
    communications << { date: '41764', duration: '10', contact_type: 'E-mail Exchange',  organization_type: 'Statewide Organization', contacts: "Lesley Nelson at Partners for a Hunger Free Oregon, ", cities: "Wilsonville, OR", staff: "Beth Kaye", topics: "Other, Hunger and Obesity", notes: <<END_TEXT
Lesley passed on these contacts for a potential Wilsonville summer meas program:<div>
  <br /></div>
<div>
  <div
    style=""color: rgb(34,34,34);font-family: arial , sans-serif;font-size: 12.8px;background-color: rgb(255,255,255);"">Here's
    the contact info for the ACES (Agency Capacity and Education) team
    at OFB and for the Wilsonville Library guys. Keep me posted!&nbsp;<br />
    <br />Thanks so much<br />
    <br />
    <b>ACES team&nbsp;</b>
    <br /></div>
  <div
    style=""color: rgb(34,34,34);font-family: arial , sans-serif;font-size: 12.8px;background-color: rgb(255,255,255);"">Arturo
    Caro -&nbsp;<a href=""mailto:acaro@oregonfoodbank.org""
      target=""_blank""
      style=""color: rgb(17,85,204);"">acaro@oregonfoodbank.org</a>&nbsp;-&nbsp;<span style=""color: rgb(23,54,93);"">
      <a target=""_blank"" style=""color: rgb(17,85,204);"">503.282.0555
        ext. 2253</a></span></div>
  <div
    style=""color: rgb(34,34,34);font-family: arial , sans-serif;font-size: 12.8px;background-color: rgb(255,255,255);"">Tarn
    Allen -&nbsp;<a href=""mailto:tarnallen@oregonfoodbank.org""
      target=""_blank"" style=""color: rgb(17,85,204);"">tarnallen@oregonfoodbank.org</a><br />
    <br /></div>
  <div style=""color: rgb(34,34,34);font-family: arial , sans-serif;font-size: 12.8px;background-color: rgb(255,255,255);"">
    <b>Wilsonville Library</b>
    <br />
    <br />
    <span
      style=""font-size: 10.0pt;font-family: Arial , sans-serif;"">Steven
      Engelfried- Youth Services Librarian -&nbsp;</span>
    <a href=""mailto:engelfried@wilsonvillelibrary.org"" target=""_blank""
      style=""color: rgb(17,85,204);"">engelfried@wilsonvillelibrary.org</a>&nbsp;-<span style=""font-size: 10.0pt;font-family: Arial , sans-serif;"">
      <a target=""_blank"" style=""color: rgb(17,85,204);"">503-570-1592</a><br /></span></div>
  <div style=""color: rgb(34,34,34);font-family: arial , sans-serif;font-size: 12.8px;background-color: rgb(255,255,255);"">
    <span style=""font-size: 10.0pt;font-family: Arial , sans-serif;"">
      <br />Patrick Duke - Library Director&nbsp;&nbsp;</span>
    <a href=""mailto:duke@wilsonvillelibrary.org"" target=""_blank""
      style=""color: rgb(17,85,204);"">duke@wilsonvillelibrary.org</a>&nbsp;<a
      target=""_blank""
      style=""color: rgb(17,85,204);"">503-570-1590</a><div
      class=""yj6qo ajU"" style=""cursor: pointer;outline: none;padding: 10.0px 0.0px;width: 22.0px;"">
      <div id="":1hu"" class=""ajR"" style=""border: 1.0px solid rgb(221,221,221);clear: both;line-height: 6.0px;outline: none;width: 20.0px;background-color: rgb(241,241,241);"">
        <img class=""ajT""
          src=""https://ssl.gstatic.com/ui/v1/icons/mail/images/cleardot.gif"" style=""height: 8.0px;width: 20.0px;background: url(https://ssl.gstatic.com/ui/v1/icons/mail/ellipsis.png) no-repeat;"" /></div></div></div></div>
END_TEXT
}
    communications << { date: '41795', duration: '25', contact_type: 'E-mail Exchange',  organization_type: 'Participating City', contacts: "Patty Brescia at City of Wilsonville, ", cities: "Wilsonville, OR", staff: "Beth Kaye", topics: "Access to Healthy Food Options, Hunger and Obesity", notes: <<END_TEXT
BK proposed putting summer meals program on the Agenda for today's HEAL
Wilsonville meeting.&nbsp;<div>
  <br /></div>
<div>Patti declined, &quot;<span
    style=""color: rgb(31,73,125);font-family: Calibri , sans-serif;font-size: 14.4px;background-color: rgb(255,255,255);"">We
    actually have an new person named Marie Alaniz who works with NW
    housing alternatives and she has been talking to a couple of local
    churches about the same topic (at least kids lunches) and we thought
    we’d initiate a discussion and maybe schedule a different meeting on
    another date to focus on it as a smaller group. Would you like to be
    in on that.&quot;</span></div>
<div>
  <span style=""color: rgb(31,73,125);font-family: Calibri , sans-serif;font-size: 14.4px;background-color: rgb(255,255,255);"">
    <br /></span></div>
<div>
  <font color=""#1f497d"" face=""Calibri, sans-serif"">
    <span
      style=""font-size: 14.444445px;background-color: rgb(255,255,255);"">BK
      said she would like to be included, and would not attend the HEAL
      meeting. &nbsp;</span></font></div>
END_TEXT
}
    communications << { date: '41848', duration: '15', contact_type: 'E-mail Exchange',  organization_type: 'County Health Department', contacts: "Patricia Parsons at Benton County Health Department, Jul 28 2014", cities: "Corvallis, OR", staff: "Beth Kaye", topics: "Small Grants for HEAL Cities", notes: <<END_TEXT
Corvallis may be interested in applying for a Small Grant. &nbsp;I
confirmed deadline and directed her to website. &nbsp;
END_TEXT
}
    communications << { date: '41838', duration: '30', contact_type: 'Telephone Call',  organization_type: 'Participating City', contacts: "Candy Cronberger at City of Gold Beach, ", cities: "Gold Beach, OR", staff: "Beth Kaye", topics: "Introduction To HEAL Cities, Land Use & Transportation, Small Grants for HEAL Cities", notes: <<END_TEXT
Interested in purchasing circuit training exercise equipment for parks
for use by Seniors
END_TEXT
}
    communications << { date: '41799', duration: '20', contact_type: 'E-mail Exchange',  organization_type: 'Participating City', contacts: "Candy Cronberger at City of Gold Beach, ", cities: "Gold Beach, OR", staff: "Beth Kaye", topics: "Introduction To HEAL Cities, Small Grants for HEAL Cities", notes: <<END_TEXT
Candy reached out because of the Small Grants RFP. &nbsp;Arranged
telephone appointment.&nbsp;
END_TEXT
}
    communications << { date: '41848', duration: '10', contact_type: 'E-mail Exchange',  organization_type: 'Participating City', contacts: "candy Cronberger at City of Gold Beach, ", cities: "Gold Beach, OR", staff: "Beth Kaye", topics: "Small Grants for HEAL Cities", notes: <<END_TEXT
Reminder that, to apply for a Small Grant, Gold Beach must join the
Campaign by 7/31/14
END_TEXT
}
    communications << { date: '41848', duration: '45', contact_type: 'E-mail Exchange',  organization_type: 'Participating City', contacts: "Barbara Fryer AICP at City of Beaverton Community Development Dept, Jul 28 2014", cities: "Beaverton, OR", staff: "Beth Kaye", topics: "Other", notes: <<END_TEXT
Preparing Barbara to presnt HEAL Campaign to Beaverton's new CD
Director, Barbara Twete, who succeeded Don Mazziotti in the position.
Still working on getting Beaverton to joi the Campaign. &nbsp;
END_TEXT
}
    communications << { date: '41848', duration: '30', contact_type: 'Telephone Call',  organization_type: 'Participating City', contacts: "Denny Egner at City of Milwaukie, ", cities: "Milwaukie, OR", staff: "Beth Kaye", topics: "Small Grants for HEAL Cities, Site visit", notes: <<END_TEXT
Arranged site visit.&nbsp;
END_TEXT
}
    communications << { date: '41830', duration: '20', contact_type: 'E-mail Exchange',  organization_type: 'Parks & Recreation District', contacts: "Renee Wells at Sunset Empire Parks & Rec, ", cities: "Seaside, OR", staff: "Beth Kaye", topics: "Welcome to HEAL Cities", notes: <<END_TEXT
Renee told BK that City of Seaside had adopted HEAL Resolution on Jun3
23, 2014
END_TEXT
}
    communications << { date: '41836', duration: '35', contact_type: 'Telephone Call',  organization_type: 'Parks & Recreation District', contacts: "Renee Wells at Sunset Empire Parks & Rec, ", cities: "Seaside, OR", staff: "Beth Kaye", topics: "Small Grants for HEAL Cities", notes: <<END_TEXT
Discussed grant possibilities.&nbsp;
END_TEXT
}
    communications << { date: '41801', duration: '90', contact_type: 'Site Visit',  organization_type: 'Participating City', contacts: "Don Larson at City  of Seaside, , Justin Cutler at Sunset Empire Parks & Rec, , Renee Wells at Sunset Empire Parks & Rec, , Mark W. Stanley at City of Seaside, , Steven  Blakesley at Clatsop County Public Health, ", cities: "Seaside, OR", staff: "Beth Kaye", topics: "Introduction To HEAL Cities, Land Use & Transportation, Access to Healthy Food Options, Workplace Wellness, Coordination with County Health Departments, Let's Move Cities Towns & Counties, Small Grants for HEAL Cities, Site visit", notes: <<END_TEXT
Mayor very enthusiastic about idea of a connected city with safe
bike/ped access.<div>
  <br /></div>
<div>Not enthusiastic about smoking cessation (County priority), given
  current composition of Council. &nbsp;<br />
  <div>
    <br /></div>
  <div>How to pay for sidewalks? &nbsp;Homeowners would rebel at
    assessment. &nbsp; Discussed prioritizing certain connector streets
    and having City pay some/all of cost. &nbsp;</div>
  <div>
    <br /></div>
  <div>Very interested in Small Grants. &nbsp;</div>
  <div>
    <br /></div>
  <div>Agreed to bring Resolution to Council. &nbsp; Would not need to
    have me there. &nbsp;</div></div>
END_TEXT
}
    communications << { date: '41745', duration: '180', contact_type: 'Site Visit',  organization_type: 'Parks & Recreation District', contacts: "Renee Wells at Sunset Empire Parks & Rec, ", cities: "Seaside, OR", staff: "Beth Kaye", topics: "Introduction To HEAL Cities, Land Use & Transportation, Access to Healthy Food Options, Shared Use, Workplace Wellness, Coordination with County Health Departments, Site visit", notes: <<END_TEXT
Very interesting tour of Seaside, with emphasis on low-income housing,
schools, bike and ped path of travel.
END_TEXT
}
    communications << { date: '41745', duration: '90', contact_type: 'In-person Meeting',  organization_type: 'County Health Department', contacts: "Renee Wells at Sunset Empire Parks & Rec, , Steven  Blakesley at Clatsop County Public Health, ", cities: "Astoria, OR, Seaside, OR", staff: "Beth Kaye", topics: "Introduction To HEAL Cities, Land Use & Transportation, Access to Healthy Food Options, Shared Use, Workplace Wellness, Coordination with County Health Departments, Hunger and Obesity, Site visit", notes: <<END_TEXT
Renee Wells of Sunset Empire Parks &amp; Rec was also there.&nbsp;
END_TEXT
}
    communications << { date: '41534', duration: '10', contact_type: 'In-person Meeting',  organization_type: 'Parks & Recreation District', contacts: "Justin Cutler at Sunset Empire Parks & Rec, ", cities: "Seaside, OR", staff: "Beth Kaye", topics: "Introduction To HEAL Cities", notes: <<END_TEXT
Patti Brescia (Wilsonville) introduced us.&nbsp;
END_TEXT
}
    communications << { date: '41844', duration: '10', contact_type: 'Telephone Call',  organization_type: 'Participating City', contacts: "Kelly Clarke at City of Gresham, Jul 21 2014", cities: "Gresham, OR", staff: "Beth Kaye", topics: "Welcome to HEAL Cities", notes: <<END_TEXT
Kelly wanted to know what the Local Focus ad featuring Mayor Bemis would
look like. &nbsp;Confirmed that there was no interview involved.&nbsp;
END_TEXT
}
    communications << { date: '41843', duration: '20', contact_type: 'E-mail Exchange',  organization_type: 'Participating City', contacts: "Bill Monahan at City of Milwaukie, ", cities: "Milwaukie, OR", staff: "Beth Kaye", topics: "Other, Small Grants for HEAL Cities, Welcome to HEAL Cities, Site visit", notes: <<END_TEXT
Edited and personalized welcome letter.&nbsp;
END_TEXT
}
    communications << { date: '41822', duration: '15', contact_type: 'E-mail Exchange',  organization_type: 'Participating City', contacts: "Bill Monahan at City of Milwaukie, ", cities: "Milwaukie, OR", staff: "Beth Kaye", topics: "Other", notes: <<END_TEXT
Provided him with a draft HEAL Resolution and materials for the Council packet
END_TEXT
}
    communications << { date: '41835', duration: '150', contact_type: 'Attended public hearing',  organization_type: 'Participating City', contacts: "Jeremy Ferguson at City of Mikwaukie, , Mark Gamba at City of Mikwaukie, , Bill Monahan at City of Milwaukie, ", cities: "Milwaukie, OR", staff: "Beth Kaye", topics: "Introduction To HEAL Cities, Small Grants for HEAL Cities", notes: <<END_TEXT
Presentation at City Council worksession. &nbsp;Council subsequently
adopted a HEAL resolution on consent agenda. &nbsp;
END_TEXT
}
    communications << { date: '41820', duration: '75', contact_type: 'In-person Meeting',  organization_type: 'Participating City', contacts: "Kirstens Ingersoll at Clackamas County PHD, , Mark Gamba at City of Mikwaukie, ", cities: "Milwaukie, OR", staff: "Beth Kaye", topics: "Introduction To HEAL Cities, Land Use & Transportation, Access to Healthy Food Options, Workplace Wellness, Coordination with County Health Departments, Hunger and Obesity, Small Grants for HEAL Cities", notes: <<END_TEXT
Mark was very interested in HEAL Campaign, particularly because of
opportunity to participate in Small Grants RFP.&nbsp;<div>
  <br /></div>
<div>His Council has 2 liberals, 3 conservatives. &nbsp;(This may change
  in coming year.) &nbsp;Council has voted down some land use changes
  Mark backed, including request from Northwest Housing Alternatives to
  redevelop its property with greater density. &nbsp;We discussed
  strategies for presenting HEAL to COuncil as a program that did not
  seek to interfere with individual choice and would not spend public
  money. &nbsp;</div>
<div>
  <br /></div>
<div>Kirsten Ingersoll was very supportive, and described Clackamas
  County's HEAL Grant program. &nbsp;</div>
END_TEXT
}
    communications << { date: '41759', duration: '10', contact_type: 'In-person Meeting',  organization_type: 'Participating City', contacts: "Jeremy Ferguson at City of Mikwaukie, , Mark Gamba at City of Mikwaukie, , Karianne Schlosshauer at Safe Routes to School National Partnership, ", cities: "Milwaukie, OR", staff: "Beth Kaye", topics: "Introduction To HEAL Cities, Land Use & Transportation", notes: <<END_TEXT
While at Safe Routes to Schools event in Mikwaukie presented by Kari
Schlosshauer, met Mayor Ferguson and Councilor Gamba. &nbsp;Introduced
HEAL Cities. &nbsp;Mayor was off to China; we agreed to reconnect on his
return. &nbsp;
END_TEXT
}
    communications << { date: '41843', duration: '50', contact_type: 'E-mail Exchange',  organization_type: 'Participating City', contacts: "Roberta Vanderwall at City of Nyssa, , Lurelle  Robbins at , , Susan Barton at Nyssa in Action, ", cities: "Nyssa, OR", staff: "Beth Kaye", topics: "Introduction To HEAL Cities, Small Grants for HEAL Cities", notes: <<END_TEXT
Lurelle Robbins, a friend of Liz Baxter's, sought info on HEAL Small
Grants, and mentioned that he had had discussions with Susan Barton of
Nyssa in Action and the City Manager, Roberta Vanderwall. &nbsp;<div>
  <br /></div>
<div>BK sent letter with info about joining the Campaign and the Small
  Grants program. &nbsp;</div>
END_TEXT
}
    communications << { date: '41844', duration: '15', contact_type: 'Telephone Call',  organization_type: 'Participating City', contacts: "Angela Cosby at City of Astoria, Jul 25 2014", cities: "Astoria, OR", staff: "Beth Kaye", topics: "Access to Healthy Food Options, Small Grants for HEAL Cities", notes: <<END_TEXT
Farmer's market:<div>Thursday evening SNAP</div>
<div>Sunday - no SNAP</div>
<div>
  <br /></div>
<div>Would like to do a SNAP match program, and use grant to fund Math.
  &nbsp;Astoria would also put $$ in the pot.&nbsp;</div>
<div>
  <br /></div>
<div>Other concept is funding for Little Sprouts program for kids in
  corner of Thursday market. &nbsp;</div>
<div>
  <br /></div>
<div>Explained eligibility issues, sustainability requirement.
  &nbsp;Directed her to FAQ. Suggested purchase of SNAP card reader for
  Sunday market, development of curriculum for Little Sprouts,
  &nbsp;purchase of equipment (table, awning) for Little Sprouts. &nbsp;</div>
END_TEXT
}
    communications << { date: '41844', duration: '10', contact_type: 'E-mail Exchange',  organization_type: 'Participating City', contacts: "Benjamin Marchant at City of Coquille, ", cities: "Coquille, OR", staff: "Beth Kaye", topics: "Small Grants for HEAL Cities, Welcome to HEAL Cities", notes: <<END_TEXT
Ben let us know that the Coquille City Council had voted to join the
HEAL Campaign, and would be submitting a Small Grant proposal. &nbsp;
END_TEXT
}
    communications << { date: '41844', duration: '10', contact_type: 'E-mail Exchange',  organization_type: 'Participating City', contacts: "Angela Cosby at City of Astoria, Jul 25 2014", cities: "Astoria, OR", staff: "Beth Kaye", topics: "Small Grants for HEAL Cities, Welcome to HEAL Cities", notes: <<END_TEXT
Set up a phone call re Small Grant proposal. &nbsp;
END_TEXT
}
    communications << { date: '41841', duration: '10', contact_type: 'E-mail Exchange',  organization_type: 'Participating City', contacts: "Brian Latta at City of Harrisburg, ", cities: "Harrisburg, OR", staff: "Beth Kaye", topics: "Introduction To HEAL Cities, Small Grants for HEAL Cities", notes: <<END_TEXT
Acknowledged that BK had received call re Harrisburg's intention to join
the Campaign. &nbsp; Invited him to call me for info re Small Grants.&nbsp;
END_TEXT
}
    communications << { date: '41836', duration: '5', contact_type: 'Telephone Call',  organization_type: 'Participating City', contacts: "Brian Latta at City of Harrisburg, ", cities: "Harrisburg, OR", staff: "Beth Kaye", topics: "Introduction To HEAL Cities, Small Grants for HEAL Cities", notes: <<END_TEXT
Mr. Latta left BK a FYI VM that Harrisburg would be joining the Campaign
on 7/25. &nbsp;Already had Resolution drafted. &nbsp;&nbsp;
END_TEXT
}
    communications << { date: '41841', duration: '20', contact_type: 'Telephone Call',  organization_type: 'Participating City', contacts: "Paula Rose at City of Hillsboro, ", cities: "Hillsboro, OR", staff: "Beth Kaye", topics: "Introduction To HEAL Cities, Small Grants for HEAL Cities", notes: <<END_TEXT
BK made appointment for initial visit in August. &nbsp;After meeting me
and learning more about the program, Paula will assemble a team from
different City departments. &nbsp;<div>
  <br /></div>
<div>Will not be able to adopt Resolution by 7/30. &nbsp;Was initially
  interested because of HEAL Cities Small Grants. &nbsp;</div>
END_TEXT
}
    communications << { date: '41841', duration: '60', contact_type: 'Telephone Call',  organization_type: 'University', contacts: "Jim Hough at Portland State University, ", cities: "Banks, OR, Cornelius, OR, Forest Grove, OR, Monmouth, OR, Salem, OR", staff: "Beth Kaye", topics: "Small Grants for HEAL Cities", notes: <<END_TEXT
Jim is former CM of Banks. &nbsp;Now retired. &nbsp;Connected with Beth
at OCCMA.&nbsp;<div>
  <br /></div>
<div>Reach out to Scott McClure, Monmouth City Manager, 503 751
    0146<div>Missing West Salem and Monmouth in Polk County</div>
  <div>West Salem functions as a bedroom community for Salem</div>
  <div>
    <br /></div>
  <div>Salem - Linda Norris -- go to her assistant - Christy Wrster (sp)
    503 588 6227 &nbsp;-- &nbsp;used to be CM in Dayton &nbsp;- use
    Jim's name</div>
  <div>
    <br /></div>
  <div>Rob Drake is a dynamo, but capacity constrained</div>
  <div>Send him resolution and cc Jim</div>
  <div>Jim Hough Teaches public works administration at PSU</div>
  <div>
    <br /></div>
  <div>Banks:</div>
  <div>CM is JoLynn Becker, the CM</div>
  <div>Her main task from Council is Economic Development - probably overwhelmed</div>
  <div>In Strategic Plan, goal is for Banks to be a recreational hub
    centered around Banks-Vernonia State Trail &nbsp;(exists) and the</div>
  <div>Council Creek Regional Trail &nbsp;(does not yet exist -- getting
    study money) (In METRO's master plan, because Forest Grove,
    Cornelius, Hillsboro all in Metro area) &nbsp;(Banks and FOrest
    Grove not in Metro area)&nbsp;</div>
  <div>Hwy 47 scenic bikeway -- &nbsp;darn trucks speeding through town
    -- maybe 1 truck speeding enough to get a ticket, 3 above limit --&nbsp;</div>
  <div>what about radar speed sign to slow people down&nbsp;</div>
  <div>Make a record of amount of traffic&nbsp;</div>
  <div>Solar powered radar boards to monitor traffic --&nbsp;</div>
  <div>ODOT ROW</div>
  <div>never could come up with enough $$ to buy system&nbsp;</div>
  <div>Has not received CDBG is ages</div>
  <div>
    <br /></div>
  <div>Has a Master Rec Plan -- internal bike plan is a part of it (but
    design and route does not exist)</div>
  <div>TGM funded some work&nbsp;</div>
  <div>
    <br /></div>
  <div>missed me the day I left the conference</div>
  <div>2 things he would like to do</div>
  <div>PSU Professor Phil Cooper's wife Claudia lives in Forest Grove.
    &nbsp;She is Latina. &nbsp;Does a lot of work with Virginia Garcia
    clinic in Cornelius and Forest Grove. &nbsp;Wants info for her.
    &nbsp;She has a program - a swimming program for kids - Swim program subsidy.</div>
  <div>I explained that this would not be eligible, but that other
    things might be</div>
  <div>
    <br /></div>
  <div>
    <br /></div>
  <div>
    <br /></div>
  <div>She does not work with Centro Cultural&nbsp;</div>
  <div>Jump ball - grant money is jump ball. &nbsp;</div>
  <div>
    <br /></div></div>
END_TEXT
}
    communications << { date: '41841', duration: '50', contact_type: 'Telephone Call',  organization_type: 'Participating City', contacts: "Kelly Clarke at City of Gresham, Jul 21 2014", cities: "Gresham, OR", staff: "Beth Kaye", topics: "Introduction To HEAL Cities, Small Grants for HEAL Cities", notes: <<END_TEXT
Gresham joined the Campaign on 7/15/2014, &nbsp;<div>Kelly Clarke worked
  with Ron Paster, the Governmnet Relations Manager, and Stacy Humphrey
  to put the Resolution before Council. &nbsp;</div>
<div>
  <br /></div>
<div>Very interested in Small Grants for HEAL CIties.&nbsp;</div>
<div>
  <br /></div>
<div>Council is eager about creating safer crossings. &nbsp;165th and
  Stark, Boys &amp; Girls Club, flashing beacon. &nbsp;In Rockwood. &nbsp;</div>
<div>Other crossing is on Pacific Street -- working on designing Pacific
  Street to do bulb outs to improve crossing. &nbsp;Makes crossing
  shorter, and makes pedestrian more visible. &nbsp;Has a grant to do
  improvements for Nadaka Nature Park at NE Gleason at 172-181st. &nbsp;
  Enables access into park for cyclists/peds. &nbsp;Similar low income
  population demographics. &nbsp;Transportation disadvantaged trends. &nbsp;</div>
<div>
  <br /></div>
<div>
  <br /></div>
<div>Design and materials within grant timeline, installation in next
  construction cycle. &nbsp;I thought that would be okay, since we would
  allow funds to be used for planning alone, with implementation down
  the road. &nbsp;</div>
<div>
  <br /></div>
<div>Another thought: &nbsp;bike routes throughout the city.
  &nbsp;Implementing sharrows to indicate bike routes. &nbsp;Put down
  thermal paint from Ruby Junction Station East along Max line to
  Cleveland Station. &nbsp; Would give people in Rockwood direction
  through lower volume streets to Portland system. &nbsp; $15K project.
  &nbsp; Gresham might match with cash.</div>
END_TEXT
}
    communications << { date: '41505', duration: '30', contact_type: 'In-person Meeting',  organization_type: 'Statewide Organization', contacts: "Patty Whitney-Wise at Partners for a Hunger Free Oregon, ", cities: "", staff: "Beth Kaye", topics: "", notes: <<END_TEXT
Met with her as part of research for presentation at Food and Ag panel
at Oregon Mayor's Association.
END_TEXT
}
    communications << { date: '41505', duration: '30', contact_type: 'In-person Meeting',  organization_type: 'Regional Organization', contacts: "Rick Gaupo at Marion-Polk Food Share, ", cities: "", staff: "Beth Kaye", topics: "", notes: <<END_TEXT
Part of research for presentation at the Food and Ag Panel at the Oregon
Mayor's association.
END_TEXT
}
    communications << { date: '41794', duration: '90', contact_type: 'Webinar',  organization_type: 'Statewide Organization', contacts: "Rebecca Pawlak at State of Oregon/Oregon Health Authority, ", cities: "", staff: "Beth Kaye", topics: "", notes: <<END_TEXT
Attended webinar, Healthy Meetings and Vending to Improve Workplace
Wellness, June 4, 2014, 10:30am - 12pm.
END_TEXT
}
    communications << { date: '41794', duration: '90', contact_type: 'Webinar',  organization_type: 'Other', contacts: "Allison Abell at , ", cities: "", staff: "Beth Kaye", topics: "", notes: <<END_TEXT
Attended webinar, Healthy Meetings and Vending to Improve Workplace
Wellness, June 4, 2014, 10:30am - 12pm
END_TEXT
}
    communications << { date: '41794', duration: '90', contact_type: 'Webinar',  organization_type: 'Other', contacts: "Abraham Moland at , ", cities: "", staff: "Beth Kaye", topics: "", notes: <<END_TEXT
Attended webinar: Healthy Meetings and Vending to Improve Workplace
Wellness, June 4, 2014, 10:30am - 12pm.
END_TEXT
}
    communications << { date: '41794', duration: '90', contact_type: 'Webinar',  organization_type: 'Participating City', contacts: "Mary Puddy at City of Prineville, ", cities: "Prineville, OR", staff: "Beth Kaye", topics: "", notes: <<END_TEXT
Attended webinar: Healthy Meetings and Vending to Improve Workplace
Wellness, June 4, 2014, 10:30am - 12pm
END_TEXT
}
    communications << { date: '41794', duration: '90', contact_type: 'Webinar',  organization_type: 'Participating City', contacts: "Katie Babits at City of Veneta, Aug 07 2014", cities: "Veneta, OR", staff: "Beth Kaye", topics: "", notes: <<END_TEXT
Attended Healthy Meetings and Vending to Improve Workplace Wellness,
June 4, 2014, 10:30am - 12pm.
END_TEXT
}
    communications << { date: '41794', duration: '90', contact_type: 'Webinar',  organization_type: 'Statewide Organization', contacts: "Inge Aldersebaes at OEA Choice Trust, ", cities: "", staff: "Beth Kaye", topics: "", notes: <<END_TEXT
Webinar title: Healthy Meetings and Vending to Improve Workplace
Wellness. June 4, 2014, 10:30am - 12pm
END_TEXT
}
    communications << { date: '41794', duration: '90', contact_type: 'Webinar',  organization_type: 'Participating City', contacts: "Jim Loeffler at City of Oregon City, ", cities: "Oregon City, OR", staff: "Beth Kaye", topics: "", notes: <<END_TEXT
Webinar title: Healthy Meetings and Vending to Improve Workplace
Wellness. June 4, 2014, 10:30am - 12pm
END_TEXT
}
    communications << { date: '41722', duration: '5', contact_type: 'E-mail Exchange',  organization_type: 'Other', contacts: "Bob Crocker at City of Beaverton, Mar 31 2014", cities: "Beaverton, OR", staff: "Beth Kaye, Karli Thorstenson", topics: "", notes: <<END_TEXT
I provided Bob with W@W policy documents in Word format.
END_TEXT
}
    communications << { date: '41694', duration: '60', contact_type: 'E-mail Exchange',  organization_type: 'Participating City', contacts: "Robert Crocker at City of Beaverton, Mar 20 2014", cities: "Beaverton, OR", staff: "Beth Kaye, Dawn Powell", topics: "Introduction To HEAL Cities, Workplace Wellness", notes: <<END_TEXT
Researched and sent Bob info re Instant Recess. &nbsp;Also sent Bob info
about use of HEAL Cities logo and process to be designated a HEAL City. &nbsp;
END_TEXT
}
    communications << { date: '41690', duration: '90', contact_type: 'In-person Meeting',  organization_type: 'Participating City', contacts: "Robert Crocker at City of Beaverton, Mar 20 2014", cities: "Beaverton, OR", staff: "Beth Kaye", topics: "Introduction To HEAL Cities, Workplace Wellness", notes: <<END_TEXT
Met with Bob Crocker at Beaverton City Hall, went over the basics of the
HEAL Cities program with him and gave him a full packet. &nbsp;<div>
  <br /></div>
<div>Went through the on-line assessment at WellnessatWorkOregon.org and
  instructed Bob about how to complete it with the Wellness Committee.
  &nbsp;There is a City Wellness Committee -- not very well utilized.</div>
<div>
  <br /></div>
<div>Did an inventory of the type of Wellness @ Work policies Beaverton
  currently had. &nbsp;No Smoking campus. &nbsp;Benefits for smoking
  cessation. &nbsp;Transit rider subsidies. &nbsp;Bike parking.
  &nbsp;There are some clusters of staff that go out walking together. &nbsp;</div>
<div>
  <br /></div>
<div>Bob says there is leadership support for change. &nbsp;Mayor is
  active in League of Oregon Cities. &nbsp;Unclear to me how deep
  support is at the City Manager and Department Director level, or among
  middle management. &nbsp;Employee benefits and safety are the
  responsibility of other staffers -- not coordinated, no clear plan to
  take a coordinated approach. &nbsp;(I suggested Total Worker Health Approach.)</div>
<div>
  <br /></div>
<div>Agreed that Bob would do the Assessment with the Wellness committee
  and that we would meet again in March to discuss policies that
  Beaverton might adopt.&nbsp;</div>
END_TEXT
}
    communications << { date: '41718', duration: '120', contact_type: 'In-person Meeting',  organization_type: 'Participating City', contacts: "Robert Crocker at City of Beaverton, Mar 20 2014", cities: "Beaverton, OR", staff: "Beth Kaye", topics: "Access to Healthy Food Options, Workplace Wellness, Coordination with County Health Departments", notes: <<END_TEXT
This was my second meeting with Bob Crocker. &nbsp;At the first meeting,
we reviewed the Wellness@Work assessment on the wellnessatworkoregon.org
website. &nbsp;This time, we reviewed the results of the assessment. &nbsp;<div>
  <br /></div>
<div>Key issues:</div>
<div>Wellness Committee is low-energy, uninspired, not empowered</div>
<div>Current culture in some departments resists even a stretch break ==
  will need to shift the culture in a major way. &nbsp;</div>
<div>No employee evaluations will make it more difficult to change
  culture because more difficult to reward pro-wellness staff and to
  sanction staff that resist change</div>
<div>Anticipate resistance from Blind Vendors to changing contents of
  vending machine.</div>
<div>
  <br /></div>
<div>BK made a variety of suggestions for shifting culture, emphasizing
  leadership and buy-in from the top and active, empowered participation
  from employees. &nbsp;Suggested that Bob put together a wellness plan
  that incorporates current positive-wellness oriented practices and new
  suggestions. &nbsp;Suggested that he consult with KP and Moda Wellness
  staff. &nbsp;Offered to return to talk with Wellness Committee. &nbsp;</div>
END_TEXT
}
    communications << { date: '41709', duration: '20', contact_type: 'E-mail Exchange',  organization_type: 'Statewide Organization', contacts: "Megan Kemple at National Farm to School Network, ", cities: "Athena, OR, Weston, OR", staff: "Beth Kaye", topics: "Access to Healthy Food Options, Other", notes: <<END_TEXT
I asked Megan for resources for Athena-Weston as they explore initiating
a F2S program. &nbsp;I specifically asked about other NE Oregon cities
that have F2S.&nbsp;
END_TEXT
}
    communications << { date: '41709', duration: '15', contact_type: 'Telephone Call',  organization_type: 'Participating City', contacts: "Jennifer Spurgeon at Weston City COuncil, Oct 17 2013", cities: "Weston, OR", staff: "Beth Kaye", topics: "Access to Healthy Food Options, Other", notes: <<END_TEXT
Jennifer was able to listen in on the F2S webinar and found it helpful.
&nbsp;She will coordinate with rest of Athena/Weston team and keep me posted.&nbsp;<div>
  <br /></div>
<div>Jennifer had questions re whether an Assisted Living facility could
  incorporate a garden, and use produce from the garden to supply food
  to the residents. &nbsp;I suggested that she call Oatfield Estates,
  also suggested mixed age activities at the garden to enrich lives of
  seniors and young children. &nbsp; I will also suggest the Health
  Dept. &nbsp;</div>
<div>
  <br /></div>
END_TEXT
}
    communications << { date: '41698', duration: '45', contact_type: 'E-mail Exchange',  organization_type: 'Participating City', contacts: "John Walsh at City of St. Helens, ", cities: "St. Helens, OR", staff: "Beth Kaye", topics: "Introduction To HEAL Cities", notes: <<END_TEXT
requested meeting in March 2014
END_TEXT
}
    communications << { date: '41670', duration: '90', contact_type: 'E-mail Exchange',  organization_type: 'Participating City', contacts: "Jennifer Dimsho at City of St. Helens/RARE AMericorps, Feb 28 2014", cities: "St. Helens, OR", staff: "Beth Kaye", topics: "Introduction To HEAL Cities, Land Use & Transportation, Coordination with County Health Departments", notes: <<END_TEXT
<span
  style=""color: rgb(31,73,125);font-family: Calibri , sans-serif;font-size: 15.0px;background-color: rgb(255,255,255);"">We
  focused on Parks Plan now underway</span>
<div>
  <span style=""color: rgb(31,73,125);font-family: Calibri , sans-serif;font-size: 15.0px;background-color: rgb(255,255,255);"">
    <br /></span></div>
<div>
  <span
    style=""color: rgb(31,73,125);font-family: Calibri , sans-serif;font-size: 15.0px;background-color: rgb(255,255,255);"">I
    provided resources &nbsp;and evidence-based practice on striping
    walking paths.</span></div>
<div>
  <span style=""color: rgb(31,73,125);font-family: Calibri , sans-serif;font-size: 15.0px;background-color: rgb(255,255,255);"">
    <br /></span></div>
<div>
  <span
    style=""color: rgb(31,73,125);font-family: Calibri , sans-serif;font-size: 15.0px;background-color: rgb(255,255,255);"">To
    join HEAL Cities, we &nbsp;would need &nbsp;to meet with John Walsh,
    City Administrator</span>
  <div>
    <span style=""color: rgb(31,73,125);font-family: Calibri , sans-serif;font-size: 15.0px;background-color: rgb(255,255,255);"">
      <br /></span></div>
  <div>
    <span
      style=""color: rgb(31,73,125);font-family: Calibri , sans-serif;font-size: 15.0px;background-color: rgb(255,255,255);"">She
      works for John Walsh and with City Planner, Jacob Graichen,</span></div></div>
END_TEXT
}
    communications << { date: '41698', duration: '5', contact_type: 'E-mail Exchange',  organization_type: 'Participating City', contacts: "Jennifer Spurgeon at Weston City COuncil, Oct 17 2013", cities: "Athena, OR, Weston, OR", staff: "Beth Kaye", topics: "Access to Healthy Food Options, Other", notes: <<END_TEXT
Let JMS know about Friends of Family Farmers listeining sessions coming
to NE Oregon, because Family Farmers potentially would make good F2S partners.
END_TEXT
}
    communications << { date: '41698', duration: '5', contact_type: 'E-mail Exchange',  organization_type: 'Participating City', contacts: "Jennifer Spurgeon at Weston City COuncil, Oct 17 2013", cities: "Athena, OR, Weston, OR", staff: "Beth Kaye", topics: "Access to Healthy Food Options, Other", notes: <<END_TEXT
Let JMS know about Friends of Family Farmers listeining sessions coming
to NE Oregon, because Family Farmers potentially would make good F2S partners.
END_TEXT
}
    communications << { date: '41698', duration: '35', contact_type: 'Telephone Call',  organization_type: 'Participating City', contacts: "Jennifer Spurgeon at Weston City COuncil, Oct 17 2013", cities: "Athena, OR, Weston, OR", staff: "Beth Kaye", topics: "Introduction To HEAL Cities, Land Use & Transportation, Access to Healthy Food Options, Coordination with County Health Departments, Hunger and Obesity", notes: <<END_TEXT
Will meet at 4 at Weston Memorial Hall, Basement, just up the hill from
the Post Office. &nbsp;<div>
  <br /></div>
<div>Expect about 15 people.</div>
<div>
  <br /></div>
<div>Has TGM grant&nbsp;</div>
<div>
  <br /></div>
<div>
  <div
    style=""color: rgb(34,34,34);font-family: HelveticaNeue , ""Helvetica Neue"" , Helvetica , Arial , ""Lucida Grande"" , sans-serif;font-size: 16.0px;background-color: rgb(255,255,255);"">City Councils</div>
  <div
    style=""color: rgb(34,34,34);font-family: HelveticaNeue , ""Helvetica Neue"" , Helvetica , Arial , ""Lucida Grande"" , sans-serif;font-size: 16.0px;background-color: rgb(255,255,255);"">Food
    Bank leaders</div>
  <div
    style=""color: rgb(34,34,34);font-family: HelveticaNeue , ""Helvetica Neue"" , Helvetica , Arial , ""Lucida Grande"" , sans-serif;font-size: 16.0px;background-color: rgb(255,255,255);"">Weston
    Middle School Principal</div>
  <div
    style=""color: rgb(34,34,34);font-family: HelveticaNeue , ""Helvetica Neue"" , Helvetica , Arial , ""Lucida Grande"" , sans-serif;font-size: 16.0px;background-color: rgb(255,255,255);"">Weston-McEwen
    Foods Class&nbsp;and Ag teachers (not confirmed)</div>
  <div
    style=""color: rgb(34,34,34);font-family: HelveticaNeue , ""Helvetica Neue"" , Helvetica , Arial , ""Lucida Grande"" , sans-serif;font-size: 16.0px;background-color: rgb(255,255,255);"">Lamb-Weston/Smith
    Frozen Foods CEO</div>
  <div
    style=""color: rgb(34,34,34);font-family: HelveticaNeue , ""Helvetica Neue"" , Helvetica , Arial , ""Lucida Grande"" , sans-serif;font-size: 16.0px;background-color: rgb(255,255,255);"">Church
    leaders with community or outreach meals</div>
  <div
    style=""color: rgb(34,34,34);font-family: HelveticaNeue , ""Helvetica Neue"" , Helvetica , Arial , ""Lucida Grande"" , sans-serif;font-size: 16.0px;background-color: rgb(255,255,255);"">Local
    store owners (not confirmed)</div>
  <div
    style=""color: rgb(34,34,34);font-family: HelveticaNeue , ""Helvetica Neue"" , Helvetica , Arial , ""Lucida Grande"" , sans-serif;font-size: 16.0px;background-color: rgb(255,255,255);"">Athena
    Saturday Market leaders</div></div>
<div style=""color: rgb(34,34,34);font-family: HelveticaNeue , ""Helvetica Neue"" , Helvetica , Arial , ""Lucida Grande"" , sans-serif;font-size: 16.0px;background-color: rgb(255,255,255);"">
  <br /></div>
<div
  style=""color: rgb(34,34,34);font-family: HelveticaNeue , ""Helvetica Neue"" , Helvetica , Arial , ""Lucida Grande"" , sans-serif;font-size: 16.0px;background-color: rgb(255,255,255);"">What
  are they expecting to hear? &nbsp;Have kept it vague. &nbsp;Gave them
  website and info that communities are food deserts and they can
  transmit information and drum up support. &nbsp;</div>
<div style=""color: rgb(34,34,34);font-family: HelveticaNeue , ""Helvetica Neue"" , Helvetica , Arial , ""Lucida Grande"" , sans-serif;font-size: 16.0px;background-color: rgb(255,255,255);"">
  <br /></div>
<div
  style=""color: rgb(34,34,34);font-family: HelveticaNeue , ""Helvetica Neue"" , Helvetica , Arial , ""Lucida Grande"" , sans-serif;font-size: 16.0px;background-color: rgb(255,255,255);"">JMS
  would like there to be general info</div>
<div
  style=""color: rgb(34,34,34);font-family: HelveticaNeue , ""Helvetica Neue"" , Helvetica , Arial , ""Lucida Grande"" , sans-serif;font-size: 16.0px;background-color: rgb(255,255,255);"">A
  sense of whether there is a fire lit - critical mass</div>
<div
  style=""color: rgb(34,34,34);font-family: HelveticaNeue , ""Helvetica Neue"" , Helvetica , Arial , ""Lucida Grande"" , sans-serif;font-size: 16.0px;background-color: rgb(255,255,255);"">It
  has been going for 6 months</div>
<div
  style=""color: rgb(34,34,34);font-family: HelveticaNeue , ""Helvetica Neue"" , Helvetica , Arial , ""Lucida Grande"" , sans-serif;font-size: 16.0px;background-color: rgb(255,255,255);"">Beth
  to check F&amp;RL percentages&nbsp;</div>
<div style=""color: rgb(34,34,34);font-family: HelveticaNeue , ""Helvetica Neue"" , Helvetica , Arial , ""Lucida Grande"" , sans-serif;font-size: 16.0px;background-color: rgb(255,255,255);"">
  <br /></div>
<div
  style=""color: rgb(34,34,34);font-family: HelveticaNeue , ""Helvetica Neue"" , Helvetica , Arial , ""Lucida Grande"" , sans-serif;font-size: 16.0px;background-color: rgb(255,255,255);"">Faith
  based folks very positive</div>
<div
  style=""color: rgb(34,34,34);font-family: HelveticaNeue , ""Helvetica Neue"" , Helvetica , Arial , ""Lucida Grande"" , sans-serif;font-size: 16.0px;background-color: rgb(255,255,255);"">Food
  suppliers -- yeah, we have been down this road</div>
<div style=""color: rgb(34,34,34);font-family: HelveticaNeue , ""Helvetica Neue"" , Helvetica , Arial , ""Lucida Grande"" , sans-serif;font-size: 16.0px;background-color: rgb(255,255,255);"">
  <br /></div>
<div
  style=""color: rgb(34,34,34);font-family: HelveticaNeue , ""Helvetica Neue"" , Helvetica , Arial , ""Lucida Grande"" , sans-serif;font-size: 16.0px;background-color: rgb(255,255,255);"">People
  shop at Mini-mart/Gas Station in Weston</div>
<div
  style=""color: rgb(34,34,34);font-family: HelveticaNeue , ""Helvetica Neue"" , Helvetica , Arial , ""Lucida Grande"" , sans-serif;font-size: 16.0px;background-color: rgb(255,255,255);"">Similar
  in Athena. &nbsp;Athena also has a small grocery. &nbsp;</div>
<div
  style=""color: rgb(34,34,34);font-family: HelveticaNeue , ""Helvetica Neue"" , Helvetica , Arial , ""Lucida Grande"" , sans-serif;font-size: 16.0px;background-color: rgb(255,255,255);"">Nearest
  fresh vegetables Milton-Freewater, 10 miles from Weston, 14 from
  Athena. Then Walla-Walla and Pendleton. &nbsp;</div>
<div
  style=""color: rgb(34,34,34);font-family: HelveticaNeue , ""Helvetica Neue"" , Helvetica , Arial , ""Lucida Grande"" , sans-serif;font-size: 16.0px;background-color: rgb(255,255,255);"">Umatilla
  tribe has a free bus service running all over E Oregon between
  Pendleton, Walla Walla, Hermiston and LaGrande</div>
<div style=""color: rgb(34,34,34);font-family: HelveticaNeue , ""Helvetica Neue"" , Helvetica , Arial , ""Lucida Grande"" , sans-serif;font-size: 16.0px;background-color: rgb(255,255,255);"">
  <br /></div>
<div
  style=""color: rgb(34,34,34);font-family: HelveticaNeue , ""Helvetica Neue"" , Helvetica , Arial , ""Lucida Grande"" , sans-serif;font-size: 16.0px;background-color: rgb(255,255,255);"">Pea
  harvest is a big deal locallly - has been for centuries</div>
<div
  style=""color: rgb(34,34,34);font-family: HelveticaNeue , ""Helvetica Neue"" , Helvetica , Arial , ""Lucida Grande"" , sans-serif;font-size: 16.0px;background-color: rgb(255,255,255);"">Weevil
  crew - 14-15 year old kids sweep for bugs (small link with harvest)
  &nbsp; no tie to food</div>
<div
  style=""color: rgb(34,34,34);font-family: HelveticaNeue , ""Helvetica Neue"" , Helvetica , Arial , ""Lucida Grande"" , sans-serif;font-size: 16.0px;background-color: rgb(255,255,255);"">Seasonal
  hires at Smith</div>
<div style=""color: rgb(34,34,34);font-family: HelveticaNeue , ""Helvetica Neue"" , Helvetica , Arial , ""Lucida Grande"" , sans-serif;font-size: 16.0px;background-color: rgb(255,255,255);"">
  <br /></div>
<div style=""color: rgb(34,34,34);font-family: HelveticaNeue , ""Helvetica Neue"" , Helvetica , Arial , ""Lucida Grande"" , sans-serif;font-size: 16.0px;background-color: rgb(255,255,255);"">Wheat</div>
<div style=""color: rgb(34,34,34);font-family: HelveticaNeue , ""Helvetica Neue"" , Helvetica , Arial , ""Lucida Grande"" , sans-serif;font-size: 16.0px;background-color: rgb(255,255,255);"">Corn</div>
<div style=""color: rgb(34,34,34);font-family: HelveticaNeue , ""Helvetica Neue"" , Helvetica , Arial , ""Lucida Grande"" , sans-serif;font-size: 16.0px;background-color: rgb(255,255,255);"">Carrots</div>
<div style=""color: rgb(34,34,34);font-family: HelveticaNeue , ""Helvetica Neue"" , Helvetica , Arial , ""Lucida Grande"" , sans-serif;font-size: 16.0px;background-color: rgb(255,255,255);"">Onions</div>
<div
  style=""color: rgb(34,34,34);font-family: HelveticaNeue , ""Helvetica Neue"" , Helvetica , Arial , ""Lucida Grande"" , sans-serif;font-size: 16.0px;background-color: rgb(255,255,255);"">Blueberries
  (Milton Freewater)</div>
<div
  style=""color: rgb(34,34,34);font-family: HelveticaNeue , ""Helvetica Neue"" , Helvetica , Arial , ""Lucida Grande"" , sans-serif;font-size: 16.0px;background-color: rgb(255,255,255);"">Walla
  Walla and Pendleton have large Farmer Markets</div>
<div
  style=""color: rgb(34,34,34);font-family: HelveticaNeue , ""Helvetica Neue"" , Helvetica , Arial , ""Lucida Grande"" , sans-serif;font-size: 16.0px;background-color: rgb(255,255,255);"">Distribution issues</div>
<div
  style=""color: rgb(34,34,34);font-family: HelveticaNeue , ""Helvetica Neue"" , Helvetica , Arial , ""Lucida Grande"" , sans-serif;font-size: 16.0px;background-color: rgb(255,255,255);"">Storage issues</div>
<div style=""color: rgb(34,34,34);font-family: HelveticaNeue , ""Helvetica Neue"" , Helvetica , Arial , ""Lucida Grande"" , sans-serif;font-size: 16.0px;background-color: rgb(255,255,255);"">
  <br /></div>
<div
  style=""color: rgb(34,34,34);font-family: HelveticaNeue , ""Helvetica Neue"" , Helvetica , Arial , ""Lucida Grande"" , sans-serif;font-size: 16.0px;background-color: rgb(255,255,255);"">Empowerment message&nbsp;</div>
<div
  style=""color: rgb(34,34,34);font-family: HelveticaNeue , ""Helvetica Neue"" , Helvetica , Arial , ""Lucida Grande"" , sans-serif;font-size: 16.0px;background-color: rgb(255,255,255);"">&nbsp;I
  believe in you, I believe you can solve a problem</div>
<div style=""color: rgb(34,34,34);font-family: HelveticaNeue , ""Helvetica Neue"" , Helvetica , Arial , ""Lucida Grande"" , sans-serif;font-size: 16.0px;background-color: rgb(255,255,255);"">
  <br /></div>
<div style=""color: rgb(34,34,34);font-family: HelveticaNeue , ""Helvetica Neue"" , Helvetica , Arial , ""Lucida Grande"" , sans-serif;font-size: 16.0px;background-color: rgb(255,255,255);"">
  <br /></div>
<div
  style=""color: rgb(34,34,34);font-family: HelveticaNeue , ""Helvetica Neue"" , Helvetica , Arial , ""Lucida Grande"" , sans-serif;font-size: 16.0px;background-color: rgb(255,255,255);"">Pool
  in Athena</div>
<div style=""color: rgb(34,34,34);font-family: HelveticaNeue , ""Helvetica Neue"" , Helvetica , Arial , ""Lucida Grande"" , sans-serif;font-size: 16.0px;background-color: rgb(255,255,255);"">
  <br /></div>
<div
  style=""color: rgb(34,34,34);font-family: HelveticaNeue , ""Helvetica Neue"" , Helvetica , Arial , ""Lucida Grande"" , sans-serif;font-size: 16.0px;background-color: rgb(255,255,255);"">Would
  like to create a core group that would be willing to meet</div>
<div
  style=""color: rgb(34,34,34);font-family: HelveticaNeue , ""Helvetica Neue"" , Helvetica , Arial , ""Lucida Grande"" , sans-serif;font-size: 16.0px;background-color: rgb(255,255,255);"">Bbrainstorm
  a vision</div>
<div
  style=""color: rgb(34,34,34);font-family: HelveticaNeue , ""Helvetica Neue"" , Helvetica , Arial , ""Lucida Grande"" , sans-serif;font-size: 16.0px;background-color: rgb(255,255,255);"">Think
  about leveraging local resources</div>
<div style=""color: rgb(34,34,34);font-family: HelveticaNeue , ""Helvetica Neue"" , Helvetica , Arial , ""Lucida Grande"" , sans-serif;font-size: 16.0px;background-color: rgb(255,255,255);"">
  <br /></div>
<div style=""color: rgb(34,34,34);font-family: HelveticaNeue , ""Helvetica Neue"" , Helvetica , Arial , ""Lucida Grande"" , sans-serif;font-size: 16.0px;background-color: rgb(255,255,255);"">
  <br /></div>
<div style=""color: rgb(34,34,34);font-family: HelveticaNeue , ""Helvetica Neue"" , Helvetica , Arial , ""Lucida Grande"" , sans-serif;font-size: 16.0px;background-color: rgb(255,255,255);"">
  <br /></div>
<div style=""color: rgb(34,34,34);font-family: HelveticaNeue , ""Helvetica Neue"" , Helvetica , Arial , ""Lucida Grande"" , sans-serif;font-size: 16.0px;background-color: rgb(255,255,255);"">
  <br /></div>
<div style=""color: rgb(34,34,34);font-family: HelveticaNeue , ""Helvetica Neue"" , Helvetica , Arial , ""Lucida Grande"" , sans-serif;font-size: 16.0px;background-color: rgb(255,255,255);"">
  <br /></div>
<div style=""color: rgb(34,34,34);font-family: HelveticaNeue , ""Helvetica Neue"" , Helvetica , Arial , ""Lucida Grande"" , sans-serif;font-size: 16.0px;background-color: rgb(255,255,255);"">
  <br /></div>
<div style=""color: rgb(34,34,34);font-family: HelveticaNeue , ""Helvetica Neue"" , Helvetica , Arial , ""Lucida Grande"" , sans-serif;font-size: 16.0px;background-color: rgb(255,255,255);"">
  <br /></div>
<div style=""color: rgb(34,34,34);font-family: HelveticaNeue , ""Helvetica Neue"" , Helvetica , Arial , ""Lucida Grande"" , sans-serif;font-size: 16.0px;background-color: rgb(255,255,255);"">
  <br /></div>
<div style=""color: rgb(34,34,34);font-family: HelveticaNeue , ""Helvetica Neue"" , Helvetica , Arial , ""Lucida Grande"" , sans-serif;font-size: 16.0px;background-color: rgb(255,255,255);"">
  <br /></div>
<div style=""color: rgb(34,34,34);font-family: HelveticaNeue , ""Helvetica Neue"" , Helvetica , Arial , ""Lucida Grande"" , sans-serif;font-size: 16.0px;background-color: rgb(255,255,255);"">
  <br /></div>
<div style=""color: rgb(34,34,34);font-family: HelveticaNeue , ""Helvetica Neue"" , Helvetica , Arial , ""Lucida Grande"" , sans-serif;font-size: 16.0px;background-color: rgb(255,255,255);"">
  <br /></div>
<div style=""color: rgb(34,34,34);font-family: HelveticaNeue , ""Helvetica Neue"" , Helvetica , Arial , ""Lucida Grande"" , sans-serif;font-size: 16.0px;background-color: rgb(255,255,255);"">
  <br /></div>
<div style=""color: rgb(34,34,34);font-family: HelveticaNeue , ""Helvetica Neue"" , Helvetica , Arial , ""Lucida Grande"" , sans-serif;font-size: 16.0px;background-color: rgb(255,255,255);"">
  <br /></div>
<div style=""color: rgb(34,34,34);font-family: HelveticaNeue , ""Helvetica Neue"" , Helvetica , Arial , ""Lucida Grande"" , sans-serif;font-size: 16.0px;background-color: rgb(255,255,255);"">
  <br /></div>
<div style=""color: rgb(34,34,34);font-family: HelveticaNeue , ""Helvetica Neue"" , Helvetica , Arial , ""Lucida Grande"" , sans-serif;font-size: 16.0px;background-color: rgb(255,255,255);"">
  <br /></div>
<div style=""color: rgb(34,34,34);font-family: HelveticaNeue , ""Helvetica Neue"" , Helvetica , Arial , ""Lucida Grande"" , sans-serif;font-size: 16.0px;background-color: rgb(255,255,255);"">
  <br /></div>
<div style=""color: rgb(34,34,34);font-family: HelveticaNeue , ""Helvetica Neue"" , Helvetica , Arial , ""Lucida Grande"" , sans-serif;font-size: 16.0px;background-color: rgb(255,255,255);"">
  <br /></div>
<div style=""color: rgb(34,34,34);font-family: HelveticaNeue , ""Helvetica Neue"" , Helvetica , Arial , ""Lucida Grande"" , sans-serif;font-size: 16.0px;background-color: rgb(255,255,255);"">
  <br /></div>
<div style=""color: rgb(34,34,34);font-family: HelveticaNeue , ""Helvetica Neue"" , Helvetica , Arial , ""Lucida Grande"" , sans-serif;font-size: 16.0px;background-color: rgb(255,255,255);"">
  <br /></div>
<div>
  <br /></div>
END_TEXT
}
    communications << { date: '41666', duration: '10', contact_type: 'Telephone Call',  organization_type: 'Participating City', contacts: "Linda Norris at City of Salem, , Julie DuChars at City of Salem, ", cities: "Salem, OR", staff: "Beth Kaye", topics: "Other", notes: <<END_TEXT
Left VM following up on e-mail of 1/13/14
END_TEXT
}
    communications << { date: '41666', duration: '10', contact_type: 'E-mail Exchange',  organization_type: 'Participating City', contacts: "Scott Burge at City of Scappoose, ", cities: "Scappoose, OR", staff: "Beth Kaye", topics: "Other", notes: <<END_TEXT
Contacted Scott to arrange a site visit. &nbsp;He referred me to Don
Otterman, the new Interim City Manager. &nbsp;
END_TEXT
}
    communications << { date: '41666', duration: '10', contact_type: 'Telephone Call',  organization_type: 'Participating City', contacts: "Don Otterman at City of Scappoose, ", cities: "Scappoose, OR", staff: "Beth Kaye", topics: "Introduction To HEAL Cities, Other", notes: <<END_TEXT
Discussed arranging a tour of Scappoose. &nbsp;Don O is new to City
(less than 30 days). &nbsp;Very involved now with local politics.
&nbsp;Will get back to me. &nbsp;
END_TEXT
}
    communications << { date: '41666', duration: '10', contact_type: 'E-mail Exchange',  organization_type: 'University', contacts: "Beret Halverson, MPA at OSU Extension Family & Community Health Clackamas, ", cities: "Estacada, OR, Molalla, OR, Oregon City, OR", staff: "Beth Kaye", topics: "Introduction To HEAL Cities, Access to Healthy Food Options, Other", notes: <<END_TEXT
Arranged a meeting for February 3rd with Beret, Erin (the GROW reserach
assistant) and Deborah John. &nbsp;
END_TEXT
}
    communications << { date: '41648', duration: '10', contact_type: 'E-mail Exchange',  organization_type: 'Hospital', contacts: "Marilyn Kennelly at Samaritan Health Foundation, ", cities: "Corvallis, OR, Lebanon, OR, Tangent, OR", staff: "Beth Kaye", topics: "Other", notes: <<END_TEXT
Coordination for 2/5 Samaritan Summit
END_TEXT
}
    communications << { date: '41648', duration: '10', contact_type: 'Telephone Call',  organization_type: 'KP', contacts: "Rachel E Burdon at Kaiser Permanente Community Benefit, ", cities: "Falls City, OR", staff: "Beth Kaye", topics: "Other", notes: <<END_TEXT
Coordination of pick up of donated dental supplies for Falls City Residents
END_TEXT
}
    communications << { date: '41648', duration: '10', contact_type: 'Telephone Call',  organization_type: 'Participating City', contacts: "Amber Mathiesen, CFC at , ", cities: "Falls City, OR", staff: "Beth Kaye", topics: "Other", notes: <<END_TEXT
Coordinating deliver of donated dental supplies from KP
END_TEXT
}
    communications << { date: '41648', duration: '10', contact_type: 'E-mail Exchange',  organization_type: 'Statewide Organization', contacts: "Tonya Johnson at OSU Extension Service, ", cities: "", staff: "Beth Kaye", topics: "Other", notes: <<END_TEXT
Scheduled meeting to coordinate with Extension
END_TEXT
}
    communications << { date: '41646', duration: '99', contact_type: 'In-person Meeting',  organization_type: 'Regional Organization', contacts: "Janice Naimy at YMCA of Marion & Polk County, , Jessica Ickes at Family YMCA of Marion & Polk Counties, , Arturo Vargas at United Way of the mid-Willamette Valley, ", cities: "", staff: "Beth Kaye", topics: "Other, Coordination with County Health Departments", notes: <<END_TEXT
Joint meeting of Pioneering Healthy Communities -policy &amp; environmental changes &nbsp;and CTG team&nbsp;<div><br></div><div>New CTG grant also covers Marion &amp; Polk counties</div><div><br></div><div>After school</div><div>Early childhood</div><div>Community</div><div>Neighborhoods&nbsp;</div><div>Schools</div><div>Worksites</div><div>Clinic to community</div><div><br></div><div>IAN Dixon-macDonald at Marion-Polk Food Share</div><div>Tonya Johnson@ OSU Extension</div><div>Jeanine Steiss - works with local Head Start&nbsp;</div><div>Kim Abraham -community member</div><div>Rhoda Jansey - Woodburn Pediatric Clinic</div><div>Mary Beth ??? - funded by KP</div>
END_TEXT
}
    communications << { date: '41590', duration: '45', contact_type: 'Telephone Call',  organization_type: 'County Health Department', contacts: "Pam Hutchinson at Marion COunty Health Department, , Jennifer Eskridge at Marion County HD, ", cities: "Aurora, OR, Donald, OR, Gervais, OR, Hubbard, OR, Mount Angel, OR, Salem, OR, Silverton, OR, Woodburn, OR", staff: "Beth Kaye", topics: "Coordination with County Health Departments", notes: <<END_TEXT
Silverton went for HEAL Designation. &nbsp;&nbsp;<div><br></div><div>Emily from Marion County HD is rep to PHC meetings; Pam sits on the PHC Board. &nbsp; I suggested that Pam ask about inclusivity, and geographic scope.</div><div><br></div><div><br></div><div>FOr info about Corner Store Program, go to Marion County HD home page, click on programs and services/prevention services/corner stores</div><div><br></div><div>Hubbard &nbsp;- site of healthy corner store project</div><div>4 in Woodburn</div><div>1 in Mt. Angel</div><div><br></div><div>Big story about corner stores on the front page of the statesman journal - picked up for n atonal distribution</div><div><br></div><div>Salem has a TF Saturday Market on State Property</div><div>Has also TF policy applied&nbsp;</div>
END_TEXT
}
    communications << { date: '41590', duration: '30', contact_type: 'Telephone Call',  organization_type: 'Evaluator', contacts: "Ronda Zakocs at Insight Evaluation, ", cities: "", staff: "Beth Kaye", topics: "Evaluation", notes: <<END_TEXT
<div>Abandon original concept:we learned from HEAL Cities gathering that e-surveys have low response rate, and that data furnished was often inaccurate</div><div><br></div>New concept: &nbsp;Interviewing designated cities.<div><br></div><div>Download Excel tracking spreadsheet</div><div><br></div><div>In each city we need a knowledgeable informant</div><div><br></div><div>Who should do interviews? &nbsp;Amy or another city planner type- open ended and close-ended questions</div><div><br></div><div>Most important fifteen policies: behave it, in process, contemplating, nope</div><div><br></div><div>Any other questions</div><div><br></div><div>Where should we keep the data? &nbsp;</div><div><br></div><div>Qs for Noelle</div><div><br></div><div>Who should do policy achievement interviews? &nbsp;Want to use first 5 to generate model interview</div><div><br></div><div>Sooner rather than later</div><div>Refine questions about the policy</div><div>Input on top 15 policies</div><div><br></div><div>Ronda will look at VA and CA instruments, develop interview template</div><div>Ronda will also Zoho for fitness for entering interview application</div>
END_TEXT
}
    communications << { date: '41583', duration: '60', contact_type: 'E-mail Exchange',  organization_type: 'Participating City', contacts: "Jim Hough at Portland State University, , Jim Fairchild at , , Ron Foggin at City of Dallas, , Emily Gagner at City of Dallas, ", cities: "Dallas, OR", staff: "Beth Kaye", topics: "Land Use & Transportation, Shared Use, Workplace Wellness, Other", notes: <<END_TEXT
Follow up with Jim, Emily, and Ron on meeting 11/4 re 12/18 public meeting to join campaign. &nbsp; Sent draft Resolution, Nutrition policy, and W@w one pager. &nbsp;
END_TEXT
}
    communications << { date: '41583', duration: '60', contact_type: 'E-mail Exchange',  organization_type: 'Participating City', contacts: "Karin Johnson at City of Independence, , David Clyne at City of Independence, , Michael Danko at City of Independence, , Gloria Butsch at City of Independence, , Shawn Irvine at City of Independence, ", cities: "Independence, OR", staff: "Beth Kaye, Dawn Powell, Steve White", topics: "Land Use & Transportation, Access to Healthy Food Options, Workplace Wellness, Other", notes: <<END_TEXT
Sent follow up to 10/28 meeting. &nbsp;Invited Gloria to call Dawn Robbins. &nbsp;Invited Michael Danko to call Steve White re walk/bike connectivity. &nbsp;Suggested that David look at Putnam, Missouri community effort. &nbsp;Attached draft Resolution for Karin and forwarded Healthy Food Guidelines to Karin and Gloria. &nbsp;
END_TEXT
}
    communications << { date: '41431', duration: '60', contact_type: 'Webinar',  organization_type: 'Other', contacts: "Misha Peel at Polk County HD, , Marilyn Carter at Douglas County HD, , Molly Mattick at Curry Community  Health Department, , Jessica Connor at Coquille Indian Tribe, , Robb Hutson at Rede Group, , Katherine Carlson at , , Shelley Wight at Morrow County Health Department, , Susanne Eleson at NWSDS, , Kirstens Ingersoll at Clackamas County PHD, , Carly Rochocki at , , Ashley Baggett at The Public Health Foundation of Columbia County, , Kathy Payne at City of St Helens, , Dawn Bennett at , , Sarah Ballin-Ross at Linn County Public Health, , Carla Bennett at Washington County, , Jan Noland at City County Insurance Services, , Stephanie Young-Peterson at Rede Group, , Janet Newport at City of Tualatin, , James Becraft at , , Mac Gillespie at Benton County, , Meghan Haggard at Yamhill County Public Health, , Jim Loeffler at City of Oregon City, , Johanna Peerenboon at Benton County Health Department, , Diana Moffat at Local Government Personnel Institute, , Jenica Palmer-Phillips at OHA, , Ann Steward at City of Florence, , Mary Meyer at CIS, , Zachary Fund at VISTA AmeriCorps, , Belinda Ballah at Hood River Commission on Children and Families, , Erin Sedlacek at Linn County, , Kim La Croix at Oregon Health Authority, , Beth Hadley at Lake County Public Health, , Molly Jesperson at Klamath County, , Merritt Driscoll at Klamath Tribal Health, , Jennifer Jordan at Lane County, , Laura Stiltanen at Douglas county Public Health, , Lynne Conrads at City of Sisters, , Therese Madrigal at Deschutes County, , Leahnette Rivers at City of Columbia City, , Claire Syrett at Lane Coalition of Healthy Active Youth, ", cities: "", staff: "Beth Kaye, Dawn Powell", topics: "Workplace Wellness", notes: <<END_TEXT

END_TEXT
}
    communications << { date: '41582', duration: '35', contact_type: 'In-person Meeting',  organization_type: 'Participating City', contacts: "Jim Fairchild at , , Ron Foggin at City of Dallas, , Emily Gagner at City of Dallas, ", cities: "Dallas, OR", staff: "Beth Kaye", topics: "Introduction To HEAL Cities, Land Use & Transportation, Access to Healthy Food Options, Workplace Wellness, Coordination with County Health Departments", notes: <<END_TEXT
Jim made intros, described support among council.<div><br></div><div>CM Foggin has been in the position about a year. &nbsp;He supports joining HCO - bigger platform for what they are already doing.Emily Gagner interested in W@W. &nbsp;Recently assumed ZhR role due to budget cuts. &nbsp;<span style=""font-size: 10.0pt;"">&nbsp;Just made Safety Team into W@W team. &nbsp;No assessment yet. &nbsp;Interested in assessment and healthy meetings&nbsp;</span><div><span style=""font-size: 10.0pt;""><br></span></div><div><span style=""font-size: 10.0pt;"">Working on connecting schools to trails so kids will not have to cross so many busy intersections.</span></div><div><span style=""font-size: 10.0pt;""><br></span></div><div><span style=""font-size: 10.0pt;"">Food access not an issue. &nbsp;</span></div></div><div><span style=""font-size: 10.0pt;""><br></span></div><div><span style=""font-size: 10.0pt;"">City Hall vending machine (SSBs) brings in $$ for the volunteer fire dept. &nbsp;No interest in tinkering with offerings. &nbsp;</span></div><div><span style=""font-size: 10.0pt;""><br></span></div>
END_TEXT
}
    communications << { date: '41543', duration: '30', contact_type: 'Distributed Resources',  organization_type: 'Participating City', contacts: "Olga Gerberg at City of Sandy, ", cities: "Sandy, OR", staff: "Beth Kaye", topics: "Introduction To HEAL Cities, Land Use & Transportation, Access to Healthy Food Options, Other, Hunger and Obesity", notes: <<END_TEXT
Very interested.
END_TEXT
}
    communications << { date: '41544', duration: '10', contact_type: 'Distributed Resources',  organization_type: 'Participating City', contacts: "Jason Horton at City of Woodburn, ", cities: "Woodburn, OR", staff: "Beth Kaye", topics: "Introduction To HEAL Cities, Access to Healthy Food Options, Coordination with County Health Departments, Hunger and Obesity", notes: <<END_TEXT
Seemed enthusiastic about concept.&nbsp;
END_TEXT
}
    communications << { date: '41544', duration: '20', contact_type: 'Distributed Resources',  organization_type: 'Participating City', contacts: "Scott Burge at City of Scappoose, , Barbara Hayden at City of Scappoose, ", cities: "Scappoose, OR", staff: "Beth Kaye", topics: "Introduction To HEAL Cities", notes: <<END_TEXT
The Mayor requested 10 copies of each of the handouts for his City Council.
END_TEXT
}
    communications << { date: '41544', duration: '10', contact_type: 'Distributed Resources',  organization_type: 'Participating City', contacts: "Ginny Carlson at City of St. Helens, ", cities: "", staff: "Beth Kaye", topics: "Introduction To HEAL Cities", notes: <<END_TEXT

END_TEXT
}
    communications << { date: '41561', duration: '10', contact_type: 'Distributed Resources',  organization_type: 'County Health Department', contacts: "Arielle LeVeaux at Polk County Public Health, ", cities: "", staff: "Beth Kaye", topics: "Introduction To HEAL Cities, Access to Healthy Food Options, Coordination with County Health Departments", notes: <<END_TEXT
Met at OPHA Exhibit fair.
END_TEXT
}
    communications << { date: '41544', duration: '10', contact_type: 'Distributed Resources',  organization_type: 'Participating City', contacts: "Sean Drinkwine at City of Estacada, ", cities: "Estacada, OR", staff: "Beth Kaye", topics: "Introduction To HEAL Cities", notes: <<END_TEXT

END_TEXT
}
    communications << { date: '41543', duration: '10', contact_type: 'Distributed Resources',  organization_type: 'Participating City', contacts: "Tim Clark at City of Wood Village, ", cities: "Wood Village, OR", staff: "Beth Kaye", topics: "Introduction To HEAL Cities", notes: <<END_TEXT
See if Tamie Arnold knows him.
END_TEXT
}
    communications << { date: '41577', duration: '15', contact_type: 'E-mail Exchange',  organization_type: 'Participating City', contacts: "Jim Fairchild at , ", cities: "Dallas, OR", staff: "Beth Kaye", topics: "Other", notes: <<END_TEXT
Sent follow-up e-mail to arrange a visit. &nbsp;Noted that I had met with three other City Councillors at LOC and all seemed open to joining the HEAL Cities Campaign. &nbsp;
END_TEXT
}
    communications << { date: '41543', duration: '50', contact_type: 'Distributed Resources',  organization_type: 'Participating City', contacts: "Ron Foggin at City of Dallas, , Murray Stewart at City of Dallas, , Kevin G. Marshall at City of Dallas, , Jim Brown at City of Dallas, ", cities: "Dallas, OR", staff: "Beth Kaye", topics: "Introduction To HEAL Cities", notes: <<END_TEXT
Pull together a meeting with Jim Fairchild?<div><br></div><div>Time is aggregate for conversations with all three COuncilors</div>
END_TEXT
}
    communications << { date: '41575', duration: '100', contact_type: 'In-person Meeting',  organization_type: 'Participating City', contacts: "Karin Johnson at City of Independence, , David Clyne at City of Independence, , Shawn Irvine at City of Independence, , Gloria Butsch at City of Independence, , Michael Danko at City of Independence, ", cities: "Independence, OR", staff: "Beth Kaye", topics: "Introduction To HEAL Cities, General Information About Obesity, Land Use & Transportation, Access to Healthy Food Options, Workplace Wellness, Other, Coordination with County Health Departments, Hunger and Obesity", notes: <<END_TEXT
Karin Johnson gave me a tour of Independence. &nbsp;We noticed a lack of connectivity: &nbsp;bike paths to nowhere. &nbsp;There is some lovely riverside park development, and the start of a trail project. &nbsp;New higher-end multi-family housing development coming in from developer who built something similar in Molalla. &nbsp;Some Farmworker housing, some housing authority housing. &nbsp;<div><br></div><div>Many Latino families who used to be migrant labor when area was major producer of hops have settled in Independence. &nbsp;There is one Latina on City Council, a couple of Latino police officers.<br><div><br></div><div>Shawn Irvine participated in the meeting by phone.&nbsp;</div><div><br></div><div>I did a big picture overview, and described policies other HEAL Cities are pursuing. &nbsp;I talked about focusing investment in areas with high BMI/high poverty. &nbsp;</div><div><br></div><div>Mike Danko proud of Land Use and&nbsp;</div><div><br></div><div>No F2S program, no school gardens.&nbsp;</div><div><br></div><div>Very interested in creating a Food Hub. &nbsp;Interested in how to change Monmouth-Independence School District procurement policies. &nbsp;I suggested that they contact Michelle Markesteyn Ratcliffe at ODA. City will be presenting Food Hub proposal in Woodburn to Regional Solutions Advisory Committee on Friday. &nbsp;(I have conflict, but maybe Amy can cover.).&nbsp;</div><div><br></div><div>Shawn is working on a Local Food Connection conference. &nbsp;(Connect Amy?)&nbsp;</div><div><br></div><div>Two May-Nov Farmers Markets. &nbsp;This year, one market will move indoors for Nov &amp; Dec. &nbsp;</div><div><br></div><div>Community gardens have failed twice. &nbsp;CM thinks there were leadership issues, but during drive-through I did not see much garden<span style=""font-size: 10.0pt;"">ing activity anywhere.&nbsp;</span></div><div><span style=""font-size: 10.0pt;""><br></span></div><div><span style=""font-size: 10.0pt;"">Working class and agricultural area - &nbsp;residents of more high end areas (including one Air District where all homes have hangars and there are &nbsp;runway alleys behind each street of homes) , may work for local industry, local gov't, or commute to Salem. &nbsp;</span></div><div><span style=""font-size: 10.0pt;""><br></span></div><div><span style=""font-size: 10.0pt;"">One well-located Roth's IGA, but surrounding community considers it too expensive. &nbsp;There may be interest in mobile Harvest Truck with staple items. Generally, quality of food is not as good as community wants- perceived as &nbsp;a larger Ec Dev issue.&nbsp;</span></div><div><span style=""font-size: 10.0pt;""><br></span></div><div><span style=""font-size: 10.0pt;"">City is working on grant (?) with Marion-Polk Food Share.</span></div></div><div><span style=""font-size: 10.0pt;""><br></span></div><div><span style=""font-size: 10.0pt;"">City Manager would like to do another meeting on HEAL with multi-sectoral group: &nbsp;Council, folks from the School District, the Downtown Merchants Association (not the Chamber), the food bank, the Y, the Faith Community. &nbsp;Wants to get Council buy-in. &nbsp;Thinks there is interest.</span></div><div><span style=""font-size: 10.0pt;""><br></span></div><div><span style=""font-size: 10.0pt;"">Gloria interested in Wellness@Work. &nbsp;(Connect with Dawn Robbins and Wellnessatworkoregon.org &nbsp;website). May want staff group to work on community garden or marked walking path projects.</span></div>
END_TEXT
}
    communications << { date: '41557', duration: '60', contact_type: 'In-person Meeting',  organization_type: 'Other', contacts: "Deb Fell-Carlson at SAIF, ", cities: "Lebanon, OR", staff: "Beth Kaye", topics: "Introduction To HEAL Cities, General Information About Obesity, Land Use & Transportation, Access to Healthy Food Options, Shared Use, Workplace Wellness, Other, Coordination with County Health Departments", notes: <<END_TEXT
Deb and I went for coffee after the meeting with Lebanon Mayor Aziz and City Manager Hlavec to debrief. &nbsp;We talked about the conservative and libertarian political climate in Lebanon, and the strong degree of community cooperation and unity that has helped the City's economic recovery. &nbsp;
END_TEXT
}
    communications << { date: '41558', duration: '20', contact_type: 'E-mail Exchange',  organization_type: 'Participating City', contacts: "Dana P. Hlavac at City of Lebanon, , Paul Aziz at City of Lebanon, , Deb Fell-Carlson at SAIF, ", cities: "Lebanon, OR", staff: "Beth Kaye", topics: "Introduction To HEAL Cities, Access to Healthy Food Options, Other, Let's Move Cities Towns & Counties", notes: <<END_TEXT
I thanked the &nbsp;Mayor and City Manager for meeting with me earlier in the week, and expressed my enthusiasm for working with the City of Lebanon. &nbsp;I initiatied a discussion about next steps. &nbsp;
END_TEXT
}
    communications << { date: '41570', duration: '15', contact_type: 'E-mail Exchange',  organization_type: 'Participating City', contacts: "Dana P. Hlavac at City of Lebanon, , Paul Aziz at City of Lebanon, , Deb Fell-Carlson at SAIF, ", cities: "Lebanon, OR", staff: "Beth Kaye", topics: "Access to Healthy Food Options, Other", notes: <<END_TEXT
I sent a follow-up e-mail, since I had not received a response to the e-mail I sent following our initial meeting on 10/10/13.<div><br></div><div>I asked for a date to bring the HEAL Resolution to Lebanon City COuncil. &nbsp;</div>
END_TEXT
}
    communications << { date: '41569', duration: '90', contact_type: 'In-person Meeting',  organization_type: 'Participating City', contacts: "Heidi Blaine at City of Donald, Oct 23 2013, Rick Olmstead at City of Donald, ", cities: "Donald, OR", staff: "Beth Kaye", topics: "Introduction To HEAL Cities, Access to Healthy Food Options, Hunger and Obesity", notes: <<END_TEXT
At the invitation of the City &nbsp;Manager, Heidi Blaine, I attended a special Town Meeting on the idea of forming a Farmers &nbsp;Market in Donald. &nbsp;(A number of residents had mentioned their interest in having a Farmers Market on a recent city survey.) &nbsp;<div><br></div><div>There were about a dozen residents present. &nbsp;The reasons they gave for wanting a Farmers Market included a desire to attract more people to Donald (the Hazelnut Festival has been a real magnet), to increase economic vitality, to increase access to fresh, local produce (the farm stand up the road closed a couple of years ago; everyone now must drive to Wilsonville or Portland or Newberg to shop for produce, and that gets expensive). &nbsp;There was also some interest in providing a venue where local artisans could sell their creations, and exposing children to a broader variety of fruits and vegetables.<div><br></div><div>Councilor Olmstead's wife indicated that she was extremely price sensitive, and wanted to make sure that the market was competitively priced. &nbsp;</div><div><br></div><div>I distributed materials (A City's Role; Obesity: the Preventable Epidemic; Increasing Access to Health Food Options - overview; and Increasing Access to Healthy Food Options: Farmer's &nbsp;Markets).</div><div><br></div><div>Based on my conversations with Laura Conroy of the Hillsboro Farmers Markets and Jackie Hammon-Williams of the &nbsp;Oregon City Farmers Markets, I suggested that the community start slow and small, to give the townspeople a chance to get used to buying fresh produce locally on a regular basis and to ensure that the vendors received enough custom to make it worth their while. &nbsp;The two models I presented were the Employer-Sponsored Pop Up Market, and the Farm Stand (or extremely small, 1-2 vendor farmer's market). &nbsp; I made a pitch for accepting SNAP and providing a SNAP &nbsp;match to meet the nutrition needs of low-income families. &nbsp;(There was not a lot of visible interest.)</div><div><br></div><div>In response to questions, I described CSAs and bartering arrangements.</div><div><br></div><div>Heidi Blaine facilitated the group by dividing up the next steps into small, discrete actions. &nbsp;One person volunteered to put together an e-mail list and another volunteered to set up a web page. &nbsp;The group agreed to seek more volunteers at a broader planning charette scheduled for mid-November. &nbsp;</div><div><br></div><div>We also talked briefly about asking the local convenience stores to carry some produce. &nbsp;We did not talk specifically about incentives.</div></div><div><br></div><div>I agreed to provide resources to the city residents about drafting a charter, model rules, etc. &nbsp;</div>
END_TEXT
}
    communications << { date: '41570', duration: '25', contact_type: 'E-mail Exchange',  organization_type: 'Participating City', contacts: "Heidi Blaine at City of Donald, Oct 23 2013", cities: "Donald, OR", staff: "Beth Kaye", topics: "Land Use & Transportation, Access to Healthy Food Options, Other, Hunger and Obesity", notes: <<END_TEXT
Followed up on 10/22 Town meeting about the prospect of starting a Donald Farmers Market by thanking the City Manager for convening the meeting, providing her with resources about Farmers Markets.<div><br></div><div>Because Heidi has also &nbsp;mentioned her interest in marking and mapping a walking trail through town, &nbsp;I also highlighted a national best practice from New Orleans published in a new Compendium of Proven Community-Based Prevention Programs: &nbsp;People for an Active City Environment marked and mapped a walking trail through the city, increasing the number of people walking and the distance they walked. &nbsp;Because the idea is supported by research, I suggested that Heidi &nbsp;may be able to secure a grant to pay for something similar in Donald.&nbsp;<div><br></div><div>I also pressed for Heidi to give a date when the HEAL Resolution would come before Council. &nbsp;&nbsp;</div></div>
END_TEXT
}
    communications << { date: '41557', duration: '75', contact_type: 'In-person Meeting',  organization_type: 'Participating City', contacts: "Dana P. Hlavac at City of Lebanon, , Paul Aziz at City of Lebanon, , Deb Fell-Carlson at SAIF, ", cities: "Lebanon, OR", staff: "Beth Kaye", topics: "Introduction To HEAL Cities, Land Use & Transportation, Workplace Wellness, Other, Coordination with County Health Departments, Let's Move Cities Towns & Counties, Hunger and Obesity", notes: <<END_TEXT
Lebanon has a politically conservative COuncil. &nbsp;CM was interested in making changes by administrative order, e.g. re breastfeeding accommodation. &nbsp;Mayor and CM liked the idea of a recognition campaign to recognize private businesses that have made contributions to the health of the community, e.g. by sponsoring a fun run. &nbsp;
END_TEXT
}
    communications << { date: '41544', duration: '15', contact_type: 'In-person Meeting',  organization_type: 'Participating City', contacts: "Ralph Grutzmacher at , ", cities: "Toledo, OR", staff: "Beth Kaye", topics: "Access to Healthy Food Options", notes: <<END_TEXT
Discussed lemonade stand kit for farmers' markets; &nbsp;funds raised can fund SNAP match program. &nbsp;Must follow instructions<div><br></div><div>Katie Anderson (?) (person who developed lemonade stand concept?)</div>
END_TEXT
}
    communications << { date: '41544', duration: '10', contact_type: 'Distributed Resources',  organization_type: 'Participating City', contacts: "Ric Ingham at City of Veneta, ", cities: "Veneta, OR", staff: "Beth Kaye", topics: "Introduction To HEAL Cities, Hunger and Obesity", notes: <<END_TEXT
Met at 2013 LOC; several folks from Veneta attended Panel at LOC
END_TEXT
}
    communications << { date: '41545', duration: '90', contact_type: 'General Presentation',  organization_type: 'Participating City', contacts: "Julie Fitzgerald at City of Wilsonville, , Ralph Grutzmacher at , , Shanti Platt at , , Jennifer Spurgeon at Weston City COuncil, Oct 17 2013, David Clyne at City of Independence, , Lesley Woodruff at City of Newberg, , Norma Alley at City of Newberg, , Shannon Poole at City of Culver, , Sandra Larson at City of Veneta, , Brittany Boothe at City of Veneta, , Aron Carleson at City of Hillsboro, , Olga Acuna at City of Hillsboro, , Christy Greagor at City of Banks, , Marcy Skinner at City of Ontario, , Mike Vaughan at City of Coos Bay, , Julie Fitzgerald at City of Wilsonville, , Justin D. Cobb at City of Drain, , Carl Jacobson at City of Cave Junction, , Olga Gerberg at City of Sandy, , Micky Wagner at City of Gervais, ", cities: "Banks, OR, Coos Bay, OR, Culver, OR, Drain, OR, Gervais, OR, Independence, OR, Newberg, OR, Ontario, OR, Springfield, OR, Toledo, OR, Veneta, OR, Weston, OR, Wilsonville, OR", staff: "Beth Kaye", topics: "Introduction To HEAL Cities, Access to Healthy Food Options", notes: <<END_TEXT
All attended panel presentation on Increasing Access to Healthy Food Options at 2013 LOC Annual meeting.<div><br></div><div>Copresenters were Michelle Markesteyn Ratcliffe of Oregon Dept of Ag on Farm to School and</div><div>Laura Conroy on Farmer's Markets (formerly of Hillsboro Farmer's Markets)</div>
END_TEXT
}
    communications << { date: '41543', duration: '10', contact_type: 'Distributed Resources',  organization_type: 'Participating City', contacts: "Mary Schamehorn at City of Bandon, ", cities: "Bandon, OR", staff: "Beth Kaye", topics: "Introduction To HEAL Cities, Let's Move Cities Towns & Counties, Hunger and Obesity", notes: <<END_TEXT
LOC 2013
END_TEXT
}
    communications << { date: '41543', duration: '10', contact_type: 'Distributed Resources',  organization_type: 'Participating City', contacts: "Sharon Harrison at City of Winston, ", cities: "Winston, OR", staff: "Beth Kaye", topics: "Introduction To HEAL Cities, Hunger and Obesity", notes: <<END_TEXT
LOC 2013
END_TEXT
}
    communications << { date: '41543', duration: '10', contact_type: 'Distributed Resources',  organization_type: 'Participating City', contacts: "Edward Smith at City of Estacada, ", cities: "Estacada, OR", staff: "Beth Kaye", topics: "Introduction To HEAL Cities, Hunger and Obesity", notes: <<END_TEXT
Met at 2013 LOC
END_TEXT
}
    communications << { date: '41543', duration: '10', contact_type: 'Distributed Resources',  organization_type: 'Participating City', contacts: "Suzanne Weber at City of Tillamook, ", cities: "Tillamook, OR", staff: "Beth Kaye", topics: "Introduction To HEAL Cities, Hunger and Obesity", notes: <<END_TEXT
met at 2013 LOC Conference
END_TEXT
}
    communications << { date: '41491', duration: '180', contact_type: 'Attended public hearing',  organization_type: 'Participating City', contacts: "Bob Willoughby at City of Silverton, , Stu Rasmussen at City of Silverton, , Ruth Mattox at City of Silverton, , Jason Gottgetreu at City of Silverton, ", cities: "Silverton, OR", staff: "Beth Kaye", topics: "Other", notes: <<END_TEXT
Silverton's Mayor read a Proclamation at the Council Meeting announcing the city would join the HEAL Cities Campaign and an ACTIVE City.
END_TEXT
}
    communications << { date: '41554', duration: '5', contact_type: 'E-mail Exchange',  organization_type: 'Participating City', contacts: "David Clyne at City of Independence, ", cities: "Independence, OR", staff: "Beth Kaye", topics: "Other", notes: <<END_TEXT
Would like to invite me to meet with his staff.&nbsp;
END_TEXT
}
    communications << { date: '41564', duration: '5', contact_type: 'Telephone Call',  organization_type: 'Participating City', contacts: "Karin Johnson at City of Independence, ", cities: "Independence, OR", staff: "Beth Kaye", topics: "Introduction To HEAL Cities, Other", notes: <<END_TEXT
Exchange of calls re scheduling a meeting with City Staff.<div><br></div><div>Left my mobile number.</div>
END_TEXT
}
    communications << { date: '41564', duration: '15', contact_type: 'E-mail Exchange',  organization_type: 'Participating City', contacts: "Jennifer Spurgeon at Weston City COuncil, Oct 17 2013", cities: "Weston, OR", staff: "Beth Kaye", topics: "Other", notes: <<END_TEXT
I sent Jennifer a link to the Community Commons piece about&nbsp;<span style=""color: rgb(34,34,34);font-family: arial , sans-serif;background-color: rgb(255,255,255);"">how another rural community approached the challenge of making good change happen. &nbsp;This community, Putnam, Missouri, used a cross-sectoral coalition and a planning process to address a range of local concerns. &nbsp;They promoted healthy food and physical activity, and discouraged smoking and drug use. &nbsp;&nbsp;</span><br style=""color: rgb(34,34,34);font-family: arial , sans-serif;background-color: rgb(255,255,255);""><div style=""color: rgb(34,34,34);font-family: arial , sans-serif;background-color: rgb(255,255,255);""><br></div><div style=""color: rgb(34,34,34);font-family: arial , sans-serif;background-color: rgb(255,255,255);""><a href=""http://www.communitycommons.org/2013/07/6-steps-to-community-change/"" style=""color: rgb(17,85,204);"">http://www.communitycommons.org/2013/07/6-steps-to-community-change/</a><br><br><br>Key elements:<br>1. &nbsp;Get Organized: &nbsp;develop cross-sectoral collaboration, incorporating<br>several existing colaitions<br>2. &nbsp;Find Funding: &nbsp;used funding to hold an Action Institute and create a<br>prioritized action plan<br>3. &nbsp;Create community buy-in through community involvement,<br>&nbsp; - they used a deliberate branding strategy with a strong message:<br>Putnam County Good Life: healthy eating, physical activity, drug-free<br>living, smoke-free air<br>4. &nbsp;Leverage Assets - leverage the work you have done to apply for<br>additional funds<br>5. &nbsp;Make Long-Term Policy Changes (joint use agreements, Livable Streets<br>policy)<br>6. &nbsp;Celebrate Success</div>
END_TEXT
}
    communications << { date: '41562', duration: '30', contact_type: 'Telephone Call',  organization_type: 'Participating City', contacts: "Jennifer Spurgeon at Weston City COuncil, Oct 17 2013", cities: "Weston, OR", staff: "Beth Kaye", topics: "Land Use & Transportation, Access to Healthy Food Options, Other, Hunger and Obesity", notes: <<END_TEXT
We discussed a site visit in the 2nd week of November, or after the holidays. &nbsp;The Weston Council meets Wednesday and Athena meets Thursday.<div><br></div><div>Jennifer would like to convene a meeting with the local Food Bank that is run out of the Athena Christian Church, the Athena and Weston School District, the CEO from Smith Foods, a rep from Pendleton Flour Mill. There is also a local Ag teacher who is interested in helping to start a community garden. &nbsp;The Ag teacher may have land. &nbsp;Jennifer thinks this would make a great senior project.&nbsp;</div><div><br></div><div>Jennifer is particularly interested in a Farm to School program since so much is grown locally. &nbsp;</div><div><br></div><div>If the effort takes off, she would like to expand to Union County. &nbsp;</div><div><br></div><div>She was willing to entertain the idea of a Small Cities Meeting to include Pendleton, Milton-Freewater, Athena (maybe not an incorporated city?), and Weston.&nbsp;</div><div><br></div><div>THe community had a FSA program but it died on the vine. &nbsp;</div><div>The Planning Commission just redid its ordinances. &nbsp;The community received a Transportation Growth Management Grant. of $125 K to develop a scope of work for future grants for work on Highway 11 into town (SRTS)</div><div><br></div><div>We talked generally about whether to convene a multi-sectoral group and &nbsp;launch a planning process, or to start small with one project that she is passionate about. &nbsp; I offered to send her information about a small city that had conducted a planning process. &nbsp;</div>
END_TEXT
}
    communications << { date: '41568', duration: '120', contact_type: 'In-person Meeting',  organization_type: 'Evaluator', contacts: "Ronda Zakocs at Insight Evaluation, ", cities: "", staff: "Beth Kaye, Karli Thorstenson", topics: "Other", notes: <<END_TEXT
Eval letter must go out by 11/12 or roll to January<div><br></div>
END_TEXT
}
    communications << { date: '41298', duration: '90', contact_type: 'In-person Meeting',  organization_type: 'Other', contacts: "Jackie Hammond-Williams at Oregon City Farmers Market, ", cities: "Oregon City, OR", staff: "Beth Kaye", topics: "Introduction To HEAL Cities, Access to Healthy Food Options, Other", notes: <<END_TEXT
I learned about the history of the Oregon City Farmers Market and it's function as a community hub. &nbsp;We talked about the local food culture and the community's pride in locally-grown food and local products.&nbsp;<div><br></div><div>We discussed bringing the Campaign to Oregon City.&nbsp;</div>
END_TEXT
}
    communications << { date: '41564', duration: '15', contact_type: 'E-mail Exchange',  organization_type: 'Participating City', contacts: "Patty Brescia at City of Wilsonville, ", cities: "Wilsonville, OR", staff: "Beth Kaye", topics: "Other", notes: <<END_TEXT
Patty asked me to review information about Wilsonville's adoption and implementation of its Transportation System Plan update. I did, and determined that Wilsonville would qualify as a FIT CITY as a result of its policy adoption and &nbsp;implementation efforts.&nbsp;
END_TEXT
}
    communications << { date: '41564', duration: '45', contact_type: 'E-mail Exchange',  organization_type: 'Participating City', contacts: "Tamera Tlustos-Arnold at KP, ", cities: "Fairview, OR, Gresham, OR, Troutdale, OR, Wood Village, OR", staff: "Beth Kaye", topics: "Other", notes: <<END_TEXT
Discussed researching obesity data for East Multnomah County. &nbsp;I referred her to CLF Regional Equity Atlas and various Multnomah County HD Reports.&nbsp;
END_TEXT
}
    communications << { date: '41530', duration: '10', contact_type: 'E-mail Exchange',  organization_type: 'Participating City', contacts: "Heidi Blaine at City of Donald, Oct 23 2013", cities: "Donald, OR", staff: "Beth Kaye", topics: "Land Use & Transportation, Other", notes: <<END_TEXT
Closed loop re contacts in state park system with an eye to developing and mapping local and regional bike paths. &nbsp; Sent info re Putnam County, MO community change strategy. &nbsp;Discussed attendance at French Prairie presentation on 9/18. &nbsp;
END_TEXT
}
    communications << { date: '41529', duration: '120', contact_type: 'In-person Meeting',  organization_type: 'Statewide Organization', contacts: "Karen Ayers at Oregon Child Development Center, ", cities: "Milton-Freewater, OR", staff: "Beth Kaye", topics: "Hunger and Obesity", notes: <<END_TEXT
Attended presentation to HeadStart directors about hunger, healthy food access. &nbsp;<div><br></div><div>Heard about community garden OCDC started in Milton-Freewater with donated land and supplies. &nbsp;Ocdc turned garden over to Head Start parents to run. &nbsp;City involvement unknown.</div>
END_TEXT
}
    communications << { date: '41516', duration: '60', contact_type: 'In-person Meeting',  organization_type: 'Participating City', contacts: "Patty Brescia at City of Wilsonville, , Molly Reece, MPH at U.S. Department of Health & Human Services, ", cities: "Wilsonville, OR", staff: "Beth Kaye", topics: "Let's Move Cities Towns & Counties", notes: <<END_TEXT
Huge turnout from HEAL Wilsonville team. &nbsp;
END_TEXT
}
    communications << { date: '41516', duration: '60', contact_type: 'In-person Meeting',  organization_type: 'Participating City', contacts: "Sherilyn Lombos at City of Tualatin, , Lou Ogden at , , Molly Reece, MPH at U.S. Department of Health & Human Services, ", cities: "Tualatin, OR", staff: "Beth Kaye", topics: "Other, Let's Move Cities Towns & Counties", notes: <<END_TEXT
Send Lou e-mail re LOC conference<div><br></div><div>In favor of LMCTC but has not intentionally implemented it</div><div><br></div><div>Wants to invest in outreach &amp; awareness</div><div>Better access to healthy food options&nbsp;</div><div>Gives environmental awareness example, peach vs Snickers</div><div>They turned plain yogurt into rat poison&nbsp;</div><div>Bike to school - not on-going and systemic</div><div>Constraints on staff capacity</div><div><br></div><div>SL: &nbsp;interested in private partnerships</div><div>A lot of organic activity</div><div>Health care providers talking about limiting screen-time and being active</div><div>SD: &nbsp;school garden, free salad bar</div><div><br></div><div>(Recognition)&nbsp;</div><div><br></div><div>Recommend pulling major players together to the table</div><div>Society Leadership - local businesses sponsor ""stations"".&nbsp;</div><div><br></div>
END_TEXT
}
    communications << { date: '41516', duration: '45', contact_type: 'In-person Meeting',  organization_type: 'Participating City', contacts: "Tamera Tlustos-Arnold at KP, , Allan Berry at City of Fairview, , Molly Reece, MPH at U.S. Department of Health & Human Services, ", cities: "Fairview, OR", staff: "Beth Kaye", topics: "Let's Move Cities Towns & Counties", notes: <<END_TEXT
Tamie would like LMCTC website to have a log-in<div>Webinars are under ""News"" tab</div><div>- First round focused on 5 goals</div><div>- Second round is by city size</div><div><br></div><div>Rachel Hopper at Reynolds SD is Alan's suggested contact<div>Tamie talked with Sup Linda Florence early in 2013,- she was not interested- focused on academics</div><div><br></div><div>Are there materials that show link between nutrition and physical activity and school success that we can give to Sup?</div><div><br></div><div>Molly's Suggestions:&nbsp;</div><div>Develop an inter-agency &nbsp;task force</div><div>Brainstorm barriers</div><div>Look at member agency work plans to see what activities are already happening and where interest is</div><div>Do not need to work on all 5 goals at once</div><div>Region-wide strategy sharing conference call for PNW</div><div>No formal mentor ship program yet</div><div><br></div><div><br></div><div>City does biz licensing</div><div>Can we find out from State who in Fairview is a licensed CC provider</div><div>What about daycare at HS?</div><div>How to reach FFNs?&nbsp;</div><div><br></div><div>What is role of MESD?</div><div><br></div><div>Hard to choose your battles among important issues. &nbsp;</div><div><br></div><div>LMCTC first launched in 2/2010' relaunched in 2012</div><div><br></div><div>Seattle signed up in 2/2010; when it was &nbsp;relaunched in 2012, did not assume that cities would want to re-up. &nbsp;Sea has not yet signed up. &nbsp;It is an election year so HHS is not pushing. &nbsp;</div><div><br></div><div>Theme of culture change. &nbsp;&nbsp;</div><div><br></div><div><br></div><div><br></div></div>
END_TEXT
}
    communications << { date: '41498', duration: '60', contact_type: 'Telephone Call',  organization_type: 'Participating City', contacts: "Lindsey Kuipers at City of Beaverton, ", cities: "Beaverton, OR", staff: "Beth Kaye", topics: "Other", notes: <<END_TEXT
Lindsey has felt some opposition to the concept of a separate Health chapter to the Comprehensive Plan, as a result of personnel changes at the City. Some regard it as unnecessary and would prefer to see Health policies included in the sustainability chapter or woven in throughout the Plan. &nbsp;The Development Director, Don Mazziotti, would be comfortable with either approach. &nbsp;Lindsey has conferred with Amanda Garcia-Snell and Jeff, and all three agree that some of the policies would not fit readily into other chapters, although it could be done.&nbsp;<div><br></div><div>After some discussion, we came up with this list of reasons to maintain a stand-alone chapter:</div><div>1. It is becoming a national best practice for city planning documents to frame and describe the City'r role in creating healthy communities. &nbsp;(Give examples from the APA matrix.)</div><div>2. It could influence the state to require a h</div><div>Healthy Communities chapter in ALL Comprehensive Plans statewide.</div><div>3. It dovetails nicely with the current health care transformation process, and the emphasis it places on upstream actions to protect health and achieve &nbsp;wellness. &nbsp;</div><div><br></div><div>Lindsey will present the issue to the CHAC on Thursday. &nbsp;She hopes to be able to present it to the official citizen review bodies with a recommendation from the CHAC.&nbsp;</div><div><br></div><div>We also discussed the opportunity for Beaverton to join the HEAL Cities Campaign. &nbsp;Lindsey thinks this would help to align Beaverton's policies. &nbsp;She will bing it up again with Don when he returns from&nbsp;</div>
END_TEXT
}
    communications << { date: '41491', duration: '60', contact_type: 'General Presentation',  organization_type: 'Participating City', contacts: "Bob Willoughby at City of Silverton, , Stu Rasmussen at City of Silverton, , Ruth Maddox at City of Silverton, ", cities: "Silverton, OR", staff: "Beth Kaye", topics: "Introduction To HEAL Cities, General Information About Obesity", notes: <<END_TEXT
Mayor issues proclamation to join Campaign.&nbsp;
END_TEXT
}
    communications << { date: '41444', duration: '75', contact_type: 'In-person Meeting',  organization_type: 'Other', contacts: "Brandon Carey at OSU public health student (undergrad), ", cities: "Falls City, OR", staff: "Beth Kaye", topics: "Introduction To HEAL Cities, Other, Coordination with County Health Departments", notes: <<END_TEXT

END_TEXT
}
    communications << { date: '41443', duration: '60', contact_type: 'Telephone Call',  organization_type: 'County Health Department', contacts: "Molly Mattick at Curry Community  Health Department, ", cities: "", staff: "Beth Kaye", topics: "", notes: <<END_TEXT
Recently started a Wellness Committee at the Curry Community Health. &nbsp;There are 42 employees of the non-profit CCH and another 30 County employees. More autonomy. &nbsp;Still in the same offices. &nbsp;County too poor.<div><br></div><div>BA in International Relations and Philosophy, then went into Peace Corps and got interested in public health. &nbsp;Returned to country at the end of Sept. and started in Curry Community Health in Dec. &nbsp;</div><div><br></div><div>On Prevention team -- HEALTHY COMMUNITIES TEAM, W@W and tobacco prevention. &nbsp;&nbsp;<div><br></div><div>What else can she do on chronic disease prevention?&nbsp;</div><div><br></div><div>Working on getting a new tobacco free policy for campus. &nbsp;Will have a walking group and potluck lunch. &nbsp;Trying to get vending machines switched out for healthier options. &nbsp;<div><br></div></div></div><div><br></div><div>Three cities - &nbsp;Port Orford, Gold Beach, Brookings</div><div><br></div><div>Had a FEAST event to build momentum. &nbsp;Megan Kempel from OSU F2S helping with it. &nbsp;</div><div><br></div><div>Very interested in having me come out to meet with her team and to work with local jurisdictions. &nbsp; Will talk with her supervisor tomorrow and call me back.</div>
END_TEXT
}
    communications << { date: '41437', duration: '75', contact_type: 'In-person Meeting',  organization_type: 'KP', contacts: "Kay Zimmerli at KP, ", cities: "", staff: "Beth Kaye, Dawn Powell", topics: "Workplace Wellness", notes: <<END_TEXT
Interested in working on worksite wellness with HEAL Cities, e.g. Tualatin<div><br></div>
END_TEXT
}
    communications << { date: '41437', duration: '5', contact_type: 'E-mail Exchange',  organization_type: 'County Health Department', contacts: "Molly Mattick at Curry Community  Health Department, ", cities: "", staff: "Beth Kaye", topics: "", notes: <<END_TEXT
Rescheduled for afternoon of 6/18/13
END_TEXT
}
    communications << { date: '41428', duration: '10', contact_type: 'E-mail Exchange',  organization_type: 'Participating City', contacts: "Martha DeBry at City of North Plains, ", cities: "", staff: "Beth Kaye", topics: "Land Use & Transportation, Workplace Wellness", notes: <<END_TEXT
Martha is still interested in the Bike-Friendly City designation. &nbsp;I also told her about the 1st HEAL Nation webinar, on W@W.&nbsp;
END_TEXT
}
    communications << { date: '41376', duration: '5', contact_type: 'E-mail Exchange',  organization_type: 'Regional Organization', contacts: "Stacey Sobell at Ecotrust, ", cities: "", staff: "Monica Cuneo", topics: "Access to Healthy Food Options", notes: <<END_TEXT
Emailed to arrange a time to discuss integrating farm to school policies with the HEAL cities campaign.
END_TEXT
}
    communications << { date: '41376', duration: '5', contact_type: 'E-mail Exchange',  organization_type: 'Regional Organization', contacts: "Katy Pellesier at Ecotrust, ", cities: "", staff: "Monica Cuneo", topics: "", notes: <<END_TEXT
Emailed to arrange a time to discuss how best to integrate F2S related policies with HEAL cities campaign.
END_TEXT
}
    communications << { date: '41376', duration: '5', contact_type: 'E-mail Exchange',  organization_type: 'Statewide Organization', contacts: "Michelle Markestyn - Ratdcliffe at Oregon Department of Agriculture, ", cities: "", staff: "Monica Cuneo", topics: "Access to Healthy Food Options", notes: <<END_TEXT
Contacted Michelle to set up a time to talk about F2S policies and HEAL.
END_TEXT
}
    communications << { date: '41376', duration: '5', contact_type: 'E-mail Exchange',  organization_type: 'Regional Organization', contacts: "Laura Conroy at Hillsboro Farmers' Market, ", cities: "Hillsboro, OR", staff: "Monica Cuneo", topics: "Access to Healthy Food Options", notes: <<END_TEXT
Sent email to arrange a time to discuss integration of Farm to school and school garden related policies / programs / projects with city of Hillsboro. &nbsp;Laura contacted 2 people from w/i the city to arrange a time for all of us to discuss the opportunities together.
END_TEXT
}
    communications << { date: '41374', duration: '60', contact_type: 'In-person Meeting',  organization_type: 'Regional Organization', contacts: "TIa Henderson at Upstream Public Health, ", cities: "", staff: "Beth Kaye, Monica Cuneo", topics: "Access to Healthy Food Options", notes: <<END_TEXT
HB 2649 Farm to School bill; how cities can be involved / encourage in Farm to School and School Garden projects and programs; how best to integrate policies related to F2S into HEAL cities policy menu.
END_TEXT
}
    communications << { date: '41374', duration: '60', contact_type: 'In-person Meeting',  organization_type: 'Regional Organization', contacts: "Kasandra Griffin at Upstream Public Health, ", cities: "", staff: "Beth Kaye, Monica Cuneo", topics: "Access to Healthy Food Options", notes: <<END_TEXT
We discussed HB 2649 Farm to School bill and the role(s) city could play in farm to school and school gardens projects and programs.
END_TEXT
}
    communications << { date: '41373', duration: '30', contact_type: 'Telephone Call',  organization_type: 'Regional Organization', contacts: "Megan Kemple at National Farm to School Network, ", cities: "Eugene, OR", staff: "Monica Cuneo", topics: "Access to Healthy Food Options", notes: <<END_TEXT

END_TEXT
}
    communications << { date: '41368', duration: '5', contact_type: 'Telephone Call',  organization_type: 'County Health Department', contacts: "Marilyn Carter at Douglas county Wellness/Live Well Douglas, ", cities: "", staff: "Beth Kaye", topics: "Introduction To HEAL Cities", notes: <<END_TEXT
Left VMs.&nbsp;
END_TEXT
}
    communications << { date: '41367', duration: '5', contact_type: 'Telephone Call',  organization_type: 'County Health Department', contacts: "Marilyn Carter at Douglas county Wellness/Live Well Douglas, ", cities: "", staff: "Beth Kaye", topics: "Introduction To HEAL Cities", notes: <<END_TEXT
Exchange of VMs
END_TEXT
}
    communications << { date: '41365', duration: '60', contact_type: 'In-person Meeting',  organization_type: 'Participating City', contacts: "Jolynn Becker at City of Banks, ", cities: "Banks, OR, Cornelius, OR, Forest Grove, OR, Hillsboro, OR", staff: "Beth Kaye", topics: "Introduction To HEAL Cities, General Information About Obesity, Land Use & Transportation, Other", notes: <<END_TEXT
banks is getting a bike path with neighboring districts funded by the State. &nbsp;JoLynn overwhelmed by Application to become a certified Bike Friendly City. &nbsp;might be willing to participate in future if another Wash. linty city will assume leadership responsibilities. &nbsp;ow ever, she was enthusiastic about HEAL Cities. &nbsp;she may be able to move it in May/June time frame. &nbsp;banks has applied for grants From ODOT. &nbsp; Explained that we are working wi th ODOT and that joining HeAL Cities Campaign and considering adoption of active transit policy. Sy help position Banks for implementation grant. &nbsp;&nbsp;
END_TEXT
}
    communications << { date: '41348', duration: '30', contact_type: 'In-person Meeting',  organization_type: 'County Health Department', contacts: "Kelly Volkmann at Benton County HD, ", cities: "Corvallis, OR", staff: "Beth Kaye", topics: "Introduction To HEAL Cities, Coordination with County Health Departments", notes: <<END_TEXT
Discussed BK presentation at upcoming Benton County health promotion team meeting
END_TEXT
}
    communications << { date: '41348', duration: '10', contact_type: 'In-person Meeting',  organization_type: 'County Health Department', contacts: "Misha Peel at Polk County HD, ", cities: "", staff: "Beth Kaye", topics: "Introduction To HEAL Cities, Other", notes: <<END_TEXT
Ran in to Misha Peel at NW Environmental Health Conference. &nbsp;Talked about HEAL Cities Campaign and agreed to schedule an appointment next week.&nbsp;
END_TEXT
}
    communications << { date: '41345', duration: '65', contact_type: 'Distributed Resources',  organization_type: 'Participating City', contacts: "Tamera Tlustos-Arnold at KP, ", cities: "Wilsonville, OR", staff: "Beth Kaye", topics: "Other", notes: <<END_TEXT
Developed PowerPoint presentation for Tamie to use at 3/14 Three Cities meeting.
END_TEXT
}
    communications << { date: '41347', duration: '90', contact_type: 'In-person Meeting',  organization_type: 'Participating City', contacts: "Patty Brescia at City of Wilsonville, ", cities: "Wilsonville, OR", staff: "Beth Kaye", topics: "Introduction To HEAL Cities, Land Use & Transportation, Access to Healthy Food Options", notes: <<END_TEXT
Attended meeting with Dr. Dave and Karen of Achieve Coalition, to prepare presentation to 3/21/13 Cities of Clackamas County meeting and review materials. &nbsp;Introduced Dr. Dave and Karen to HEAL Cities Campaign. &nbsp;HEAL will help Health &amp; Wellness Coalition that formed around Achieve to continue to improve environment for HEAL in Wilsonville.&nbsp;
END_TEXT
}
    communications << { date: '41347', duration: '120', contact_type: 'In-person Meeting',  organization_type: 'Regional Organization', contacts: "Tamera Tlustos-Arnold at KP, , Shirley Craddick at Metro, ", cities: "Fairview, OR, Troutdale, OR, Wood Village, OR", staff: "Beth Kaye", topics: "Introduction To HEAL Cities, Coordination with County Health Departments, Let's Move Cities Towns & Counties", notes: <<END_TEXT
City councillors, mayors, and city managers<div><br></div><div>Tamie made presentation</div>
END_TEXT
}
    communications << { date: '40984', duration: '60', contact_type: 'In-person Meeting',  organization_type: 'Regional Organization', contacts: "Kris Smock at Coalition for a Livable Future, ", cities: "", staff: "Beth Kaye", topics: "Introduction To HEAL Cities, General Information About Obesity, Other", notes: <<END_TEXT
Discussed data points for CLF Equity Atlas 2.0<br>KS not sure that there will be any data on asthma rates (childhood/adult)<br>Clint Chiavarini at Metro has given CLF access to seven fields''<br>KS is trying to map data at the smallest available geography.<br>Once the search tool is developed, researcher will be able choose the geography for analysis. <br>KS is rating data 1-5, to normalize data.&nbsp; Could be a natural break or a quintile.&nbsp; 'Not clear if we will be able to pull out actual data quickly. The rankign will be a composite measure.&nbsp; Searcher will also be able to pull up a spider graph that shows the elements that compose the composite.&nbsp; <br>The mapping tool could be done by June.&nbsp; The formal release is set for October.&nbsp;&nbsp; Then, CLF will reach out to key partners for development of an analysis/white paper. <br>there will be an urban living index.<br>Clark COunty PH has done a series of reports with the goal of creating accessible summaries of research.&nbsp; Each summary will answer question: why should we care?&nbsp; Each will also have an analysis of what they found, with salient points set out in an understandable fashion.&nbsp; <br><br>Keep an eye on the margins of error, and the dates of the data sests.&nbsp; <br>
END_TEXT
}
    communications << { date: '40984', duration: '90', contact_type: 'In-person Meeting',  organization_type: 'County Health Department', contacts: "Jen Moore at Multnomah County HD, , Olivia Queros at Multnomah County HD, ", cities: "Fairview, OR, Gresham, OR, Troutdale, OR, Wood Village, OR", staff: "Beth Kaye, Noelle Dobson", topics: "Introduction To HEAL Cities, Other, Coordination with County Health Departments", notes: <<END_TEXT
Chair Cogen is very supportive of healthy communities work.<br>Communities Putting Prevention to Work (CPPW) grantees for Healthy Communities By Design.&nbsp;&nbsp; Worked with Portland, Gresham, and Metro.<br><br>Important to consider who has the opportunity, and where is the opportunity.&nbsp; Define the geography and the people, and focus on civic engagement.&nbsp; <br><br>Keep an eye on the East Metro Connections Plan developed by 4 E. County cities to improve economic development by making it easier for freight to move product.&nbsp; As part of the plan, will be developing a project prioritization framework.&nbsp; Ultimately, the recommendation will go for decision to elected officials.&nbsp; <br><br>Make sure zoning codes allow FOOD PRODUCTION &amp; DISTRIBUTION, HEALTHY RETAIL e.g. market gardens, food distribution coops, farm stands, and Community-supported agriculture (CSAs)<br><br>Suggested I connect with the following on equity issues:<br><ul><li>Rey Espana at NAYA</li><li>Midge Purcell at Urban League</li><li>IRCO</li><li>African American Health Coalition</li><li>El Programa (Rachel Banks)</li><li>Emily Hicks (Pdx Parks, Community Gardens)<br></li><li>OPAL</li><li>microenterprise re healthy retail:&nbsp; Hacienda CDC, PDC</li><li>Coalition to End Hunger</li><li>Pastor Hardy at Highland Baptist Church</li><li>Eugin Rachid -&nbsp; faith leader <br></li></ul>Sarah Schooley, TSP, may be a resource for other cities on Project Prioritization Criteria<br>
END_TEXT
}
    communications << { date: '40982', duration: '60', contact_type: 'In-person Meeting',  organization_type: 'Other', contacts: "Anita Yap at , ", cities: "", staff: "Beth Kaye, Noelle Dobson", topics: "Introduction To HEAL Cities, Land Use & Transportation, Access to Healthy Food Options, Other", notes: <<END_TEXT
Anita was formerly the Planning Director at the City of Damascus.&nbsp; <br><br>Invited Anita to sit on the Kitchen Cabinet for HEAL Cities<br><br>She suggested that I follow up with the Oregon County Planning Directors Association - meet monthly, to talk about the APA and land conservation and development- chaired by rick Sneed of Madras, Oregon, and Kris Bentley of Benton County.&nbsp; OCPDA might public an issue devoted to Planning and Health<br><br>Recommended that we provide an incentive or carrot:&nbsp; if you have these policies in your Comp Plan, you will be well-positioned to receive the following benefits: X, Y, Z<br><br>Suggested netowrking gthrough the faith community and the schools<br><br>Cities adopt strategic plans that prioritize staff allocation, implementation of projects for the year<br><br>Suggested contacting the Oregon Planning Institute - Rick Stevens<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - the group was started by the Lane Council of Governments<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - we could offer to do a HEAL panel<br><br>Suggested posting in the Oregon Planners' Journals&nbsp; --&nbsp; Betsy Sheckler, ed.&nbsp; <br><br>Recommended using the LOC publication: Spot Light<br><br>bend has a fledgling Food Policy COuncil.<br><br>Suggests talking about Damascus and Keizer through stories/case studies<br>
END_TEXT
}
    communications << { date: '40984', duration: '90', contact_type: 'In-person Meeting',  organization_type: 'Participating City', contacts: "Stacy Humphrey at City of Gresham, ", cities: "Gresham, OR", staff: "Beth Kaye", topics: "Introduction To HEAL Cities, Land Use & Transportation, Access to Healthy Food Options, Other", notes: <<END_TEXT
Stacy had recently shepherded a set of code changes that included many HEAL-type policies through the Gresham City Council.&nbsp;&nbsp; She was very generous with her materials and her strategy. <br><br>Mayor Bemis is a self-made man, a restaurant owner with a GED.&nbsp; he does not believe that obesity is an issue for government.&nbsp; Champion was Councilor Widmark.&nbsp; <br><br>At an early worksession, SH made these points:<br>1. Obesity is an issue in the US, in OR, and in Gresham<br>2. The built environment plays a role<br>3. Disparities in a built environment will reinforce and maintain existing inequitable health disparities<br><br>Shied away from words ""choice;healthy, obesity"" used ""options, continuum"" quite a bit<br><br>Did not bring statistics, or a scary height/weight report.&nbsp; No numbers at all in the high level meeting.&nbsp; She had a technical advisory group, and a stakeholder group (Human SOlutions, Sno Cap, Gresham-Barlow School District, Rockwood CATeam, El Program).&nbsp; <br><br>Used 'best practices' frame. What would it take for Gresham to reflect the national best practice?&nbsp; Conducted survey of policies adopted by peer cities.&nbsp; Built on what government was already doing, so that new investment is not an additional line item.&nbsp; <br><br>two main hurdles:&nbsp; financial realities, and would changes move the City into an inappropriate role<br><br>She received some help from the Urban Planning Director of Linn County.&nbsp; Looked at Land use, transportation, Parks, food, and community health.&nbsp; <br><br>Gresham is part of Metro.&nbsp; Amendments will also Gresham to meet land use and active transit goals. <br><br>Gresham staff were not in a position to do advocacy work.&nbsp; Used community leaders to say the most robust messages, e.g. Heidi Guinan from and Hector Asuna (?) of El Programa (?) and Catherine Potter<br><br>She suggested I contact Elise Skolnick at the City of Damascus, and Kia Selley, an urban planning director from ???<br><br>Council very interested; wanted to know where cooking classes would be held.&nbsp; Fortunately, there were grant dollars available.&nbsp; The Mayor probably would have rejected spending government funds.<br><br>
END_TEXT
}
    communications << { date: '40977', duration: '30', contact_type: 'E-mail Exchange',  organization_type: 'Other', contacts: "Gregoire Vion at , ", cities: "", staff: "Beth Kaye", topics: "Other", notes: <<END_TEXT
Ararnged to purchase design for CCPHA HEAL Cities CA Campaign website.<br>
END_TEXT
}
    communications << { date: '40976', duration: '420', contact_type: 'In-person Meeting',  organization_type: 'Other', contacts: "Charlotte Dickson at California Center for Public Health Advocacy, ", cities: "", staff: "Beth Kaye, Noelle Dobson", topics: "Introduction To HEAL Cities, General Information About Obesity, Land Use & Transportation, Access to Healthy Food Options, Shared Use, Workplace Wellness, Other", notes: <<END_TEXT
CD just did a webinar with Kelly Brownell of the Rudd Center at Yale.&nbsp; Her research confirmed that the use of the word ""obesity""is problematic.&nbsp; HEAL CC is not about weight.&nbsp; It is about health, and the suffering people experience from chronic disease. <br><br>Focus messages on kids and seniors.&nbsp; I don't want our kids to be the first generation in this country's history to have shorter lives than their parents.&nbsp; <br><br>If you have a&nbsp; lot of overweight kids in a community, that's a sign that something is missing.&nbsp;&nbsp; What do we have to bring in to the community so that kids will be fit and healthy?&nbsp; We are making choices all the time.&nbsp; However, in order to make a choice, you have to have an option.&nbsp; <br><br>Discussed website, sections, site map, search function, design, programming.&nbsp; Charlotte offered to put us in contact with her web designer, Gregoire Vion, and her logo designer, Linda ****.<br><br>CD talked with Mike Miller of Brown Miller communications, CCPHA's communications consultant.&nbsp; He sugggested that the HEAL Campaigns have a family of brands and logos.&nbsp;&nbsp; We are welcome to use CCPHA's content.&nbsp; <br><br>Danielle DeReuyter Williams on her staff handles social media (Twitter, Facebook).&nbsp; <br>
END_TEXT
}
    communications << { date: '40975', duration: '90', contact_type: 'In-person Meeting',  organization_type: 'Statewide Organization', contacts: "Luci Longoria at Oregon Health Authority, ", cities: "", staff: "Beth Kaye, Noelle Dobson", topics: "Introduction To HEAL Cities, Other, Coordination with County Health Departments", notes: <<END_TEXT
Luci described herself as a community organizer who likes to bring people power to important issues, and to educate policy makers.&nbsp; <br>Luci agreed to forward the result of OHA's healthy communities message testing to me for use in HEAL materials<br><ul><li>People want to be healthier.&nbsp; They need access to healthier options.</li><li>Make Healthy Opportunities accessible to more people. </li></ul><br>OHA has an Office of Equity &amp; Inclusion.&nbsp; It has formally partnered with PEI to support three regional Health Equity Coalitions:&nbsp; <br><ol><li>the HOPE Coalition (includes Marion, Multnomah, Washington, &amp; Clackamas Counties)</li><li>Linn-Benton Health Equity Coalition</li><li>Let's talk Diversity in Jefferson County/Central OR</li></ol>The coalaitions are reviewing existing assessment data - the best available data.&nbsp; We can assume disparities in health outcomes; the coalitions are tasked with finding and evaluating potential solutions<br><br>There are 12 County Health Departments.&nbsp; Each is performing a fairly broad Health Assessment.&nbsp; 9 have Vista volunteers coordinating worksite wellness committees. <br><br>the Tribes are pretty diverse. <br><br>Discussed doing city specific or county-specific fact sheets, or population-specific factsheets.&nbsp; Data is available through the Public Health Division.&nbsp; <br><br>Would be willing to serve on a review panel/kitchen cabinet for HEAL Oregon materials.&nbsp; <br><br>OHA will be making new funding available for Healthy Communities Grants. <br><br>OHA expects to be contracting with OPHI re Worksite Wellness.<br><br>In the next month or so, OHA Public Health Division will be talking about its strategic framework.&nbsp; <br><br>OHA is part of the Healthy Kids Learn Better coalition (HKLB).&nbsp; This is a statewide group that promotes worksite wellness within schools.&nbsp; It has to influence the policy of each school district.&nbsp; It wants to affect the school benefit system.&nbsp; <br><br>Luci suggested that I contact the office of Equity &amp; Inclusion, become familiar with the Healthy Community Programs, and do a policy scan/culture scan.&nbsp; She also suggested that I speak with someone at Metro, and with the Oregon Sustainable Transportation Initiative.&nbsp; <br><br>
END_TEXT
}
    communications << { date: '40980', duration: '15', contact_type: 'Telephone Call',  organization_type: 'Regional Organization', contacts: "Mara Gross at Coalition for a Livable Future, ", cities: "", staff: "Beth Kaye", topics: "Introduction To HEAL Cities, Land Use & Transportation, Other", notes: <<END_TEXT
BK knew Mara and CLF from her previous work.&nbsp; Mara suggested that BK contact Kris Smock re data inputs to Equity Atlas 2.0 data<br>
END_TEXT
}
    communications << { date: '40973', duration: '90', contact_type: 'In-person Meeting',  organization_type: 'Participating City', contacts: "Patty Brescia at City of Wilsonville, , Jen Massa Smith at City of Wilsonville, ", cities: "Wilsonville, OR", staff: "Beth Kaye, Noelle Dobson", topics: "Introduction To HEAL Cities, Land Use & Transportation, Access to Healthy Food Options, Shared Use, Coordination with County Health Departments", notes: <<END_TEXT

END_TEXT
}
    communications << { date: '41344', duration: '10', contact_type: 'E-mail Exchange',  organization_type: 'Participating City', contacts: "Melissa Peterson at Latino Health Alliance, ", cities: "Salem, OR", staff: "Beth Kaye", topics: "Access to Healthy Food Options, Other", notes: <<END_TEXT
Follow up re setting a time to meet. &nbsp;Mayor Peterson is&nbsp;<span style=""font-size: 11.0pt;"">chairing the development of the food-related
sessions at the Oregon Mayors' Association conference this summer. &nbsp;Linda Cate makes her appointments. &nbsp;</span>
END_TEXT
}
    communications << { date: '41344', duration: '15', contact_type: 'Telephone Call',  organization_type: 'Participating City', contacts: "Tamera Tlustos-Arnold at KP, ", cities: "Fairview, OR, Troutdale, OR, Wood Village, OR", staff: "Beth Kaye", topics: "Other", notes: <<END_TEXT
Discussed Presentation to 3 Counties meeting<div>Directed me to send PowerPoints to nursetamie@comcast.net</div>
END_TEXT
}
    communications << { date: '41345', duration: '10', contact_type: 'Telephone Call',  organization_type: 'Participating City', contacts: "Linda Cate at City of Salem, ", cities: "Salem, OR", staff: "Beth Kaye", topics: "Introduction To HEAL Cities, Other, Let's Move Cities Towns & Counties", notes: <<END_TEXT
Made lunch appointment wtih the Mayor for Thursday, 4/4/13
END_TEXT
}
    communications << { date: '41341', duration: '45', contact_type: 'Telephone Call',  organization_type: 'Statewide Organization', contacts: "JoAnn Ghelfi at League of Oregon Cities, ", cities: "", staff: "Beth Kaye", topics: "Land Use & Transportation, Access to Healthy Food Options, Other", notes: <<END_TEXT
Discussed participation in LOC 2013 conferences.<div><br><div>OCCMA conference is full - bringing in experts on ethics, finance, and programming for young leaders cohort</div><div><br></div><div>Mayors conference will have track on agriculture/food. &nbsp;Suggested that presentation @ Mayor's conference could be expanded for LOC Annual conference. &nbsp;I told her of my connection with Salem Mayor.&nbsp;</div><div><br></div><div>Discussed concurrent workshop slot for Roundtable discussions.</div><div>Discussed sustainability issue raised by Albany CM Hare- requires expanded &nbsp;public involvement/unconventional partnerships.</div><div>Discussed recognition events for participating cities: JoAnne suggested that I alert Mike immediately and consider &nbsp;holding event at Mayors Conference</div><div>Discussed display featuring participating cities</div></div><div><br></div><div>Next steps:</div><div><ul><li>Beth contact Mike McCauley re recognition events</li><li>Beth talk to Karli and designer re ordering display with map to show participating cities</li><li>Beth follow up with Salem mayor</li></ul></div>
END_TEXT
}
    communications << { date: '41341', duration: '10', contact_type: 'Telephone Call',  organization_type: 'Participating City', contacts: "Paul Hennon Hennon at City of Tualatin Community Services, ", cities: "Tualatin, OR", staff: "Beth Kaye", topics: "Other", notes: <<END_TEXT
Paul will draft resolution for my review, using Oregon model.<div>BK unavailable 3/25. Next Tualatin City Council date is 4/8. Tentatively set that as date for resolution, if Lou Ogden is in town.</div><div><br></div><div>Paul and Tracy Weidt (NLC) have been trading VM. &nbsp;If Tracy is not available, BK will present on LMCTC. &nbsp;</div><div><br></div><div><br></div>
END_TEXT
}
    communications << { date: '41341', duration: '165', contact_type: 'Site Visit',  organization_type: 'Participating City', contacts: "Tamera Tlustos-Arnold at KP, , Allan Berry at City of Fairview, ", cities: "Fairview, OR, Gresham, OR, Troutdale, OR, Wood Village, OR", staff: "Beth Kaye", topics: "Land Use & Transportation, Access to Healthy Food Options, Shared Use, Other", notes: <<END_TEXT
Toured Fairview (Gresham boundary), Troutdale, and Wood Village to Marine Drive. &nbsp; Saw property Yoshida intends to develop. &nbsp;<div><br></div><div>Tamie says Fairview was well-planned 15 years ago but stopped developing while its neighbors continued to grow<br><div>&nbsp;</div><div>Some ideas: &nbsp;</div><div><ul><li>Fairview Days at Metro's Blue Lake Park, including disc golf tournament</li><li>Addressing breaks in bike paths</li><ul><li>issues re airfield, RR bridge, narrowing streets</li><li>Goal is to expand connectivity- cold connect Salish Lakes park to Springwater Trail</li></ul><li>Better park signage</li><li>Community garden on two plots outside the back of City Hall</li><li>Learning Garden at former garden site by elementary school</li><li>Fairview would like KP to partner on Salish Park to obtain a Metro Education grant</li></ul></div><div><br></div><div>Next steps:</div><div><ul><li>Tour part 2 on the 21st, part 3 on 28th</li><li>Tamie to contact beth re 3 cities meeting on 3/14 evening</li><li>Allen to make detailed maps available</li><li>Allen and Tamie to draft resolution</li><li>Beth to check with KP, ID other possible partners for Salish Park Metro Ed grant</li><li>Beth to ID potential partner/curriculum for school garden project</li></ul></div><div><br></div><div><br></div><div><br></div></div>
END_TEXT
}
    communications << { date: '41340', duration: '10', contact_type: 'E-mail Exchange',  organization_type: 'County Health Department', contacts: "Pam Hutchinson at Marion COunty Health Department, ", cities: "Salem, OR", staff: "Beth Kaye", topics: "Coordination with County Health Departments", notes: <<END_TEXT
Checking in on progress with Marion County Cities, upcoming CHiP meeting
END_TEXT
}
    communications << { date: '41340', duration: '15', contact_type: 'E-mail Exchange',  organization_type: 'County Health Department', contacts: "Misha Peel at Polk County HD, ", cities: "", staff: "Beth Kaye", topics: "Introduction To HEAL Cities, Coordination with County Health Departments", notes: <<END_TEXT

END_TEXT
}
    communications << { date: '41338', duration: '30', contact_type: 'Telephone Call',  organization_type: 'Statewide Organization', contacts: "Mike McCauley at League of Oregon Cities, ", cities: "", staff: "Beth Kaye", topics: "Shared Use, Workplace Wellness, Other, Coordination with County Health Departments", notes: <<END_TEXT
I spoke with Mike re our meeting with CIS, getting on the program for the various conferences, the Advisory Committee, running the KaBOOM! grant opportunity by the Advisory Committee, webinar subjects (he suggested joint use and how to get school districts to the table), and FEAST. &nbsp;He thought FEAST would make a good topic for an article in the LOC magazine. &nbsp;
END_TEXT
}
    communications << { date: '41338', duration: '10', contact_type: 'E-mail Exchange',  organization_type: 'Statewide Organization', contacts: "Patty Brescia at City of Wilsonville, , Stephanie Redman at Oregon Recreation & Park Association, ", cities: "", staff: "Beth Kaye", topics: "Other", notes: <<END_TEXT
Patty will submit a proposal to Stephanie Redman to present on HEAL at the ORPA September conference.
END_TEXT
}
    communications << { date: '41334', duration: '20', contact_type: 'E-mail Exchange',  organization_type: 'Participating City', contacts: "Patty Brescia at City of Wilsonville, ", cities: "Wilsonville, OR", staff: "Beth Kaye", topics: "Other", notes: <<END_TEXT
Planning for presentation to Clackamas County Mayors (3/21)
END_TEXT
}
    communications << { date: '41334', duration: '10', contact_type: 'E-mail Exchange',  organization_type: 'Regional Organization', contacts: "Joseph Santos-Lyons at APANO (Asian Pacific American Network of Oregon), ", cities: "", staff: "Beth Kaye", topics: "Other", notes: <<END_TEXT
HOPE (regional health equity) Coalition is beginning project to videotape real people describing their experience re health care. &nbsp;OPHI will join as a sponsor. &nbsp;Wants to develop a library of authentic voices. &nbsp;Perhaps HEAL Cities should also be a sponsor?&nbsp;
END_TEXT
}
    communications << { date: '41334', duration: '75', contact_type: 'In-person Meeting',  organization_type: 'Participating City', contacts: "Tamera Tlustos-Arnold at KP, , Allan Berry at City of Fairview, ", cities: "Fairview, OR, Gresham, OR, Troutdale, OR, Wood Village, OR", staff: "Beth Kaye", topics: "Introduction To HEAL Cities, Land Use & Transportation, Access to Healthy Food Options, Shared Use, Workplace Wellness, Let's Move Cities Towns & Counties", notes: <<END_TEXT
2nd meeting with Tamie, 1st meeting with Allan (from Manchester England). &nbsp;Tamie has already signed Fairview up for LMCTC. &nbsp;I told her I could provide technical assistance and connect her with HHS.&nbsp;<div><br></div><div>Tamie told AB her motivation for this work from working with overweight kids. ExplainedFairf Molly Haynes referral to BK</div><div><br></div><div>Went over HEAL materials with both for the first time. &nbsp;AB very interested because Fairview's applications for ODOT and Metro funding hurt by inability to demonstrate activities to improve healthy food access or active transit options. &nbsp;AB wants those points! &nbsp;</div><div><br></div><div>Fairview is working on its Transportation System Plan. &nbsp;Has received extension. &nbsp;Wants to get a TGM grant.</div><div><br></div><div>AB asked many questions about availability of implementation funds. &nbsp;Example: Fairview recently spent $200k on Salish Ponds park. &nbsp;Would like to get grant from Metro - needs an Education partner. &nbsp;Would KP do this? &nbsp;</div><div><br></div><div>If KP had funding pot &nbsp;for Fabulous Cities, it would be a real incentive for Fairview to make more HEAL changes.&nbsp;</div><div><br></div><div>City has had one community garden- now moribund. &nbsp;Tami and Allan discussed possible relocation of garden, or addition of new garden. &nbsp;BK suggested that city explore community partnerships to improve sustainability of project. &nbsp;</div><div><br></div><div>Discussion re need for bike path to Reynolds HS. &nbsp;Founders prioritize safe routes to elementary schools. &nbsp;BK proposed touching base with local bike community to lead caravan.</div><div><br></div><div>Big demand for park facilities, e.g. Soccer pitch. &nbsp;Funding? &nbsp;Explained that we would highlight potential grants on HEAL website.&nbsp;</div><div><br></div><div>Farmer's market goes only part of year. &nbsp;Has moved from public to private land- now coming back to public land. &nbsp;No code language establishing the FM is allowed use. &nbsp;</div><div><br></div><div>Fairview will be undertaking Code Review. &nbsp;</div><div><br></div><div>Tamie want to connect with Judy Shiprack at METRO re LMCTC. &nbsp;</div><div><br></div><div>Discussed how to involve community in prioritization. &nbsp;Parks Committee and other committees not representative of neighborhoods or populations. &nbsp;Members not recruited- application process. &nbsp;Tamie will bring reform ideas to Council. &nbsp;BK proposed reaching out to community-based orgs, e.g. El Programa Hispano. &nbsp;Allan surprised at concept. &nbsp;</div><div><br></div><div>Next steps:&nbsp;</div><div><ul><li>Alllan to review materials.</li><li>Allan to take Tamie and BK on tour on Friday morning in March (3/8?)</li><li>Tamie to follow up re getting HEAL on 3 City meeting agenda (Troutdale, Wood Village)</li><li>Tamie thinks Gresham is already a HEAL City</li><li>Tamie wants Resolution on the agenda 3/20 or 3/4/3. &nbsp;Allan unable to ID likely opponents</li><li>BK advised theme of healthy community for our kids</li></ul></div><div><br></div><div><br></div>
END_TEXT
}
    communications << { date: '41334', duration: '45', contact_type: 'E-mail Exchange',  organization_type: 'Participating City', contacts: "Jim Fairchild at , ", cities: "Dallas, OR", staff: "Beth Kaye", topics: "Other", notes: <<END_TEXT
Discussed strategy for bringing HEAL resolution to Dallas City Council: materials to distribute, policies to highlight, who should be in attendance. Will need follow up call to,discuss participation by Polk County HD, arrive at decision about policy list, set dates, and est. whether BK should attend.
END_TEXT
}
    communications << { date: '41332', duration: '10', contact_type: 'E-mail Exchange',  organization_type: 'Statewide Organization', contacts: "Heather Matthews at CIS, , Jan Noland at CIS, ", cities: "", staff: "Beth Kaye, Dawn Powell", topics: "Workplace Wellness, Other", notes: <<END_TEXT
Coordinating tomorrow's meeting.
END_TEXT
}
    communications << { date: '41332', duration: '5', contact_type: 'Telephone Call',  organization_type: 'Participating City', contacts: "Jolynn Becker at City of Banks, ", cities: "Banks, OR", staff: "Beth Kaye", topics: "Other", notes: <<END_TEXT
Scheduling
END_TEXT
}
    communications << { date: '41332', duration: '15', contact_type: 'E-mail Exchange',  organization_type: 'Statewide Organization', contacts: "Barbara Prowe at Oregon Coalition of Health Care Purchasers (OCHCP), ", cities: "", staff: "Beth Kaye", topics: "Introduction To HEAL Cities, Other, Coordination with County Health Departments", notes: <<END_TEXT

END_TEXT
}
    communications << { date: '41332', duration: '30', contact_type: 'E-mail Exchange',  organization_type: 'Participating City', contacts: "Patty Brescia at City of Wilsonville, ", cities: "Wilsonville, OR", staff: "Beth Kaye", topics: "Other", notes: <<END_TEXT
Editing text of proclamation per Assistant City Manager's request<div><br></div>
END_TEXT
}
    communications << { date: '41332', duration: '10', contact_type: 'Telephone Call',  organization_type: 'Participating City', contacts: "Tamera Tlustos-Arnold at KP, , Allan Berry at City of Fairview, ", cities: "Fairview, OR", staff: "Beth Kaye", topics: "Introduction To HEAL Cities, Other", notes: <<END_TEXT
Set up meeting with Allan Berry for 3/1
END_TEXT
}
    communications << { date: '41331', duration: '5', contact_type: 'E-mail Exchange',  organization_type: 'Participating City', contacts: "Julie Ludemann at City of Tualatin, ", cities: "Tualatin, OR", staff: "Beth Kaye", topics: "Other", notes: <<END_TEXT
ReScheduling class&nbsp;
END_TEXT
}
    communications << { date: '41331', duration: '15', contact_type: 'E-mail Exchange',  organization_type: 'Statewide Organization', contacts: "Stephanie Kennedy at Oregon chapter of the American Planning Association, ", cities: "", staff: "Beth Kaye", topics: "Introduction To HEAL Cities, Other", notes: <<END_TEXT
Contacted re having an info table at the Oregon APA Conference, May 30-31.
END_TEXT
}
    communications << { date: '41326', duration: '15', contact_type: 'E-mail Exchange',  organization_type: 'Participating City', contacts: "Patty Brescia at City of Wilsonville, ", cities: "Wilsonville, OR", staff: "Beth Kaye", topics: "Other", notes: <<END_TEXT
Confirmed my participation in program at Clackamas County Cities Association &nbsp;dinner on 3/21; discussed other presenters and what info re HEAL Cities would be relevant
END_TEXT
}
    communications << { date: '41319', duration: '10', contact_type: 'Telephone Call',  organization_type: 'Participating City', contacts: "Patty Brescia at City of Wilsonville, ", cities: "", staff: "Beth Kaye", topics: "Other", notes: <<END_TEXT
Invited me to present at Clackamas Cities Association dinner on 3/21.
END_TEXT
}
    communications << { date: '41330', duration: '30', contact_type: 'E-mail Exchange',  organization_type: 'Participating City', contacts: "Patty Brescia at City of Wilsonville, ", cities: "Wilsonville, OR", staff: "Beth Kaye", topics: "Other", notes: <<END_TEXT
Wording of Draft Resolution - Patty sent me a draft to review
END_TEXT
}
    communications << { date: '41316', duration: '10', contact_type: 'E-mail Exchange',  organization_type: 'Participating City', contacts: "Patty Brescia at City of Wilsonville, ", cities: "Wilsonville, OR", staff: "Beth Kaye", topics: "Introduction To HEAL Cities, Other", notes: <<END_TEXT
Explained timeline for joining campaign. &nbsp;Also left VM.&nbsp;
END_TEXT
}
    communications << { date: '41313', duration: '10', contact_type: 'Telephone Call',  organization_type: 'Participating City', contacts: "Mark C. Ottenad at City of Wilsonville, ", cities: "Wilsonville, OR", staff: "Beth Kaye", topics: "Introduction To HEAL Cities, Other", notes: <<END_TEXT
Reviewed HC Campaign and described way to join. &nbsp;Took contact info for Patty Brescia.&nbsp;
END_TEXT
}
    communications << { date: '41312', duration: '10', contact_type: 'E-mail Exchange',  organization_type: 'Participating City', contacts: "Mark C. Ottenad at City of Wilsonville, ", cities: "Wilsonville, OR", staff: "Beth Kaye", topics: "Introduction To HEAL Cities, Other", notes: <<END_TEXT
Wilsonville is interested in becoming a HEAL City in order to improve its chances to receive a grant.<div>Mark remembered my presentation on HEAL Cities at NLC conference<br><div><br></div><div>Main contact will be Patty Brescia who leads Ec Dev</div></div>
END_TEXT
}
    communications << { date: '41330', duration: '10', contact_type: 'E-mail Exchange',  organization_type: 'Regional Organization', contacts: "Kathryn M Clift at Kaiser Foundation Health Plan, Program Offices, , Dawn Hanson at Cowlitz-Wahkiakum Council of Governments, , Rachel E Burdon at Kaiser Permanente Community Benefit, ", cities: "Kelso, WA, Longview, WA", staff: "Beth Kaye", topics: "Other", notes: <<END_TEXT
Dawn Hanson spoke to a consultant who suggested that she contact Cathy Wasserman at the State of Wa DOH for Cowlitz County data. &nbsp;&nbsp;<div>I let our KP associates know. &nbsp;</div>
END_TEXT
}
    communications << { date: '41330', duration: '10', contact_type: 'Telephone Call',  organization_type: 'Participating City', contacts: "Julie Manning at City of Corvallis, ", cities: "Corvallis, OR", staff: "Beth Kaye", topics: "Other", notes: <<END_TEXT
Called City Hall. &nbsp;Left VM with her assistant at hospital to troubleshoot apparent communication difficulties. &nbsp;(I am not sure my e-mails are reaching her.) &nbsp;
END_TEXT
}
    communications << { date: '41330', duration: '10', contact_type: 'E-mail Exchange',  organization_type: 'Participating City', contacts: "Jim Fairchild at , ", cities: "Dallas, OR", staff: "Beth Kaye", topics: "Other, Coordination with County Health Departments", notes: <<END_TEXT
Asked what help he needed to bring Dallas into the Campaign. &nbsp;Said that I wanted to include Dallas in article for the LOC magazine. &nbsp;Mentioned new HC coordinator hiring at Polk COunty HD.&nbsp;
END_TEXT
}
    communications << { date: '41330', duration: '10', contact_type: 'Telephone Call',  organization_type: 'County Health Department', contacts: "Randi Philips, MS at Polk County Health Department, ", cities: "Dallas, OR", staff: "Beth Kaye", topics: "Other, Coordination with County Health Departments", notes: <<END_TEXT
New Polk County Healthy COmmunities Coordinator, Misha Peel, will start on Wednesday, 2/27/13. &nbsp;Randi suggested that I email her then to set up a meeting re HEAL Cities. &nbsp;
END_TEXT
}
    communications << { date: '41324', duration: '45', contact_type: 'E-mail Exchange',  organization_type: 'Participating City', contacts: "Tamera Tlustos-Arnold at KP, ", cities: "Fairview, OR, Gresham, OR, Troutdale, OR, Wood Village, OR", staff: "Beth Kaye", topics: "Land Use & Transportation, Access to Healthy Food Options, Shared Use, Workplace Wellness, Other, Coordination with County Health Departments", notes: <<END_TEXT
Follow up to today's meeting; summarize next steps re setting up a meeting with Fairview Planning Director, getting a sense of the community's priorities, etc.&nbsp;<div><br></div>
END_TEXT
}
    communications << { date: '41324', duration: '60', contact_type: 'In-person Meeting',  organization_type: 'Participating City', contacts: "Tamera Tlustos-Arnold at KP, ", cities: "Fairview, OR", staff: "Beth Kaye", topics: "Introduction To HEAL Cities, Access to Healthy Food Options, Other, Let's Move Cities Towns & Counties", notes: <<END_TEXT
Had a very positive first meeting with Tamie, who is a pediatric nurse at KP in Rockwood. &nbsp;She runs the juvenile obesity clinic and is interested in changing some of the environmental factors that contribute to obesity. &nbsp;<div><br></div><div>She was elected recently to the Fairview City Council. &nbsp;She began to ask around to find out how to make the changes she wants to make. &nbsp;She signed Fairview up for LMCTC, and then Molly Haynes referred her to me.</div><div><br></div><div>Tamie was dismayed to discover that Fairview had an 11 year old Parks &amp; Rec plan that had never been implemented or reviewed, even though it should have been reviewed every 5 years. &nbsp;Both the Development Director and the City Planner are new hires and unfamiliar with the local political history. &nbsp;</div><div><br></div><div>The Fairview Mayor has convened a Vision 2020 citizen committee. Tamie is not on the committee (all citizens) but plans to sit in. &nbsp;This committee will make some recommendations for the City's future.</div><div><br></div><div>Tamie wants to make many changes. &nbsp;A challenge will be to prioritize among them. &nbsp;</div><div><br></div><div>We looked at the HEAL Cities NW website and reviewed Is Your City A HEAL City? and the Policy menu. &nbsp;</div><div><br></div><div>next steps: &nbsp;meet (Friday morning 3/1?) with the Fairview Development Director.</div><div>Prepare to make a presentation to the Tri-City Meeting in 3-4 months. &nbsp;(Includes Wood Village and Troutdale, as well as Gresham.)&nbsp;</div><div><br></div><div>I promised to send her the name of Gresham's planner.&nbsp;</div>
END_TEXT
}
    communications << { date: '41319', duration: '15', contact_type: 'E-mail Exchange',  organization_type: 'KP', contacts: "Tamera Tlustos-Arnold at KP, ", cities: "Fairview, OR, Gresham, OR, Troutdale, OR, Wood Village, OR", staff: "Beth Kaye", topics: "Introduction To HEAL Cities, Other", notes: <<END_TEXT
Set up meeting in East County for the week of 2/18/13
END_TEXT
}
    communications << { date: '41319', duration: '15', contact_type: 'E-mail Exchange',  organization_type: 'Other', contacts: "", cities: "", staff: "Beth Kaye", topics: "Other", notes: <<END_TEXT
Cathy offered to introduce me to her network of Parks and Recreation staff across Oregon. &nbsp;
END_TEXT
}
    communications << { date: '41113', duration: '90', contact_type: 'In-person Meeting',  organization_type: 'Regional Organization', contacts: "Steve Rudman at Home Forward (formerly, the Housing Authority of  Portland), ", cities: "Fairview, OR, Gresham, OR, Troutdale, OR, Wood Village, OR", staff: "Beth Kaye", topics: "", notes: <<END_TEXT
Suggested I contact:<div>&nbsp;Jeff Kennel re impact of community garden on neighborhood,&nbsp;</div><div>&nbsp;Mr. Sang Ahn @ McDonald Jacobs (?)</div>
END_TEXT
}
    communications << { date: '41113', duration: '60', contact_type: 'In-person Meeting',  organization_type: 'Regional Organization', contacts: "Heidi Guenin at Upstream Public Health, ", cities: "", staff: "Beth Kaye", topics: "Introduction To HEAL Cities, Land Use & Transportation, Other", notes: <<END_TEXT
Suggested I contact Will VanLieu with the Westside Transportation Alliance in Tigard<div>CAC</div><div>BTA</div>
END_TEXT
}
    communications << { date: '41110', duration: '30', contact_type: 'Telephone Call',  organization_type: 'Statewide Organization', contacts: "", cities: "", staff: "Beth Kaye", topics: "Introduction To HEAL Cities, Other", notes: <<END_TEXT
Discussed HEAL Cities Campaign table at trade show<div>Opportunity to get on program at League Conference</div><div>Article about HEAL Cities Campaign for Local Focus Magazine: &nbsp;shoot for September issue</div><div>Audience for Local Focus is Mayors and Councillors</div>
END_TEXT
}
    communications << { date: '41100', duration: '90', contact_type: 'In-person Meeting',  organization_type: 'Statewide Organization', contacts: "Emily Wong at Oregon Health Authority Office of Equity and Incusion, ", cities: "", staff: "Beth Kaye", topics: "Introduction To HEAL Cities, Other, Coordination with County Health Departments", notes: <<END_TEXT
Discussed work that OHA Office of Equity and Inclusion has been doing<div>OE&amp;I holding policy forums: what does ""healthy"" mean to you and your community</div><div><br></div><div>each district has strengths and challenges</div><div><br></div><div>NACHO-certified storytelling: &nbsp;tell us about a time that your family was healthy and everything was right</div><div><br></div><div>top 6:</div><div>family based health</div><div>physical health</div><div>mental/spiritual/social health</div><div>risk of isolation</div><div>intergenerational&nbsp;</div><div><br></div><div>suggested I contact:</div><div>Claudia Maria Vargas&nbsp;</div><div>Marie (Hood River)</div><div><br></div><div>Other equity coalitions in Linn-Benton and Jefferson counties</div>
END_TEXT
}
    communications << { date: '41095', duration: '90', contact_type: 'Telephone Call',  organization_type: 'Other', contacts: "Charlotte Dickson at California Center for Public Health Advocacy, ", cities: "", staff: "Beth Kaye", topics: "Other, Let's Move Cities Towns & Counties", notes: <<END_TEXT
Bi-weekly conference call with HEAL teams
END_TEXT
}
    communications << { date: '41089', duration: '360', contact_type: 'In-person Meeting',  organization_type: 'Other', contacts: "Charlotte Dickson at California Center for Public Health Advocacy, ", cities: "", staff: "Beth Kaye, Noelle Dobson", topics: "Introduction To HEAL Cities, General Information About Obesity, Land Use & Transportation, Access to Healthy Food Options, Shared Use, Workplace Wellness, Other, Coordination with County Health Departments", notes: <<END_TEXT
intensive worksession<div>significant focus on equity challenges<br><div>Planning for August 9 HCC Conclave in Oakland</div></div>
END_TEXT
}
    communications << { date: '41117', duration: '30', contact_type: 'Telephone Call',  organization_type: 'Other', contacts: "Charlotte Dickson at California Center for Public Health Advocacy, ", cities: "", staff: "Beth Kaye, Noelle Dobson", topics: "Other", notes: <<END_TEXT
Discussed how to speak the language of jobs, economic development<div><br></div><div>Discussed coordination with League of Oregon Cities</div><div><br></div><div>If we do nothing, 1 in 3 kids will develop diabetes. 1 in 2 African American, Native American and Latino kids</div>
END_TEXT
}
    communications << { date: '41085', duration: '20', contact_type: 'Telephone Call',  organization_type: 'Statewide Organization', contacts: "Joseph Santos-Lyons at APANO (Asian Pacific American Network of Oregon), ", cities: "", staff: "Beth Kaye", topics: "Introduction To HEAL Cities, Other", notes: <<END_TEXT
Follow-up:<div>E-mailed JSL materials about HEAL Cities</div><div><br></div><div>JSL is coordination of the HOPE Coalition for Multnomah, Washington, Clackamas, and Marion Counties (confirm scope?), one of 4 Health Equity coalitions set up by OHA to represent communities of color in health care reform discussions and other health advocacy</div><div><br><div>Discussed equity challenges with HEAL Cities Campaign</div><div><br></div><div>JSL agreed to introduce me to the other three health equity coalitions in the state</div></div>
END_TEXT
}
    communications << { date: '41082', duration: '60', contact_type: 'In-person Meeting',  organization_type: 'Other', contacts: "Wendy Willis at National Policy Consensus Center, ", cities: "", staff: "Beth Kaye", topics: "Introduction To HEAL Cities, Other", notes: <<END_TEXT
Wendy suggested I contact:<div>the former mayor of Lincoln City who rejuvenated its Farmers Market</div><div>Hermiston</div><div>Crystal Swann at LOC</div><div>Larry Wallack/Linda Netterkoven re messaging and contacts</div><div>Joe Cortwright</div><div><br></div><div>She works with the Institute for Sustainable Solutions</div><div>Data overlays: &nbsp;rapid growth, rapidly changing environment</div>
END_TEXT
}
    communications << { date: '41081', duration: '60', contact_type: 'In-person Meeting',  organization_type: 'Other', contacts: "Deborah Stein at CofP Bureau of Planning & Sustainability, ", cities: "", staff: "Beth Kaye", topics: "Introduction To HEAL Cities, Other", notes: <<END_TEXT
Bev suggested I contact:<div>Mike McArthur, AOC</div><div>Karin Kellley-Torregroza, Vision Action Network in Washington County</div><div>Virginia Garcia Clinic</div><div>Rob Drake, City Manager in Cornelius</div><div>Betty Bode in Beaverton (just lost in run for City Council, former nun, interested in health)</div><div>Gail Shibley</div><div><br></div><div>Bev wondered if, as Stage 2, some cities might want to approach the Oregon Solutions Consensus Center and Regional Solutions (Governor's website) to work towards a Declaration of Collaboration -- cities would need to fund part of the project; good way to bring multiple stakeholders to the table</div><div>Model of collaborative decision making&nbsp;</div><div><br></div><div><br></div>
END_TEXT
}
    communications << { date: '41081', duration: '45', contact_type: 'In-person Meeting',  organization_type: 'Other', contacts: "Leslie Carlson at Brink Communications, ", cities: "", staff: "Beth Kaye", topics: "Introduction To HEAL Cities, Other", notes: <<END_TEXT
Suggested The Campaign develop ""Top Ten Policy Changes"" that will give most bang for the buck<div><br></div><div>Connect transit and health care</div><div><br></div><div>Suggested I contact:</div><div>Mia Burke, Alta Planning, developed CoP BikeShare program and is now consulting internationally</div><div>Wendy Willis, National Policy Consensus Center @ PSU</div><div>Steve Novick, OHA</div><div><br></div><div>E-mailed intro to Wendy Willis<br><div><br></div><div><br></div></div>
END_TEXT
}
    communications << { date: '41079', duration: '90', contact_type: 'In-person Meeting',  organization_type: 'Regional Organization', contacts: "Claudia Arana at Upstream Public Health, ", cities: "", staff: "Beth Kaye", topics: "Introduction To HEAL Cities, Other, Coordination with County Health Departments", notes: <<END_TEXT
We discussed the best way to partner on healthy community environment work; specific cities that would benefit from HEAL interventions; specific elected officials; health equity challenges; community coalition building
END_TEXT
}
    communications << { date: '41067', duration: '45', contact_type: 'In-person Meeting',  organization_type: 'Other', contacts: "Melissa Peterson at Latino Health Alliance, ", cities: "", staff: "Beth Kaye", topics: "Introduction To HEAL Cities, Other", notes: <<END_TEXT
Discussed how HCC might work with health equity advocates across Oregon.<div>Referred me to Francisco Lopez at CAUSA, Claudia Arana at Upstream, Midge at Urban League, Alberto Moreno at the Latino Health Alliance, and Joseph Santos-Lyons at APANO</div>
END_TEXT
}
    communications << { date: '41066', duration: '10', contact_type: 'In-person Meeting',  organization_type: 'Statewide Organization', contacts: "Kathie Dello at Oregon Climate Change Research Institute, ", cities: "", staff: "Beth Kaye", topics: "", notes: <<END_TEXT

END_TEXT
}
    communications << { date: '41065', duration: '10', contact_type: 'Site Visit',  organization_type: 'County Health Department', contacts: "Ben Duncan at Multnomah County Health Department, ", cities: "Gresham, OR, Troutdale, OR, Wood Village, OR", staff: "Beth Kaye", topics: "Introduction To HEAL Cities, Coordination with County Health Departments", notes: <<END_TEXT

END_TEXT
}
    communications << { date: '41318', duration: '60', contact_type: 'In-person Meeting',  organization_type: 'Other', contacts: "Anita Yap at , ", cities: "", staff: "Beth Kaye, Noelle Dobson", topics: "Introduction To HEAL Cities, Land Use & Transportation, Access to Healthy Food Options, Shared Use, Other", notes: <<END_TEXT
Making the business case for health<div><br></div><div>Why Johnny Can't Walk to School</div><div><br></div><div>Local food shed</div><div><br></div><div><br></div><div><br></div>
END_TEXT
}
    communications << { date: '41060', duration: '60', contact_type: 'In-person Meeting',  organization_type: 'Statewide Organization', contacts: "Dawn Robbins at Oregon Health Authority, ", cities: "", staff: "Beth Kaye", topics: "Introduction To HEAL Cities, Workplace Wellness, Coordination with County Health Departments", notes: <<END_TEXT
We discussed potential collaboration.<div><br></div><div>With respect to the W@W movement:</div><div><ul><li>Where are we now?</li><li>Where are we going?</li><li>How do we get there?</li></ul></div><div><div>Nine communities have Vista-Americorps volunteers whose sole responsibility is to do W@W in counties- inform them about HCC?&nbsp;</div></div>
END_TEXT
}
    communications << { date: '41060', duration: '60', contact_type: 'In-person Meeting',  organization_type: 'Statewide Organization', contacts: "Curtis Cude at Oregon Health Authority-Environmental Health, ", cities: "", staff: "Beth Kaye", topics: "Introduction To HEAL Cities, Other, Coordination with County Health Departments", notes: <<END_TEXT
Discussed OHA plans to create a data portal with data sets that can be combined to map environmental, &nbsp;demographic and health data. &nbsp;Discussed potential for collaboration between OHA and HEAL Cities Campaign. &nbsp;He is under pressure to show that the Environmental Health Section's work contributes to positive public health outcomes. &nbsp;HEAL Cities might be able to help him do that.<div><br></div><div>Suggested I talk to Pdx Parks &amp; Rec about classes</div><div><br></div><div>Discussed potential of calculating obesity rate by Congressional district to influence OR delegation</div>
END_TEXT
}
    communications << { date: '41317', duration: '10', contact_type: 'E-mail Exchange',  organization_type: 'Statewide Organization', contacts: "Daniel S. Morris, MS, PhD at Oregon Health Authority, ", cities: "McMinnville, OR", staff: "Beth Kaye", topics: "Land Use & Transportation, Access to Healthy Food Options, Other, Coordination with County Health Departments", notes: <<END_TEXT
Discussed mapping of demographic, health, BMI, and environmental data for Yamhill County. &nbsp;
END_TEXT
}
    communications << { date: '41317', duration: '30', contact_type: 'E-mail Exchange',  organization_type: 'County Health Department', contacts: "Bonnie J. Corns, BS CHES at Yamill County Health Department, ", cities: "McMinnville, OR", staff: "Beth Kaye, Karli Thorstenson", topics: "Other, Coordination with County Health Departments, Let's Move Cities Towns & Counties", notes: <<END_TEXT
Sent email confirming tomorrow's meeting, and reviewing agenda. &nbsp;Also suggested that we discuss working with Daniel Morris at OHA to get maps. &nbsp;
END_TEXT
}
    communications << { date: '41316', duration: '45', contact_type: 'E-mail Exchange',  organization_type: 'Regional Organization', contacts: "Melissa Taylor at Cowlitz-Wahkiakum Council of Governments, , Kathryn M Clift at Kaiser Foundation Health Plan, Program Offices, , Dawn Hanson at Cowlitz-Wahkiakum Council of Governments, ", cities: "Kelso, WA, Longview, WA", staff: "Beth Kaye", topics: "Other", notes: <<END_TEXT
Dawn Hanson, the CIS person at CWCOG, had some issues with the KP data. &nbsp;In a series of emails, I tried to clarify the issues, to confer with KP staff (Rachel E. Burdon, Molly J. Haynes, Kathryn M. Clift) about the content of the issues and the process for resolving them, and to schedule a conference call.
END_TEXT
}
    communications << { date: '41316', duration: '60', contact_type: 'E-mail Exchange',  organization_type: 'Participating City', contacts: "Michael Sykes at Forest Grove, OR, , Jolynn Becker at City of Banks, , Rob Drake at City of Cornelius, , Brad Choi, P.E. at City of Hillsboro, , Martha DeBry at City of North Plains, ", cities: "Banks, OR, Cornelius, OR, Forest Grove, OR, Hillsboro, OR", staff: "Beth Kaye", topics: "Land Use & Transportation, Other", notes: <<END_TEXT
Recapped progress thus farm including derailing of process occasioned by disappearance/resignation of Banks City Manager Kyle Awesome. &nbsp;Attached copy of draft HEAL Cities resolution. &nbsp;Proposed meeting or teleconference. &nbsp;
END_TEXT
}
    communications << { date: '41316', duration: '5', contact_type: 'Telephone Call',  organization_type: 'Other', contacts: "Taryn Lust, MBA CCRC at Legacy Health Systems, Legacy Park Medical Center, ", cities: "Tualatin, OR", staff: "Beth Kaye", topics: "Other", notes: <<END_TEXT
Left VM re coordinating between FIt Cities Tualatin and Tualatin Council.&nbsp;
END_TEXT
}
    communications << { date: '41312', duration: '10', contact_type: 'In-person Meeting',  organization_type: 'Participating City', contacts: "Julie Fitzgerald at City of Wilsonville, ", cities: "Wilsonville, OR", staff: "Beth Kaye", topics: "Introduction To HEAL Cities, Other", notes: <<END_TEXT
smart Growth Conference in KC<div>heard story of her election; recruited to run by Charlotte Lehan</div><div>Lives in Villebois</div><div>Ran with Susie (?) from Charbonneau</div>
END_TEXT
}
    communications << { date: '41309', duration: '30', contact_type: 'Telephone Call',  organization_type: 'Participating City', contacts: "Paul Hennon Hennon at City of Tualatin Community Services, ", cities: "", staff: "Beth Kaye", topics: "Access to Healthy Food Options, Other, Let's Move Cities Towns & Counties", notes: <<END_TEXT
We discussed a Resolution for Tualatin to join the Campaign as an Active City, including recitations of past accomplishments. &nbsp;We also discussed coordination with a Potential LMCTC site visit (desirable, but not necessary). &nbsp;Paul would like Tualatin to be the first HEAL City. &nbsp;
END_TEXT
}
    communications << { date: '41309', duration: '5', contact_type: 'Telephone Call',  organization_type: 'Other', contacts: "Taryn Lust, MBA CCRC at Legacy Health Systems, Legacy Park Medical Center, ", cities: "Tualatin, OR", staff: "Beth Kaye", topics: "Other", notes: <<END_TEXT
Left VM re check-in on Fit City Tualatin, FIT Kids Tualatin, and HCC.
END_TEXT
}
    communications << { date: '41309', duration: '15', contact_type: 'E-mail Exchange',  organization_type: 'County Health Department', contacts: "Pam Hutchinson at Marion COunty Health Department, ", cities: "Salem, OR", staff: "Beth Kaye", topics: "Coordination with County Health Departments, Let's Move Cities Towns & Counties", notes: <<END_TEXT
Pam Heilman will be appearing before the Marion County Commission this evening. &nbsp;I suggested two more responses if the County expresses interest in joining HCC:<div><p class=""MsoListParagraph"" style=""text-indent: -0.25in;""><span style=""text-indent: -0.25in;font-size: 12.0pt;"">1.<span style=""font-size: 7.0pt;"">&nbsp;&nbsp;&nbsp; </span></span><span style=""text-indent: -0.25in;font-size: 12.0pt;"">&nbsp;1. Counties
can receive recognition for their efforts through LMCTC.</span><br><span style=""text-indent: -0.25in;font-size: 12.0pt;"">2.<span style=""font-size: 7.0pt;"">&nbsp;&nbsp;&nbsp; </span></span><span style=""text-indent: -0.25in;font-size: 12.0pt;"">HEAL is
directed to cities because it is trying to create healthy environments where
people live, work, play, learn, shop, and worship.&nbsp; Municipal policy has a
primary role in shaping these environments.</span><br><span style="""">You
could add this:</span><br><span style=""text-indent: -0.25in;font-size: 12.0pt;"">3.<span style=""font-size: 7.0pt;"">&nbsp;&nbsp;&nbsp; </span></span><span style=""text-indent: -0.25in;font-size: 12.0pt;"">Counties
receive funding and Technical Assistance through OHA and the federal government
to make policy changes.&nbsp; Kaiser Permanente is funding HEAL Cities Campaign
because there are scant other resources promoting policy change on the
municipal level.</span><br><span style=""text-indent: -0.25in;font-size: 12.0pt;"">4.<span style=""font-size: 7.0pt;"">&nbsp;&nbsp;&nbsp; </span></span><span style=""text-indent: -0.25in;font-size: 12.0pt;"">The HEAL
Cities Campaign has a library of policies for municipalities and has a
resolution that is appropriate for municipalities.&nbsp; The Campaign would
require the assistance of a county attorney to ensure that its policies and
resolution are appropriate for a county.&nbsp; (We would be willing to do this,
if a County insisted, but the work is outside of my usual scope and I would not
feel comfortable proceeding without the assistance of county counsel.</span></p>
</div>
END_TEXT
}
    communications << { date: '41306', duration: '60', contact_type: 'Telephone Call',  organization_type: 'Federal agency', contacts: "Akiko Saito at Oregon Health Authority, Office of the Director, , Moji Obiako at U. S. Department of Health and Human Services Region X, ", cities: "", staff: "Beth Kaye", topics: "Introduction To HEAL Cities, Coordination with County Health Departments, Let's Move Cities Towns & Counties", notes: <<END_TEXT
Moji arranged this call to introduce me to Akiko Berkman, who works for the OHA in the Director's Office. &nbsp;She is the state coordinator for the Medical Reserve Corps, and the project director for the Americorps/Vista teams across Oregon.<div><br></div><div>I gave a brief presentation on HEAL Cities Campaign. I described how some school districts have closed parks and playgrounds because of dangerous conditions and asked if there might be federal resources available. &nbsp;</div><div><br></div><div>Moji and Akiko believe that some of the Medical Reserve Corps volunteers may be interested in working on environmental health initiatives, such as HEAL Cities. &nbsp; Akiko also things that Americorps/Vistas may be helpful at building community connections for the HEAL Cities Campaign.&nbsp;</div><div><br></div><div>RE HEAL Cities:&nbsp;</div><font color=""#222222""><span style=""font-family: Calibri , sans-serif;font-size: 15.0px;""><ul><li>Akiko to email Luci Longoria/Karen Girard to see if Beth could get connected to TPEP liaison group</li><li>Akiko to get Beth list of VISTA members and contact info.</li><li>Akiko to get Beth time of next VISTA call (Feb 22) and if she is avail. have her briefly talk about making connections in rural areas.&nbsp;</li></ul></span><span style=""font-size: 11.0pt;font-family: Calibri , sans-serif;""><br></span></font><div><font color=""#222222""><br></font></div><div><span style=""font-size: 11.0pt;font-family: Calibri , sans-serif;""><font color=""#222222"">RE HEAL CITIES &amp; LMCTC</font></span></div><div><ul><li><span style=""font-family: Calibri , sans-serif;font-size: 11.0pt;""><font color=""#222222"">In response to Beth's question, Moji confirmed that LMCTC does not have resources for renovation of playgrounds that are too dangerous for public use.</font></span></li><li><span style=""font-family: Calibri , sans-serif;font-size: 11.0pt;""><font color=""#222222"">Beth, Moji and Akiko meet again soon to discuss bringing partners together to
leverage resources and go after funders to improve playgrounds and develop
VISTA position to work on building resources for grant opptys for playgrounds</font></span></li><li><span style=""font-family: Calibri , sans-serif;font-size: 11.0pt;""><font color=""#222222"">Moji to look at Let's Move partner (playground company) and see what resources
maybe available</font></span></li></ul></div><div><span style=""font-family: Calibri , sans-serif;font-size: 11.0pt;""><font color=""#222222""><br></font></span></div><div><span style=""font-family: Calibri , sans-serif;font-size: 11.0pt;""><font color=""#222222"">RE LMCTC:&nbsp;</font></span><div><ul><li><span style=""font-family: Calibri , sans-serif;font-size: 11.0pt;""><font color=""#222222"">Akiko to get Moji CLHO schedule</font></span></li><li><span style=""font-family: Calibri , sans-serif;font-size: 11.0pt;""><font color=""#222222"">Moji to see about getting on a CLHO agenda for general or committee meeting to talk about Let's Move</font></span></li><li><span style=""font-family: Calibri , sans-serif;font-size: 11.0pt;""><font color=""#222222"">Akiko to get Moji OPHA contact</font></span></li><li><span style=""font-family: Calibri , sans-serif;font-size: 15.0px;""><font color=""#222222"">Moji to follow up with Linda Farley in Jackson County about Let's Move activities for MRC volunteers/ talk about this also in more detail at next MRC state wide call</font></span></li><li><font color=""#222222"" face=""Calibri, sans-serif""><span style=""font-size: 15.0px;"">Beth emphasized potential for improving health outcomes under Goal 1 of LMCTC (childcare), and described OPHI expertise in maternal and child health</span></font></li><li><font color=""#222222"" face=""Calibri, sans-serif""><span style=""font-size: 15.0px;"">Beth offered to provide contact info as needed</span></font></li></ul></div><span style=""font-size: 11.0pt;font-family: Calibri , sans-serif;""><font color=""#222222"">
<br>
</font></span><div><font color=""#222222"">&nbsp;</font></div></div>
END_TEXT
}
    communications << { date: '41309', duration: '10', contact_type: 'Telephone Call',  organization_type: 'County Health Department', contacts: "Randi Philips, MS at Polk County Health Department, ", cities: "Falls City, OR", staff: "Beth Kaye", topics: "Coordination with County Health Departments", notes: <<END_TEXT
Randi Philips has not yet completed hiring of staff to work on environmental health issues. &nbsp;Please call back in 2-3 weeks.<div><br></div><div>Reiterated my enthusiasm about working in Polk County. &nbsp;</div>
END_TEXT
}
    communications << { date: '41306', duration: '5', contact_type: 'E-mail Exchange',  organization_type: 'Participating City', contacts: "Paul Hennon Hennon at City of Tualatin Community Services, ", cities: "Tualatin, OR", staff: "Beth Kaye", topics: "Other", notes: <<END_TEXT
Re: &nbsp;Scheduling telephone call to discuss timing of bringing resolution on HEAL Cities to Tualatin City Council.
END_TEXT
}
    communications << { date: '41309', duration: '5', contact_type: 'Telephone Call',  organization_type: 'Participating City', contacts: "Paul Hennon Hennon at City of Tualatin Community Services, ", cities: "Tualatin, OR", staff: "Beth Kaye", topics: "Other", notes: <<END_TEXT
VM re Timing of bringing HEAL Resolution to Tualatin.
END_TEXT
}
    communications << { date: '41197', duration: '60', contact_type: 'In-person Meeting',  organization_type: 'Participating City', contacts: "Lindsey Kuipers at City of Beaverton, ", cities: "Beaverton, OR", staff: "Beth Kaye", topics: "Introduction To HEAL Cities, Land Use & Transportation, Access to Healthy Food Options, Other, Coordination with County Health Departments", notes: <<END_TEXT
<div style=""text-align: right;"">Lead on $1.58 million federal Beaverton Community Transformation grant. &nbsp;Core parties have been meeting for two years</div><div>LK reports to Development head, Don Maziotti.</div><div>CDC Community Transformation Grant core team, led by Dr. Tina Castanares. &nbsp;</div><div>Washington County Public&nbsp;</div><div>Nn</div><div><br></div><div>Beaverton may be interested in planning for a food distribution center</div>
END_TEXT
}
    communications << { date: '41193', duration: '30', contact_type: 'Telephone Call',  organization_type: 'County Health Department', contacts: "Tanya Silva at Polk County Health Dept, ", cities: "Falls City, OR", staff: "Beth Kaye", topics: "Introduction To HEAL Cities, General Information About Obesity, Coordination with County Health Departments", notes: <<END_TEXT
Talked generally about Falls City Farm Stand situation
END_TEXT
}
    communications << { date: '41193', duration: '90', contact_type: 'In-person Meeting',  organization_type: 'Statewide Organization', contacts: "Leah Rodgers at Friends of Family Farmers, ", cities: "Falls City, OR", staff: "Beth Kaye, Amy Gilroy", topics: "Introduction To HEAL Cities, Access to Healthy Food Options, Coordination with County Health Departments", notes: <<END_TEXT
We discussed farm stand operated by Matthew McDaniel and family on small farm located in residential zone in Falls City. &nbsp;City is interested in accommodating use but code gives Council no discretion.<div><br></div><div>Generated list of issues: &nbsp;county and city land use laws; licensure requirements; soil contaminants; accessory use; food code</div><div><br></div><div>Leah agreed to create a work plan for review.&nbsp;</div>
END_TEXT
}
    communications << { date: '41303', duration: '10', contact_type: 'E-mail Exchange',  organization_type: 'Participating City', contacts: "Lou Ogden at Resource Strategies Planning Group, , Sherilyn Lombos at City of Tualatin, ", cities: "Tualatin, OR", staff: "Beth Kaye", topics: "Other", notes: <<END_TEXT
Discussed source of Clackamas County funding for its HEAL Small Grants program.&nbsp;
END_TEXT
}
    communications << { date: '41302', duration: '10', contact_type: 'E-mail Exchange',  organization_type: 'Regional Organization', contacts: "Andrew Riley at Center for Intercultural Organizing, ", cities: "", staff: "Beth Kaye", topics: "Introduction To HEAL Cities, Other", notes: <<END_TEXT
CIO received a KPCF grant to organize immigrant and refugee community in Washington County. &nbsp;Contacted Andrew to request meeting to explore potential coordination/leverage between CIO and HEAL CC efforts in Washington County cities
END_TEXT
}
    communications << { date: '41302', duration: '5', contact_type: 'E-mail Exchange',  organization_type: 'County Health Department', contacts: "Pam Hutchinson at Marion COunty Health Department, ", cities: "Salem, OR", staff: "Beth Kaye", topics: "Other, Coordination with County Health Departments, Let's Move Cities Towns & Counties", notes: <<END_TEXT
Discussed plan to present letter of introduction to Marion County Commission and how to respond if County wanted to join the Campaign.&nbsp;<br><div><br></div>
END_TEXT
}
    communications << { date: '41270', duration: '125', contact_type: 'Telephone Call',  organization_type: 'Participating City', contacts: "Paul Hennon Hennon at City of Tualatin Community Services, ", cities: "Tualatin, OR", staff: "Beth Kaye", topics: "Land Use & Transportation, Access to Healthy Food Options, Shared Use, Workplace Wellness, Other, Coordination with County Health Departments, Let's Move Cities Towns & Counties", notes: <<END_TEXT
This call followed an introductory meeting on 12/20/12 with Paul Herron, City Manager Sherilyn Lombos, and Mayor Lou Ogden.<div><br></div><div><b>Big picture:</b> lots of political will. &nbsp;At recent Fall Retreat, Council identified the development of Tualatin as a Healthy Active Community as one of its priorities. &nbsp;This will be included in the Retreat Report that will go before Council in 1st Q 2013 and feed into its agenda-setting. Opportunity to flesh out what this means, perhaps by reference to HEAL and LMCTC policy initiatives. &nbsp;<br><div><br></div><div><b>Specifics:</b></div><div>We reviewed the HEAL Cities Policy Menu. &nbsp;</div><div><br></div><div>Tualatin's new <u>Transportation System Plan update</u> (TSP), currently in final draft, promotes street connectivity, ped and bicycle paths and other measures to improve ped and bike access and safety. &nbsp;</div><div><br></div><div>Tualatin's <u>Comp Plan</u> does not currently include general health goals. &nbsp;PH will check when Comp Plan update is scheduled, and we can discuss whether amendment out of cycle is warranted.&nbsp;</div><div><br></div><div>Tualatin also plans to review its <u>Parks &amp; Rec Master Plan</u>. &nbsp;This is a dated but visionary document. &nbsp;May be able to add HEAL language, but primary barrier is construction $$. &nbsp;Another big challenge for city in this arena is protection of natural resources. &nbsp;</div><div><br></div><div>Currently, <u>mixed use residential/commercial development</u> is a feature of the 1994 Tualatin Commons development, but not replicated elsewhere. PH believes code allows such development; is not aware of requests for waivers or changes to code to allow such projects. &nbsp;Mixed use not typical for Tualatin. &nbsp;Tualatin's explosive growth resulted in distinct SF residentia, commercial, and industrial neighborhoods. &nbsp;Linking Tualatin initiative has objective of introducing some commercial uses into industrial areas (e.g. cafes and banks for industrial workers). &nbsp;No residential component to plan. &nbsp; PH is open to reviewing zoning map of city to see if mixed-use with residential would be appropriate for other locations. Mixed use also typically requires some incentive for the residential development. &nbsp;Tualatin has no current URAs that could fund such incentives. &nbsp;Large K-Mart redevelopment now in planning stages will not include residential because developer finds it more profitable to include only commercial.</div><div><br></div><div>City allows a credit against the Parks SDC charge for developers that include trails/pathways to recreational or commercial areas. &nbsp;This may be a <b>Best Practice</b>. &nbsp;City also allows density transfers to encourage developers to preserve natural areas next to developments. &nbsp;This may also be a <b>Best Practice</b>.&nbsp;</div><div><br></div><div>City residents generally enjoy good <u>access to recreational and natural areas</u>. &nbsp;City is currently working with other cities and Metro on a regional trail, the Ice Age-Tonquin Trail, that will link 3 counties and 4 cities and significant natural areas, including Fanno Creek and Forest Park. &nbsp;</div><div><br></div><div>City likes to assemble 15-20 acres for <u>park development</u>. Large enough to allow playgrounds, trails, tennis courts, ball fields and other features. &nbsp; Has been willing to bring bond requests to the voters. &nbsp;It currently interested in acquiring a parcel along the Tualatin River. &nbsp;Mantra: build it to Best Practice standard, maintain it right. &nbsp;</div><div><br></div><div>City has one <u>Farmers Market</u>. &nbsp;It operates on City property, in an area that had formerly been a commercial site but was acquired and redeveloped by City. &nbsp;The City provides restrooms and cleanups. &nbsp;The Farmers Market offered a match program last year for SNAP and WIC recipients and perhaps seniors; PH not sure how <u>match </u>was funded. &nbsp;Does not see demand for an additional Farmer's Market location.</div><div><br></div><div>City has two <u>Community Gardens</u>. &nbsp;One is operated on church property; PH will call to find out if it is fully used. &nbsp;The other CG located on the property of one of the City's three elementary schools. &nbsp;The City had planned an additional CG but the 2008 bond measure that included funding was rejected by voters. There are no zoning obstacles to CGs, but capital and operating costs are a barrier to adding more.&nbsp;</div><div><br></div><div>Other<u> possible CG locations</u>:</div><div><ol><li>on the property of other 2 elementary schools and perhaps at middle or high schools;</li><li>at Stone Ridge Park, in a grassy area. &nbsp;Stone Ridge Park funded by CDBG, built near several multi-family housing complexes. &nbsp;Park is frequently vandalized. &nbsp;City would want to work with community in a process to identify what it wants for the land. Could be a centerpiece of larger community development effort that would engage youth and elders. &nbsp;Estimated development cost @ $10K; no estimate for operating cost;</li><li>at the Senior Center, making use of raised beds (perhaps with support from Legacy/Meridian Park, and Kaiser?);</li><li>City willing to consider other CG locations following review of map showing ""hot spots"" for obesity and related disease and/or poverty</li></ol><div><u>Community Supported Agriculture</u></div><div>PH does not believe that there is much CSA activity in city today. City could offer parking lots at distribution points during hours when lots are not in heavy use. &nbsp;No requests to date.</div></div><div><br></div><div><b>Infrastructure investments:</b></div><div>TSP contains specific project priorities. &nbsp;</div><div>City Mnaager has had departments do a Capital Improvement Plans.</div><div>Departments have historically looked to specific funding sources (e.g. development fees to fund sidewalks &amp; parks, utility fees) etc. &nbsp;These funds are allocated to specific uses. &nbsp;Bond measures used for larger projects. &nbsp;</div><div>GF is very limited resource. &nbsp;City has ""wish list"" of $4.5 million of projects, but only about $500K available annually for renovation and renewal.</div><div>City is part of Washington County's federal Consolidated Plan Consortium. &nbsp;Will occasionally get project funding. &nbsp;Competes with other Wa Co cities (except Hillsboro and Beaverton, both Participating Jursidictions that file individual city Con Plans.</div><div><br></div><div><br></div><div><b>Shared Use:</b></div><div>City has history of shared use arrangements. &nbsp;When City has made capital investment (e.g. syntethic turf field and running track by school), used an IGA to document understanding re maintenance, operating expenses, and liability. &nbsp;For example, in Turf/track project, the schools schedule the field and carry the liability insurance, while the City performs maintenance. &nbsp;On another project, a bridge connecting three parks, an IGA among four entities covered capital contribution, liability, and other issues. &nbsp;(May be Best Practice)</div><div><br></div><div><b>LMCTC:</b></div><div>We reviewed five elements of LMCTC, and discussed relationship of LMCTC and HEAL. &nbsp;PH will confirm which Goals city has achieved. &nbsp;(Goal V - Active Kids at Play - is the only one we were sure of.) &nbsp;HEAL Cities is assisting LMCTC by providing on the ground guidance. Beth will help city locate resources to accomplish remaining goals. &nbsp;Goal I, Start Early, Start Smart, may be best addressed regionally, perhaps by linking in the Wash Co Health Dept. &nbsp;Beth will send contact info for Tracy Wiedt, LMCTC program manager at NLCICF.</div><div><br></div></div><div><b>Next steps:</b></div><div>Bring HEAL Cities resolution to Council in Feb. &nbsp;(PH to check with City Manager.) &nbsp;See if LMCTC can do a recognition event for City at the same time. (BK to send LH contact info for Tracy Wiedt, LMCTC.)</div><div><br></div><div>PL would like to have City codes reviewed to ascertain where there are opportunities to modify and add HEAL options. &nbsp;If HEAL could provide $$ for consultant, or in kind service, City would welcome that. &nbsp;BK to check on what is available at OPHI.</div><div><br></div><div>Useful to be able to overlay health/weight data on map of city to determine where there are ""hot spots"" that may require project interventions (e.g. community gardens, closer look at healthy food access strategies, closer look at ped/bike access challenges). &nbsp;BK to check on obtaining maps from State.</div><div><br></div><div>We discussed using a <b>population focus</b> to prioritize how Community Development invests its resources on HEAL:</div><div><br></div><div>&nbsp; &nbsp; &nbsp;&nbsp;<u>Children and teens:</u>&nbsp;</div><div><ul><li>in conjunction with school districts, <i>explore adding additional School Gardens</i>, and <i>explore feasibility of a Farm to School program</i> (BK to send contact info on Michelle Markesteyn Ratcliffe, PhD, with Oregon Dept of Agriculture, potential presenter on F2S)</li><li>Beth to work with Julie Ludemann and Youth Advisory Council &nbsp;to educate youth re obesity risk, role of environment. &nbsp;Ask YAC's help to prioritize among policy interventions, perhaps support HEAL Cities resolution at Council.</li><li>LMCTC Goal I (Start Early Start Smart) to establish an interagency collaboration on early care and eduation programs (Bronze level) or more</li><li>LMCTC Goal II (My Plate, Your Plate), work with school district and all publicly owned venues where food is served to prominently display My Placte (medal varies with % of venues that display MyPlate)</li><li>LMCTC Goal III (Smart Servings for Students) Work with school district officials to increase participation in the School Breakfast Program and the National School Lunch Program</li><li>LMCTC Goal IV (Model Food Service) implement healthy and sustainable food-service guidelines in all municipally- or county-owned venues that serve food (perhaps with Countil Health Dept support)</li></ul></div><div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<u>Seniors</u></div><div><ul><li>increase usage of Senior Center by older adults, by assessing barriers to participation (unfamiliarity? &nbsp;transportation? &nbsp;lack of appealing programming? &nbsp;cultural issues?) and developing strategies to address barriers</li><li>Consider multigenerational activities that would involve schoolchildren</li><li>Consider programs on healthy food shopping and preparation at Senior Center</li><li>Consider using Senior Center as a hub for CSAs to get produce to seniors on limited incomes and with limited access to transportation</li></ul><u>Low-income households&nbsp;</u><br><ul><li>&nbsp;Use data maps from State to see if there is correlation between income, obesity, and access to ped/bike/transit and access to healthy food &nbsp;(BK to request from State)</li><li>Explore Community Garden in Stone Ridge Park? &nbsp;(perhaps Chamber of Commerce can take on funding challenge?)</li><li>Are there community-based organizations that work with low-income households? &nbsp;</li></ul></div>
END_TEXT
}
    communications << { date: '41270', duration: '125', contact_type: 'Telephone Call',  organization_type: 'Participating City', contacts: "Paul Hennon Hennon at City of Tualatin Community Services, ", cities: "Tualatin, OR", staff: "Beth Kaye", topics: "Land Use & Transportation, Access to Healthy Food Options, Shared Use, Workplace Wellness, Other, Coordination with County Health Departments, Let's Move Cities Towns & Counties", notes: <<END_TEXT
This call followed an introductory meeting on 12/20/12 with Paul Herron, City Manager Sherilyn Lombos, and Mayor Lou Ogden.<div><br></div><div>Big picture: lots of political will. &nbsp;At recent Fall Retreat, Council identified the development of Tualatin as a Healthy Active Community as one of its priorities. &nbsp;This will be included in the Retreat Report that will go before Council in 1st Q 2013 and feed into its agenda-setting. Opportunity to flesh out what this means, perhaps by reference to HEAL and LMCTC policy initiatives. &nbsp;<br><div><br></div><div>We reviewed the HEAL Cities Policy Menu. &nbsp;</div><div><br></div><div>Tualatin's new Transportation System Plan update (TSP), currently in final draft, promotes street connectivity, ped and bicycle paths and other measures to improve ped and bike access and safety. &nbsp;</div><div><br></div><div>Tualatin's Comp Plan does not currently include general health goals. &nbsp;PH will check when Comp Plan update is scheduled, and we can discuss whether amendment out of cycle is warranted.&nbsp;</div><div><br></div><div>Tualatin also plans to review its Parks &amp; Rec Master Plan. &nbsp;This is a dated but visionary document. &nbsp;May be able to add HEAL language, but primary barrier is construction $$. &nbsp;Another big challenge for city in this arena is protection of natural resources. &nbsp;</div><div><br></div><div>Currently, mixed use residential/cmmercial development is a feature of the 1994 Tualatin Commons development, but not replicated elsewhere. PH believes code allows such development; is not aware of requests for waivers or changes to code to allow such projects. &nbsp;Mixed use not typical for Tualatin. &nbsp;Tualatin's explosive growth resulted in distinct SF residentia, commercial, and industrial neighborhoods. &nbsp;Linking Tualatin initiative has objective of introducing some commercial uses into industrial areas (e.g. cafes and banks for industrial workers). &nbsp;No residential component to plan. &nbsp; PH is open to reviewing zoning map of city to see if mixed-use with residential would be appropriate for other locations. Mixed use also typically requires some incentive for the residential development. &nbsp;Tualatin has no current URAs that could fund such incentives. &nbsp;Large K-Mart redevelopment now in planning stages will not include residential because developer finds it more profitable to include only commercial.</div><div><br></div><div>City allows a credit against the Parks SDC charge for developers that include trails/pathways to recreational or commercial areas. &nbsp;This may be a Best Practice. &nbsp;City also allows density transfers to encourage developers to preserve natural areas next to developments. &nbsp;This may also be a Best Practice.&nbsp;</div><div><br></div><div>City residents generally enjoy good access to recreational and natural areas. &nbsp;City is currently working with other cities and Metro on a regional trail, the Ice Age-Tonquin Trail, that will link 3 counties and 4 cities and significant natural areas, including Fanno Creek and Forest Park. &nbsp;</div><div><br></div><div>City likes to assemble 15-20 acres for park development. Large enough to allow playgrounds, trails, tennis courts, ball fields and other features. &nbsp; Has been willing to bring bond requests to the voters. &nbsp;It currently interested in acquiring a parcel along the Tualatin River. &nbsp;Mantra: build it to Best Practice standard, maintain it right. &nbsp;</div><div><br></div><div>City has one Farmer's Market. &nbsp;It operates on City property, in an area that had formerly been a commercial site but was acquired and redeveloped by City. &nbsp;The City provides restrooms and cleanups. &nbsp;The Farmer's Market offered a match program last year for SNAP and WIC recipients and perhaps seniors; PH not sure how match was funded. &nbsp;Does not see demand for an additional Farmer's Market location.</div><div><br></div><div>City has two Community Gardens. &nbsp;One is operated on church property; PH will call to find out if it is fully used. &nbsp;The other CG located on the property of one of the City's three elementary schools. &nbsp;The City had planned an additional CG but the 2008 bond measure that included funding was rejected by voters. There are no zoning obstacles to CGs, but capital and operating costs are a barrier to adding more.&nbsp;</div><div><br></div><div>Other possible CG locations:</div><div><ol><li>on the property of other 2 elementary schools and perhaps at middle or high schools;</li><li>at Stone Ridge Park, in a grassy area. &nbsp;Stone Ridge Park funded by CDBG, built near several multi-family housing complexes. &nbsp;Park is frequently vandalized. &nbsp;City would want to work with community in a process to identify what it wants for the land. Could be a centerpiece of larger community development effort that would engage youth and elders. &nbsp;Estimated development cost @ $10K; no estimate for operating cost;</li><li>at the Senior Center, making use of raised beds (perhaps with support from Legacy/Meridian Park, and Kaiser?);</li><li>City willing to consider other CG locations following review of map showing ""hot spots"" for obesity and related disease and/or poverty</li></ol><div>PH does not believe that there is much CSA activity in city today. City could offer parking lots at distribution points during hours when lots are not in heavy use. &nbsp;No requests to date.</div></div><div><br></div><div><b>Infrastructure investments:</b></div><div>TSP contains specific project priorities. &nbsp;</div><div>City Mnaager has had departments do a Capital Improvement Plans.</div><div>Departments have historically looked to specific funding sources (e.g. development fees to fund sidewalks &amp; parks, utility fees) etc. &nbsp;These funds are allocated to specific uses. &nbsp;Bond measures used for larger projects. &nbsp;</div><div>GF is very limited resource. &nbsp;City has ""wish list"" of $4.5 million of projects, but only about $500K available annually for renovation and renewal.</div><div>City is part of Washington County's federal Consolidated Plan Consortium. &nbsp;Will occasionally get project funding. &nbsp;Competes with other Wa Co cities (except Hillsboro and Beaverton, both Participating Jursidictions that file individual city Con Plans.</div><div><br></div><div><br></div><div><b>Shared Use:</b></div><div>City has history of shared use arrangements. &nbsp;When City has made capital investment (e.g. syntethic turf field and running track by school), used an IGA to document understanding re maintenance, operating expenses, and liability. &nbsp;For example, in Turf/track project, the schools schedule the field and carry the liability insurance, while the City performs maintenance. &nbsp;On another project, a bridge connecting three parks, an IGA among four entities covered capital contribution, liability, and other issues. &nbsp;(May be Best Practice)</div><div><br></div><div><b>LMCTC:</b></div><div><br></div><div><br></div></div><div><b>Next steps:</b></div><div>Bring HEAL Cities resolution to Council in Feb. &nbsp;(PH to check with City Manager.) &nbsp;See if LMCTC can do a recognition event for City at the same time. (BK to send LH contact info for Tracy Wiedt, LMCTC.)</div><div><br></div><div>PL would like to have City codes reviewed to ascertain where there are opportunities to modify and add HEAL options. &nbsp;If HEAL could provide $$ for consultant, or in kind service, City would welcome that. &nbsp;BK to check on what is available at OPHI.</div><div><br></div><div>Useful to be able to overlay health/weight data on map of city to determine where there are ""hot spots"" that may require project interventions (e.g. community gardens, closer look at healthy food access strategies, closer look at ped/bike access challenges). &nbsp;BK to check on obtaining maps from State.</div><div><br></div><div>We discussed using a <b>population focus</b> to prioritize how Community Development invests its resources on HEAL:</div><div><br></div><div>&nbsp; &nbsp; &nbsp;&nbsp;<u>Schoolchildren:</u>&nbsp;</div><div><ul><li>in conjunction with school districts, <i>explore adding additional School Gardens</i>, and <i>explore feasibility of a Farm to School program</i> (BK to send contact info on Michelle Markesteyn Ratcliffe, PhD, with Oregon Dept of Agriculture, potential presenter on F2S)</li><li>work with Julie Ludemann and Student Advisory Commission to educate youth and prioritize among policy interventions</li></ul></div><div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<u>Seniors</u></div><div><ul><li>increase usage of Senior Center by older adults, by assessing barriers to participation (unfamiliarity? &nbsp;transportation? &nbsp;lack of appealing programming? &nbsp;cultural issues?) and developing strategies to address barriers</li><li>Consider multigenerational activities that would involve schoolchildren</li><li>Consider programs on healthy food shopping and preparation at Senior Center</li><li>Consider using Senior Center as a hub for CSAs to get produce to seniors on limited incomes and with limited access to transportation</li></ul><u>Low-income households&nbsp;</u><br><ul><li>&nbsp;Use data maps from State to see if there is correlation between income, obesity, and access to ped/bike/transit and access to healthy food &nbsp;(BK to request from State)</li><li>Explore Community Garden in Stone Ridge Park? &nbsp;(perhaps Chamber of Commerce can take on funding challenge?)</li><li>Are there community-based organizations that work with low-income households? &nbsp;</li></ul></div>
END_TEXT
}
    communications << { date: '41261', duration: '30', contact_type: 'E-mail Exchange',  organization_type: 'County Health Department', contacts: "Pam Hutchinson at Marion COunty Health Department, ", cities: "Keizer, OR, Salem, OR, Silverton, OR, Stayton, OR, Woodburn, OR", staff: "Beth Kaye", topics: "Introduction To HEAL Cities, Access to Healthy Food Options, Shared Use, Workplace Wellness, Other, Coordination with County Health Departments", notes: <<END_TEXT

END_TEXT
}
    communications << { date: '41247', duration: '25', contact_type: 'E-mail Exchange',  organization_type: 'Statewide Organization', contacts: "Megan  Newell-Ching at Oregon Food Bank, ", cities: "", staff: "Beth Kaye", topics: "Access to Healthy Food Options, Other", notes: <<END_TEXT
scheduled a meeting for 1/9/13 with Sharon Thornberry<div><span style=""font-size: 11.0pt;"">""to chat about how
our work overlaps and possibilities for collaboration going forward. I think
there are lots of good potential synergies between HEAL and our FEAST program.
I’m attaching our (fiscal) year-end report from last year to give you an idea
of where we’ve implemented FEAST programming. This winter/spring we will be
working in rural Benton County, the South Coast (Coos &amp; Curry), Tillamook
and Douglas counties.""&nbsp;</span></div>
END_TEXT
}
    communications << { date: '41239', duration: '15', contact_type: 'E-mail Exchange',  organization_type: 'Statewide Organization', contacts: "Morgan Cowling at Coalition of Local Health Organizations, ", cities: "", staff: "Beth Kaye", topics: "Coordination with County Health Departments", notes: <<END_TEXT
11/26/12- Mary Lou Hennrich had breakfast meeting with MC today. &nbsp;MC requested a list of County health departments I had contacted and the jurisdictions I was working with. &nbsp;I provided same.&nbsp;
END_TEXT
}
    communications << { date: '41239', duration: '15', contact_type: 'E-mail Exchange',  organization_type: 'County Health Department', contacts: "Sheree Smith at Morrow County Health Department, ", cities: "Irrigon, OR", staff: "Beth Kaye", topics: "Introduction To HEAL Cities, Other", notes: <<END_TEXT
Wrote to Sheree following request from Mayor David Burns of Irrigon for more info about HEAL Cities
END_TEXT
}
    communications << { date: '41239', duration: '15', contact_type: 'E-mail Exchange',  organization_type: 'Participating City', contacts: "David Burns at Irrigon, Oregon, ", cities: "Irrigon, OR", staff: "Beth Kaye", topics: "Introduction To HEAL Cities", notes: <<END_TEXT
Responded to an e-mail from David Burns.<div>He is also on the LOC Board, and wants to make a presentation at the next LOC Region 7 meeting.</div>
END_TEXT
}
    communications << { date: '41239', duration: '10', contact_type: 'Telephone Call',  organization_type: 'County Health Department', contacts: "Randi Philips, MS at Polk County Health Department, ", cities: "Falls City, OR", staff: "Beth Kaye", topics: "Introduction To HEAL Cities", notes: <<END_TEXT
Left VM; provided follow up e-mail.&nbsp;
END_TEXT
}
    communications << { date: '41221', duration: '10', contact_type: 'E-mail Exchange',  organization_type: 'Participating City', contacts: "Lou Ogden at Resource Strategies Planning Group, ", cities: "Tualatin, OR", staff: "Beth Kaye", topics: "Other", notes: <<END_TEXT
Working on setting up a meeting.&nbsp;
END_TEXT
}
    communications << { date: '41221', duration: '10', contact_type: 'Telephone Call',  organization_type: 'Other', contacts: "Charlotte Dickson at California Center for Public Health Advocacy, ", cities: "Banks, OR, Cornelius, OR, Hillsboro, OR, Vernonia, OR", staff: "Beth Kaye", topics: "Other", notes: <<END_TEXT
City Manager of Banks, Oregon, Kyle Awesome, resigned after questions were raised about his bona fides. &nbsp; Discussed with Charlotte how to do damage control with Banks and other cities. &nbsp;
END_TEXT
}
    communications << { date: '41221', duration: '15', contact_type: 'E-mail Exchange',  organization_type: 'Other', contacts: "Leah Rodgers at Friends of Family Farmers, ", cities: "Falls City, OR", staff: "Amy Gilroy", topics: "Land Use & Transportation", notes: <<END_TEXT
Arranging a meeting with Falls City Manager.
END_TEXT
}
    communications << { date: '41193', duration: '60', contact_type: 'In-person Meeting',  organization_type: 'Statewide Organization', contacts: "Leah Rodgers at Friends of Family Farmers, ", cities: "Falls City, OR", staff: "Beth Kaye, Amy Gilroy", topics: "Introduction To HEAL Cities, Land Use & Transportation", notes: <<END_TEXT
Akha Farm is in residential &nbsp;neighborhood, so farm stand is &nbsp;not an allowed use. &nbsp;City has invited far owner to propose modification to zoning law that would allow farm stand. Amy Gilroy would liek to see what other concerns local farmers have and address them in omnibus change to zoning code. &nbsp;We discussed two step approach. &nbsp;Leah will develop work plan for us to review.
END_TEXT
}

    com_added = 0
    com_added_errors = 0
    com_cities_added = 0
    com_cities_added_errors = 0
    com_contacts_added = 0
    com_contacts_added_errors = 0
    
    error_messages = []

    communications.each do |communication|
      saved_communication = Heal::Communication.new
      saved_communication.database_instance = dbi_ophi

      date_number = communication[:date]
      saved_communication.date = DateTime.new(1899,12,30) + date_number.to_i.days if date_number.present?

      saved_communication.duration_minutes = communication[:duration]
      ct = dbi_ophi.communication_types.find_by(name: communication[:contact_type])
      if ct.nil?
        com_added_errors += 1
        error_messages << "Communication type #{communication[:contact_type]} was not found."
        break
      else
        saved_communication.communication_type = ct
      end

      if communication[:contacts].present?
        contact_array = communication[:contacts].split(",")
        contact_array.each do |contact|
          contact_string = contact.strip
          if contact_string != ""
            contact_parts_array = contact.split(" at ")
            contact_name = contact_parts_array[0].nil? ? "" : contact_parts_array[0].strip
            contact_organization_name = contact_parts_array[1].nil? ? "" : contact_parts_array[1].strip
            matches = dbi_ophi.contacts.where("first_name || ' ' || last_name = ? AND organization_name = ?", contact_name, contact_organization_name)
            if matches.count > 1
              com_contacts_added_errors += 1
              error_messages << "Error: more than one contact matches #{contact_name} at #{contact_organization_name}."
              break
            elsif matches.count == 0
              com_contacts_added_errors += 1
              error_messages << "Error: no contact matches #{contact_name} at #{contact_organization_name}."
              break
            else
              saved_contact = matches.first
              saved_communication.contacts << saved_contact #associate this city with this contact.
              com_contacts_added += 1
            end
          end
        end
      end

      if communication[:cities].present?
        cities_array = communication[:cities].split(",")
        Range.new(0, cities_array.length - 1).step(2) do |index|
          city_name = cities_array[index].strip
          state_name = cities_array[index+1].strip
          matches = dbi_ophi.cities.where(name: city_name, state: state_name)
          if matches.count > 1
            com_cities_added_errors += 1
            error_messages << "Error: more than one city matches #{city_name}, #{state_name}."
            break
          elsif matches.count == 0
            com_cities_added_errors += 1
            error_messages << "Error: no city matches #{city_name}, #{state_name}."
            break
          else
            saved_city = matches.first
            saved_communication.cities << saved_city #associate this city with this contact.
            com_cities_added += 1
          end
        end
      end
      
      if communication[:organization_type].present? && communication[:notes].present?
        saved_communication.notes = "Organization type:\n#{ render_to_ascii(communication[:organization_type]) }\n\nNotes:\n#{ render_to_ascii(communication[:notes]) }"
      elsif communication[:organization_type].present?
        saved_communication.notes = render_to_ascii(communication[:organization_type])
      elsif communication[:notes].present?
        saved_communication.notes = render_to_ascii(communication[:notes])
      end

      default_interest_level = "Unknown"
      il = dbi_ophi.interest_levels.find_by(name: default_interest_level)
      if il.nil?
        com_added_errors += 1
        error_messages << "Interest level  #{default_interest_level} was not found."
      else
        saved_communication.interest_level = il
      end

      if saved_communication.save
        com_added += 1
      else
        com_added_errors += 1
        error_messages << saved_communication.errors.inspect
        break
      end

    end

    puts error_messages
    status_string = "Communications added: #{com_added} / errors: #{com_added_errors}. Contacts added: #{com_contacts_added}/ errors: #{com_contacts_added_errors}. Cities added: #{com_cities_added}/ errors: #{com_cities_added_errors}"
    puts status_string

    return status_string
  end
end