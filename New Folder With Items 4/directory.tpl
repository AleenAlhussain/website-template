{include file='_head.tpl'}
{include file='_header.tpl'}

<!-- page header -->
<div class="ele_content page-header">
	<div class="circle-1"></div>
	<div class="circle-3"></div>
	<div class="container">
		<div class="inner">
			<div class="inner_inner">
				<h2>{__("Directory")}</h2>
				<p class="text-xlg">{__($system['system_description_directory'])}</p>
			</div>
			<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path opacity="0.4" d="M20.9808 3.02084C20.1108 2.15084 18.8808 1.81084 17.6908 2.11084L7.89084 4.56084C6.24084 4.97084 4.97084 6.25084 4.56084 7.89084L2.11084 17.7008C1.81084 18.8908 2.15084 20.1208 3.02084 20.9908C3.68084 21.6408 4.55084 22.0008 5.45084 22.0008C5.73084 22.0008 6.02084 21.9708 6.30084 21.8908L16.1108 19.4408C17.7508 19.0308 19.0308 17.7608 19.4408 16.1108L21.8908 6.30084C22.1908 5.11084 21.8508 3.88084 20.9808 3.02084Z" fill="currentColor"/><path d="M11.9991 15.8811C14.142 15.8811 15.8791 14.144 15.8791 12.0011C15.8791 9.85823 14.142 8.12109 11.9991 8.12109C9.85628 8.12109 8.11914 9.85823 8.11914 12.0011C8.11914 14.144 9.85628 15.8811 11.9991 15.8811Z" fill="currentColor"/></svg>
		</div>
	</div>
</div>
<!-- page header -->

<!-- page content -->
{if $view == ""}

    <div class="container position-relative">
		<div class="ele_content mb30 p-4">
			<div class="row directory-row">
				<div class="col-sm-6 col-md-6 col-lg-4">
					<a href="{$system['system_url']}/directory/users" class="directory-card green">
						<span><svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M9 2C6.38 2 4.25 4.13 4.25 6.75C4.25 9.32 6.26 11.4 8.88 11.49C8.96 11.48 9.04 11.48 9.1 11.49C9.12 11.49 9.13 11.49 9.15 11.49C9.16 11.49 9.16 11.49 9.17 11.49C11.73 11.4 13.74 9.32 13.75 6.75C13.75 4.13 11.62 2 9 2Z" fill="currentColor"/><path d="M14.0809 14.1489C11.2909 12.2889 6.74094 12.2889 3.93094 14.1489C2.66094 14.9989 1.96094 16.1489 1.96094 17.3789C1.96094 18.6089 2.66094 19.7489 3.92094 20.5889C5.32094 21.5289 7.16094 21.9989 9.00094 21.9989C10.8409 21.9989 12.6809 21.5289 14.0809 20.5889C15.3409 19.7389 16.0409 18.5989 16.0409 17.3589C16.0309 16.1289 15.3409 14.9889 14.0809 14.1489Z" fill="currentColor"/><path d="M19.9894 7.33815C20.1494 9.27815 18.7694 10.9781 16.8594 11.2081C16.8494 11.2081 16.8494 11.2081 16.8394 11.2081H16.8094C16.7494 11.2081 16.6894 11.2081 16.6394 11.2281C15.6694 11.2781 14.7794 10.9681 14.1094 10.3981C15.1394 9.47815 15.7294 8.09815 15.6094 6.59815C15.5394 5.78815 15.2594 5.04815 14.8394 4.41815C15.2194 4.22815 15.6594 4.10815 16.1094 4.06815C18.0694 3.89815 19.8194 5.35815 19.9894 7.33815Z" fill="currentColor"/><path d="M21.9883 16.5904C21.9083 17.5604 21.2883 18.4004 20.2483 18.9704C19.2483 19.5204 17.9883 19.7804 16.7383 19.7504C17.4583 19.1004 17.8783 18.2904 17.9583 17.4304C18.0583 16.1904 17.4683 15.0004 16.2883 14.0504C15.6183 13.5204 14.8383 13.1004 13.9883 12.7904C16.1983 12.1504 18.9783 12.5804 20.6883 13.9604C21.6083 14.7004 22.0783 15.6304 21.9883 16.5904Z" fill="currentColor"/></svg></span>
						<h5 class="title">{__("Users")}</h5>
						<p>
							{__("Help friends know you better and show them what you have in common")}
						</p>
					</a>
				</div>
				<div class="col-sm-6 col-md-6 col-lg-4">
					<a href="{$system['system_url']}/directory/posts" class="directory-card yellow">
						<span><svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M12.6761 19.9589C12.9508 20.0228 12.976 20.3827 12.7084 20.4719L11.1284 20.9919C7.15839 22.2719 5.06839 21.2019 3.77839 17.2319L2.49839 13.2819C1.21839 9.31187 2.27839 7.21187 6.24839 5.93187L6.77238 5.75834C7.17525 5.62493 7.56731 6.02899 7.45292 6.43766C7.39622 6.64023 7.34167 6.85164 7.28839 7.07188L6.30839 11.2619C5.20839 15.9719 6.81839 18.5719 11.5284 19.6919L12.6761 19.9589Z" fill="currentColor"/><path d="M17.1702 3.20854L15.5002 2.81854C12.1602 2.02854 10.1702 2.67854 9.00018 5.09854C8.70018 5.70854 8.46018 6.44854 8.26018 7.29854L7.28018 11.4885C6.30018 15.6685 7.59018 17.7285 11.7602 18.7185L13.4402 19.1185C14.0202 19.2585 14.5602 19.3485 15.0602 19.3885C18.1802 19.6885 19.8402 18.2285 20.6802 14.6185L21.6602 10.4385C22.6402 6.25854 21.3602 4.18854 17.1702 3.20854ZM15.2902 13.3285C15.2002 13.6685 14.9002 13.8885 14.5602 13.8885C14.5002 13.8885 14.4402 13.8785 14.3702 13.8685L11.4602 13.1285C11.0602 13.0285 10.8202 12.6185 10.9202 12.2185C11.0202 11.8185 11.4302 11.5785 11.8302 11.6785L14.7402 12.4185C15.1502 12.5185 15.3902 12.9285 15.2902 13.3285ZM18.2202 9.94854C18.1302 10.2885 17.8302 10.5085 17.4902 10.5085C17.4302 10.5085 17.3702 10.4985 17.3002 10.4885L12.4502 9.25854C12.0502 9.15854 11.8102 8.74854 11.9102 8.34854C12.0102 7.94854 12.4202 7.70854 12.8202 7.80854L17.6702 9.03854C18.0802 9.12854 18.3202 9.53854 18.2202 9.94854Z" fill="currentColor"/></svg></span>
						<h5 class="title">{__("Posts")}</h5>
						<p>
							{__("See what everyone’s up to and what’s on their minds")}
						</p>
					</a>
				</div>
				{if $system['pages_enabled']}
					<div class="col-sm-6 col-md-6 col-lg-4">
						<a href="{$system['system_url']}/directory/pages" class="directory-card blue">
							<span><svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M18.0204 12.33L16.8004 11.11C16.5104 10.86 16.3404 10.49 16.3304 10.08C16.3104 9.63 16.4904 9.18 16.8204 8.85L18.0204 7.65C19.0604 6.61 19.4504 5.61 19.1204 4.82C18.8004 4.04 17.8104 3.61 16.3504 3.61H5.90039V2.75C5.90039 2.34 5.56039 2 5.15039 2C4.74039 2 4.40039 2.34 4.40039 2.75V21.25C4.40039 21.66 4.74039 22 5.15039 22C5.56039 22 5.90039 21.66 5.90039 21.25V16.37H16.3504C17.7904 16.37 18.7604 15.93 19.0904 15.14C19.4204 14.35 19.0404 13.36 18.0204 12.33Z" fill="currentColor"/></svg></span>
							<h5 class="title">{__("Pages")}</h5>
							<p>
								{__("Never miss a thing out! Keep in touch with your fans and customers")}
							</p>
						</a>
					</div>
				{/if}
				{if $system['events_enabled']}
					<div class="col-sm-6 col-md-6 col-lg-4">
						<a href="{$system['system_url']}/directory/events" class="directory-card purple">
							<span><svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M16.7502 3.56V2C16.7502 1.59 16.4102 1.25 16.0002 1.25C15.5902 1.25 15.2502 1.59 15.2502 2V3.5H8.75023V2C8.75023 1.59 8.41023 1.25 8.00023 1.25C7.59023 1.25 7.25023 1.59 7.25023 2V3.56C4.55023 3.81 3.24023 5.42 3.04023 7.81C3.02023 8.1 3.26023 8.34 3.54023 8.34H20.4602C20.7502 8.34 20.9902 8.09 20.9602 7.81C20.7602 5.42 19.4502 3.81 16.7502 3.56Z" fill="currentColor"/><path d="M20 9.83984H4C3.45 9.83984 3 10.2898 3 10.8398V16.9998C3 19.9998 4.5 21.9998 8 21.9998H16C19.5 21.9998 21 19.9998 21 16.9998V10.8398C21 10.2898 20.55 9.83984 20 9.83984ZM9.21 18.2098C9.11 18.2998 9 18.3698 8.88 18.4198C8.76 18.4698 8.63 18.4998 8.5 18.4998C8.37 18.4998 8.24 18.4698 8.12 18.4198C8 18.3698 7.89 18.2998 7.79 18.2098C7.61 18.0198 7.5 17.7598 7.5 17.4998C7.5 17.2398 7.61 16.9798 7.79 16.7898C7.89 16.6998 8 16.6298 8.12 16.5798C8.36 16.4798 8.64 16.4798 8.88 16.5798C9 16.6298 9.11 16.6998 9.21 16.7898C9.39 16.9798 9.5 17.2398 9.5 17.4998C9.5 17.7598 9.39 18.0198 9.21 18.2098ZM9.42 14.3798C9.37 14.4998 9.3 14.6098 9.21 14.7098C9.11 14.7998 9 14.8698 8.88 14.9198C8.76 14.9698 8.63 14.9998 8.5 14.9998C8.37 14.9998 8.24 14.9698 8.12 14.9198C8 14.8698 7.89 14.7998 7.79 14.7098C7.7 14.6098 7.63 14.4998 7.58 14.3798C7.53 14.2598 7.5 14.1298 7.5 13.9998C7.5 13.8698 7.53 13.7398 7.58 13.6198C7.63 13.4998 7.7 13.3898 7.79 13.2898C7.89 13.1998 8 13.1298 8.12 13.0798C8.36 12.9798 8.64 12.9798 8.88 13.0798C9 13.1298 9.11 13.1998 9.21 13.2898C9.3 13.3898 9.37 13.4998 9.42 13.6198C9.47 13.7398 9.5 13.8698 9.5 13.9998C9.5 14.1298 9.47 14.2598 9.42 14.3798ZM12.71 14.7098C12.61 14.7998 12.5 14.8698 12.38 14.9198C12.26 14.9698 12.13 14.9998 12 14.9998C11.87 14.9998 11.74 14.9698 11.62 14.9198C11.5 14.8698 11.39 14.7998 11.29 14.7098C11.11 14.5198 11 14.2598 11 13.9998C11 13.7398 11.11 13.4798 11.29 13.2898C11.39 13.1998 11.5 13.1298 11.62 13.0798C11.86 12.9698 12.14 12.9698 12.38 13.0798C12.5 13.1298 12.61 13.1998 12.71 13.2898C12.89 13.4798 13 13.7398 13 13.9998C13 14.2598 12.89 14.5198 12.71 14.7098Z" fill="currentColor"/></svg></span>
							<h5 class="title">{__("Events")}</h5>
							<p>
								{__("Members can organize community events for online and offline doings")}
							</p>
						</a>
					</div>
				{/if}
				{if $system['groups_enabled']}
					<div class="col-sm-6 col-md-6 col-lg-4">
						<a href="{$system['system_url']}/directory/groups" class="directory-card red">
							<span><svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M17.5291 7.77C17.4591 7.76 17.3891 7.76 17.3191 7.77C15.7691 7.72 14.5391 6.45 14.5391 4.89C14.5391 3.3 15.8291 2 17.4291 2C19.0191 2 20.3191 3.29 20.3191 4.89C20.3091 6.45 19.0791 7.72 17.5291 7.77Z" fill="currentColor"/><path d="M20.7916 14.7004C19.6716 15.4504 18.1016 15.7304 16.6516 15.5404C17.0316 14.7204 17.2316 13.8104 17.2416 12.8504C17.2416 11.8504 17.0216 10.9004 16.6016 10.0704C18.0816 9.8704 19.6516 10.1504 20.7816 10.9004C22.3616 11.9404 22.3616 13.6504 20.7916 14.7004Z" fill="currentColor"/><path d="M6.44016 7.77C6.51016 7.76 6.58016 7.76 6.65016 7.77C8.20016 7.72 9.43016 6.45 9.43016 4.89C9.43016 3.29 8.14016 2 6.54016 2C4.95016 2 3.66016 3.29 3.66016 4.89C3.66016 6.45 4.89016 7.72 6.44016 7.77Z" fill="currentColor"/><path d="M6.55109 12.8506C6.55109 13.8206 6.76109 14.7406 7.14109 15.5706C5.73109 15.7206 4.26109 15.4206 3.18109 14.7106C1.60109 13.6606 1.60109 11.9506 3.18109 10.9006C4.25109 10.1806 5.76109 9.89059 7.18109 10.0506C6.77109 10.8906 6.55109 11.8406 6.55109 12.8506Z" fill="currentColor"/><path d="M12.1208 15.87C12.0408 15.86 11.9508 15.86 11.8608 15.87C10.0208 15.81 8.55078 14.3 8.55078 12.44C8.56078 10.54 10.0908 9 12.0008 9C13.9008 9 15.4408 10.54 15.4408 12.44C15.4308 14.3 13.9708 15.81 12.1208 15.87Z" fill="currentColor"/><path d="M8.87078 17.9406C7.36078 18.9506 7.36078 20.6106 8.87078 21.6106C10.5908 22.7606 13.4108 22.7606 15.1308 21.6106C16.6408 20.6006 16.6408 18.9406 15.1308 17.9406C13.4208 16.7906 10.6008 16.7906 8.87078 17.9406Z" fill="currentColor"/></svg></span>
							<h5 class="title">{__("Groups")}</h5>
							<p>
								{__("Communicate and collaborate with the people who share your interests")}
							</p>
						</a>
					</div>
				{/if}
				{if $system['offers_enabled']}
					<div class="col-sm-6 col-md-6 col-lg-4">
						<a href="{$system['system_url']}/offers" class="directory-card green">
							<span><svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M21.5289 10.8689L20.0089 9.34891C19.7489 9.08891 19.5389 8.57891 19.5389 8.21891V6.05891C19.5389 5.17891 18.8189 4.45891 17.9389 4.45891H15.7889C15.4289 4.45891 14.9189 4.24891 14.6589 3.98891L13.1389 2.46891C12.5189 1.84891 11.4989 1.84891 10.8789 2.46891L9.33891 3.98891C9.08891 4.24891 8.57891 4.45891 8.20891 4.45891H6.05891C5.17891 4.45891 4.45891 5.17891 4.45891 6.05891V8.20891C4.45891 8.56891 4.24891 9.07891 3.98891 9.33891L2.46891 10.8589C1.84891 11.4789 1.84891 12.4989 2.46891 13.1189L3.98891 14.6389C4.24891 14.8989 4.45891 15.4089 4.45891 15.7689V17.9189C4.45891 18.7989 5.17891 19.5189 6.05891 19.5189H8.20891C8.56891 19.5189 9.07891 19.7289 9.33891 19.9889L10.8589 21.5089C11.4789 22.1289 12.4989 22.1289 13.1189 21.5089L14.6389 19.9889C14.8989 19.7289 15.4089 19.5189 15.7689 19.5189H17.9189C18.7989 19.5189 19.5189 18.7989 19.5189 17.9189V15.7689C19.5189 15.4089 19.7289 14.8989 19.9889 14.6389L21.5089 13.1189C22.1589 12.5089 22.1589 11.4889 21.5289 10.8689ZM7.99891 8.99891C7.99891 8.44891 8.44891 7.99891 8.99891 7.99891C9.54891 7.99891 9.99891 8.44891 9.99891 8.99891C9.99891 9.54891 9.55891 9.99891 8.99891 9.99891C8.44891 9.99891 7.99891 9.54891 7.99891 8.99891ZM9.52891 15.5289C9.37891 15.6789 9.18891 15.7489 8.99891 15.7489C8.80891 15.7489 8.61891 15.6789 8.46891 15.5289C8.17891 15.2389 8.17891 14.7589 8.46891 14.4689L14.4689 8.46891C14.7589 8.17891 15.2389 8.17891 15.5289 8.46891C15.8189 8.75891 15.8189 9.23891 15.5289 9.52891L9.52891 15.5289ZM14.9989 15.9989C14.4389 15.9989 13.9889 15.5489 13.9889 14.9989C13.9889 14.4489 14.4389 13.9989 14.9889 13.9989C15.5389 13.9989 15.9889 14.4489 15.9889 14.9989C15.9889 15.5489 15.5489 15.9989 14.9989 15.9989Z" fill="currentColor"/></svg></span>
							<h5 class="title">{__("Offers")}</h5>
							<p>
								{__("Find the best offers that you can buy")}
							</p>
						</a>
					</div>
				{/if}
				{if $system['jobs_enabled']}
					<div class="col-sm-6 col-md-6 col-lg-4">
						<a href="{$system['system_url']}/jobs" class="directory-card pink">
							<span><svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M21.091 6.97953C20.241 6.03953 18.821 5.56953 16.761 5.56953H16.521V5.52953C16.521 3.84953 16.521 1.76953 12.761 1.76953H11.241C7.48101 1.76953 7.48101 3.85953 7.48101 5.52953V5.57953H7.24101C5.17101 5.57953 3.76101 6.04953 2.91101 6.98953C1.92101 8.08953 1.95101 9.56953 2.05101 10.5795L2.06101 10.6495L2.13847 11.4628C2.15273 11.6126 2.2334 11.7479 2.35929 11.8303C2.59909 11.9872 3.00044 12.2459 3.24101 12.3795C3.38101 12.4695 3.53101 12.5495 3.68101 12.6295C5.39101 13.5695 7.27101 14.1995 9.18101 14.5095C9.27101 15.4495 9.68101 16.5495 11.871 16.5495C14.061 16.5495 14.491 15.4595 14.561 14.4895C16.601 14.1595 18.571 13.4495 20.351 12.4095C20.411 12.3795 20.451 12.3495 20.501 12.3195C20.8977 12.0953 21.3093 11.819 21.6845 11.5484C21.7975 11.4668 21.8698 11.3408 21.8852 11.2023L21.901 11.0595L21.951 10.5895C21.961 10.5295 21.961 10.4795 21.971 10.4095C22.051 9.39953 22.031 8.01953 21.091 6.97953ZM13.091 13.8295C13.091 14.8895 13.091 15.0495 11.861 15.0495C10.631 15.0495 10.631 14.8595 10.631 13.8395V12.5795H13.091V13.8295ZM8.91101 5.56953V5.52953C8.91101 3.82953 8.91101 3.19953 11.241 3.19953H12.761C15.091 3.19953 15.091 3.83953 15.091 5.52953V5.57953H8.91101V5.56953Z" fill="currentColor"/><path d="M20.8733 13.7349C21.2269 13.5666 21.6342 13.8469 21.5988 14.2369L21.2398 18.1907C21.0298 20.1907 20.2098 22.2307 15.8098 22.2307H8.18984C3.78984 22.2307 2.96984 20.1907 2.75984 18.2007L2.41913 14.4529C2.38409 14.0674 2.78205 13.7874 3.13468 13.947C4.2741 14.4625 6.37724 15.3771 7.67641 15.7174C7.84072 15.7604 7.97361 15.878 8.04556 16.0319C8.65253 17.33 9.96896 18.0207 11.8698 18.0207C13.752 18.0207 15.085 17.3034 15.694 16.0021C15.766 15.8481 15.8991 15.7305 16.0635 15.6873C17.443 15.3243 19.6816 14.3019 20.8733 13.7349Z" fill="currentColor"/></svg></span>
							<h5 class="title">{__("Jobs")}</h5>
							<p>
								{__("Seeking for a job, You can find theme here")}
							</p>
						</a>
					</div>
				{/if}
				{if $system['courses_enabled']}
					<div class="col-sm-6 col-md-6 col-lg-4">
						<a href="{$system['system_url']}/courses" class="directory-card purple">
							<span><svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path fill-rule="evenodd" clip-rule="evenodd" d="M3.25 7.65V19.5C3.25 21.2949 4.70507 22.75 6.5 22.75H15L15.0953 22.75H15.0953C15.9334 22.7501 16.4668 22.7502 16.9267 22.6587C18.811 22.2839 20.2839 20.811 20.6587 18.9267C20.7502 18.4668 20.7501 17.9334 20.75 17.0953L20.75 17V7.65C20.75 5.40979 20.75 4.28969 20.314 3.43404C19.9305 2.68139 19.3186 2.06947 18.566 1.68597C17.7103 1.25 16.5902 1.25 14.35 1.25H9.65C7.40979 1.25 6.28969 1.25 5.43404 1.68597C4.68139 2.06947 4.06947 2.68139 3.68597 3.43404C3.25 4.28969 3.25 5.40979 3.25 7.65ZM4.75 19.5C4.75 20.4665 5.5335 21.25 6.5 21.25H15C15.9653 21.25 16.3384 21.2464 16.634 21.1876C17.9233 20.9311 18.9311 19.9233 19.1876 18.634C19.2279 18.4312 19.2423 18.1919 19.2473 17.75H6.5C5.5335 17.75 4.75 18.5335 4.75 19.5ZM14.75 7.75C15.1642 7.75 15.5 7.41421 15.5 7C15.5 6.58579 15.1642 6.25 14.75 6.25H9.25C8.83579 6.25 8.5 6.58579 8.5 7C8.5 7.41421 8.83579 7.75 9.25 7.75H14.75Z" fill="currentColor"/></svg></span>
							<h5 class="title">{__("Courses")}</h5>
							<p>
								{__("Learn new skills, pursue your interests or advance your career with our short online courses")}
							</p>
						</a>
					</div>
				{/if}
				{if $system['blogs_enabled']}
					<div class="col-sm-6 col-md-6 col-lg-4">
						<a href="{$system['system_url']}/blogs" class="directory-card blue">
							<span><svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M15.7997 2.21048C15.3897 1.80048 14.6797 2.08048 14.6797 2.65048V6.14048C14.6797 7.60048 15.9197 8.81048 17.4297 8.81048C18.3797 8.82048 19.6997 8.82048 20.8297 8.82048C21.3997 8.82048 21.6997 8.15048 21.2997 7.75048C19.8597 6.30048 17.2797 3.69048 15.7997 2.21048Z" fill="currentColor"/><path d="M20.5 10.19H17.61C15.24 10.19 13.31 8.26 13.31 5.89V3C13.31 2.45 12.86 2 12.31 2H8.07C4.99 2 2.5 4 2.5 7.57V16.43C2.5 20 4.99 22 8.07 22H15.93C19.01 22 21.5 20 21.5 16.43V11.19C21.5 10.64 21.05 10.19 20.5 10.19ZM11.5 17.75H7.5C7.09 17.75 6.75 17.41 6.75 17C6.75 16.59 7.09 16.25 7.5 16.25H11.5C11.91 16.25 12.25 16.59 12.25 17C12.25 17.41 11.91 17.75 11.5 17.75ZM13.5 13.75H7.5C7.09 13.75 6.75 13.41 6.75 13C6.75 12.59 7.09 12.25 7.5 12.25H13.5C13.91 12.25 14.25 12.59 14.25 13C14.25 13.41 13.91 13.75 13.5 13.75Z" fill="currentColor"/></svg></span>
							<h5 class="title">{__("Blogs")}</h5>
							<p>
								{__("Sharing thoughts, ideas and creating amazing contents")}
							</p>
						</a>
					</div>
				{/if}
				{if $system['market_enabled']}
					<div class="col-sm-6 col-md-6 col-lg-4">
						<a href="{$system['system_url']}/market" class="directory-card orange">
							<span><svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M22.3596 8.27L22.0696 5.5C21.6496 2.48 20.2796 1.25 17.3497 1.25H14.9896H13.5097H10.4697H8.98965H6.58965C3.64965 1.25 2.28965 2.48 1.85965 5.53L1.58965 8.28C1.48965 9.35 1.77965 10.39 2.40965 11.2C3.16965 12.19 4.33965 12.75 5.63965 12.75C6.89965 12.75 8.10965 12.12 8.86965 11.11C9.54965 12.12 10.7097 12.75 11.9997 12.75C13.2896 12.75 14.4197 12.15 15.1096 11.15C15.8797 12.14 17.0696 12.75 18.3096 12.75C19.6396 12.75 20.8396 12.16 21.5896 11.12C22.1896 10.32 22.4597 9.31 22.3596 8.27Z" fill="currentColor"/><path d="M11.3491 16.6602C10.0791 16.7902 9.11914 17.8702 9.11914 19.1502V21.8902C9.11914 22.1602 9.33914 22.3802 9.60914 22.3802H14.3791C14.6491 22.3802 14.8691 22.1602 14.8691 21.8902V19.5002C14.8791 17.4102 13.6491 16.4202 11.3491 16.6602Z" fill="currentColor"/><path d="M21.3709 14.3981V17.3781C21.3709 20.1381 19.1309 22.3781 16.3709 22.3781C16.1009 22.3781 15.8809 22.1581 15.8809 21.8881V19.4981C15.8809 18.2181 15.4909 17.2181 14.7309 16.5381C14.0609 15.9281 13.1509 15.6281 12.0209 15.6281C11.7709 15.6281 11.5209 15.6381 11.2509 15.6681C9.47086 15.8481 8.12086 17.3481 8.12086 19.1481V21.8881C8.12086 22.1581 7.90086 22.3781 7.63086 22.3781C4.87086 22.3781 2.63086 20.1381 2.63086 17.3781V14.4181C2.63086 13.7181 3.32086 13.2481 3.97086 13.4781C4.24086 13.5681 4.51086 13.6381 4.79086 13.6781C4.91086 13.6981 5.04086 13.7181 5.16086 13.7181C5.32086 13.7381 5.48086 13.7481 5.64086 13.7481C6.80086 13.7481 7.94086 13.3181 8.84086 12.5781C9.70086 13.3181 10.8209 13.7481 12.0009 13.7481C13.1909 13.7481 14.2909 13.3381 15.1509 12.5981C16.0509 13.3281 17.1709 13.7481 18.3109 13.7481C18.4909 13.7481 18.6709 13.7381 18.8409 13.7181C18.9609 13.7081 19.0709 13.6981 19.1809 13.6781C19.4909 13.6381 19.7709 13.5481 20.0509 13.4581C20.7009 13.2381 21.3709 13.7181 21.3709 14.3981Z" fill="currentColor"/></svg></span>
							<h5 class="title">{__("Marketplace")}</h5>
							<p>
								{__("Trusted community marketplace wherein members can post and browse items")}
							</p>
						</a>
					</div>
				{/if}
				{if $system['funding_enabled']}
					<div class="col-sm-6 col-md-6 col-lg-4">
						<a href="{$system['system_url']}/funding" class="directory-card purple">
							<span><svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M16.44 3.10156C14.63 3.10156 13.01 3.98156 12 5.33156C10.99 3.98156 9.37 3.10156 7.56 3.10156C4.49 3.10156 2 5.60156 2 8.69156C2 9.88156 2.19 10.9816 2.52 12.0016C4.1 17.0016 8.97 19.9916 11.38 20.8116C11.72 20.9316 12.28 20.9316 12.62 20.8116C15.03 19.9916 19.9 17.0016 21.48 12.0016C21.81 10.9816 22 9.88156 22 8.69156C22 5.60156 19.51 3.10156 16.44 3.10156Z" fill="currentColor"/></svg></span>
							<h5 class="title">{__("Funding")}</h5>
							<p>
								{__("Fundraisers make it easy to support friends, family and the causes that are important to you")}
							</p>
						</a>
					</div>
				{/if}
				{if $system['forums_enabled']}
					<div class="col-sm-6 col-md-6 col-lg-4">
						<a href="{$system['system_url']}/forums" class="directory-card yellow">
							<span><svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M18.4704 16.83L18.8604 19.99C18.9604 20.82 18.0704 21.4 17.3604 20.97L13.9004 18.91C13.6604 18.77 13.6004 18.47 13.7304 18.23C14.2304 17.31 14.5004 16.27 14.5004 15.23C14.5004 11.57 11.3604 8.59 7.50038 8.59C6.71038 8.59 5.94038 8.71 5.22038 8.95C4.85038 9.07 4.49038 8.73 4.58038 8.35C5.49038 4.71 8.99038 2 13.1704 2C18.0504 2 22.0004 5.69 22.0004 10.24C22.0004 12.94 20.6104 15.33 18.4704 16.83Z" fill="currentColor"/><path d="M13 15.2298C13 16.4198 12.56 17.5198 11.82 18.3898C10.83 19.5898 9.26 20.3598 7.5 20.3598L4.89 21.9098C4.45 22.1798 3.89 21.8098 3.95 21.2998L4.2 19.3298C2.86 18.3998 2 16.9098 2 15.2298C2 13.4698 2.94 11.9198 4.38 10.9998C5.27 10.4198 6.34 10.0898 7.5 10.0898C10.54 10.0898 13 12.3898 13 15.2298Z" fill="currentColor"/></svg></span>
							<h5 class="title">{__("Forums")}</h5>
							<p>
								{__("Forum is an old­school framework for online community")}
							</p>
						</a>
					</div>
				{/if}
				{if $system['movies_enabled']}
					<div class="col-sm-6 col-md-6 col-lg-4">
						<a href="{$system['system_url']}/movies" class="directory-card green">
							<span><svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M6.36 7.78125H2V11.2512H6.36V7.78125Z" fill="currentColor"/><path d="M6.35844 6.28891V2.12891C4.07844 2.54891 2.58844 4.01891 2.14844 6.27891H6.32844C6.33844 6.27891 6.34844 6.28891 6.35844 6.28891Z" fill="currentColor"/><path d="M6.36 16.31V12.75H2V16.28H6.24C6.28 16.28 6.32 16.3 6.36 16.31Z" fill="currentColor"/><path d="M21.8494 6.27969C21.4194 4.08969 20.0194 2.64969 17.8594 2.17969V6.27969H21.8494Z" fill="currentColor"/><path d="M16.3594 11.25V2.01C16.3094 2 16.2494 2 16.1894 2H7.85938V11.25H16.3594Z" fill="currentColor"/><path d="M21.9994 12.75H17.8594V16.28H21.9994V12.75Z" fill="currentColor"/><path d="M17.8594 21.8212C19.9994 21.3512 21.3994 19.9313 21.8394 17.7812H17.8594V21.8212Z" fill="currentColor"/><path d="M6.24016 17.7817H2.16016C2.62016 20.0017 4.10016 21.4517 6.36016 21.8717V17.7617C6.32016 17.7717 6.28016 17.7817 6.24016 17.7817Z" fill="currentColor"/><path d="M21.9994 7.78125H17.8594V11.2512H21.9994V7.78125Z" fill="currentColor"/><path d="M7.85938 12.75V22H16.1894C16.2494 22 16.3094 22 16.3594 21.99V12.75H7.85938Z" fill="currentColor"/></svg></span>
							<h5 class="title">{__("Movies")}</h5>
							<p>
								{__("Watching movies always fun, Watch with the people who share your interests")}
							</p>
						</a>
					</div>
				{/if}
				{if $system['games_enabled']}
					<div class="col-sm-6 col-md-6 col-lg-4">
						<a href="{$system['system_url']}/directory/games" class="directory-card red">
							<span><svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M16.65 5.71875H7.35C4.4 5.71875 2 8.11875 2 11.0687V16.6488C2 19.5988 4.4 21.9988 7.35 21.9988H16.65C19.6 21.9988 22 19.5988 22 16.6488V11.0687C22 8.11875 19.6 5.71875 16.65 5.71875ZM14.5 12.0188C14.5 11.4688 14.95 11.0188 15.5 11.0188C16.05 11.0188 16.5 11.4688 16.5 12.0188C16.5 12.5688 16.05 13.0287 15.5 13.0287C14.95 13.0287 14.5 12.5888 14.5 12.0388V12.0188ZM10.13 16.0688C9.98 16.2188 9.79 16.2888 9.6 16.2888C9.41 16.2888 9.22 16.2188 9.07 16.0688L8.04 15.0387L7.05 16.0288C6.9 16.1788 6.71 16.2488 6.52 16.2488C6.33 16.2488 6.14 16.1788 5.99 16.0288C5.7 15.7388 5.7 15.2587 5.99 14.9688L6.98 13.9788L6.02 13.0188C5.73 12.7288 5.73 12.2488 6.02 11.9588C6.31 11.6688 6.79 11.6688 7.08 11.9588L8.04 12.9188L9.03 11.9288C9.32 11.6388 9.8 11.6388 10.09 11.9288C10.38 12.2188 10.38 12.6988 10.09 12.9887L9.1 13.9788L10.13 15.0088C10.42 15.2988 10.42 15.7788 10.13 16.0688ZM13.54 14.9988C12.99 14.9988 12.53 14.5488 12.53 13.9988C12.53 13.4488 12.97 12.9988 13.52 12.9988H13.54C14.09 12.9988 14.54 13.4488 14.54 13.9988C14.54 14.5488 14.1 14.9988 13.54 14.9988ZM15.5 16.9688C14.95 16.9688 14.5 16.5288 14.5 15.9788V15.9587C14.5 15.4087 14.95 14.9587 15.5 14.9587C16.05 14.9587 16.5 15.4087 16.5 15.9587C16.5 16.5087 16.06 16.9688 15.5 16.9688ZM17.48 14.9988C16.93 14.9988 16.47 14.5488 16.47 13.9988C16.47 13.4488 16.91 12.9988 17.46 12.9988H17.48C18.03 12.9988 18.48 13.4488 18.48 13.9988C18.48 14.5488 18.04 14.9988 17.48 14.9988Z" fill="currentColor"/><path d="M13.6394 2.71L13.6294 3.65C13.6194 4.53 12.8894 5.26 11.9994 5.26C11.8494 5.26 11.7594 5.36 11.7594 5.49C11.7594 5.62 11.8594 5.72 11.9894 5.72H10.3794C10.3694 5.65 10.3594 5.57 10.3594 5.49C10.3594 4.59 11.0894 3.86 11.9794 3.86C12.1294 3.86 12.2294 3.76 12.2294 3.63L12.2394 2.69C12.2494 2.31 12.5594 2 12.9394 2H12.9494C13.3394 2 13.6394 2.32 13.6394 2.71Z" fill="currentColor"/></svg></span>
							<h5 class="title">{__("Games")}</h5>
							<p>
								{__("Playing games always fun, Play with the people who share your interests")}
							</p>
						</a>
					</div>
				{/if}
			</div>
		</div>
    </div>

{else}

    <div class="container position-relative">
		<div class="ele_content mb30">
			<div class="text-center content-tabs">
				<ul>
					<li {if $view == "users"}class="active"{/if}>
						<a href="{$system['system_url']}/directory/users">
							<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M9.16006 10.87C9.06006 10.86 8.94006 10.86 8.83006 10.87C6.45006 10.79 4.56006 8.84 4.56006 6.44C4.56006 3.99 6.54006 2 9.00006 2C11.4501 2 13.4401 3.99 13.4401 6.44C13.4301 8.84 11.5401 10.79 9.16006 10.87Z" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/><path d="M16.41 4C18.35 4 19.91 5.57 19.91 7.5C19.91 9.39 18.41 10.93 16.54 11C16.46 10.99 16.37 10.99 16.28 11" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/><path d="M4.15997 14.56C1.73997 16.18 1.73997 18.82 4.15997 20.43C6.90997 22.27 11.42 22.27 14.17 20.43C16.59 18.81 16.59 16.17 14.17 14.56C11.43 12.73 6.91997 12.73 4.15997 14.56Z" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/><path d="M18.3401 20C19.0601 19.85 19.7401 19.56 20.3001 19.13C21.8601 17.96 21.8601 16.03 20.3001 14.86C19.7501 14.44 19.0801 14.16 18.3701 14" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/></svg> {__("Users")}
						</a>
					</li>
					<li {if $view == "posts"}class="active"{/if}>
						<a href="{$system['system_url']}/directory/posts">
							<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M21.6601 10.44L20.6801 14.62C19.8401 18.23 18.1801 19.69 15.0601 19.39C14.5601 19.35 14.0201 19.26 13.4401 19.12L11.7601 18.72C7.59006 17.73 6.30006 15.67 7.28006 11.49L8.26006 7.30001C8.46006 6.45001 8.70006 5.71001 9.00006 5.10001C10.1701 2.68001 12.1601 2.03001 15.5001 2.82001L17.1701 3.21001C21.3601 4.19001 22.6401 6.26001 21.6601 10.44Z" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/><path d="M15.06 19.39C14.44 19.81 13.66 20.16 12.71 20.47L11.13 20.99C7.15998 22.27 5.06997 21.2 3.77997 17.23L2.49997 13.28C1.21997 9.30998 2.27997 7.20998 6.24997 5.92998L7.82997 5.40998C8.23997 5.27998 8.62997 5.16998 8.99997 5.09998C8.69997 5.70998 8.45997 6.44998 8.25997 7.29998L7.27997 11.49C6.29997 15.67 7.58998 17.73 11.76 18.72L13.44 19.12C14.02 19.26 14.56 19.35 15.06 19.39Z" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/><path d="M12.64 8.53003L17.49 9.76003" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/><path d="M11.66 12.4L14.56 13.14" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/></svg> {__("Posts")}
						</a>
					</li>
					{if $system['pages_enabled']}
						<li {if $view == "pages"}class="active"{/if}>
							<a href="{$system['system_url']}/directory/pages">
								<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M5.15002 2V22" stroke="currentColor" stroke-width="2" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"/><path d="M5.15002 4H16.35C19.05 4 19.65 5.5 17.75 7.4L16.55 8.6C15.75 9.4 15.75 10.7 16.55 11.4L17.75 12.6C19.65 14.5 18.95 16 16.35 16H5.15002" stroke="currentColor" stroke-width="2" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"/></svg> {__("Pages")}
							</a>
						</li>
					{/if}
					{if $system['groups_enabled']}
						<li {if $view == "groups"}class="active"{/if}>
							<a href="{$system['system_url']}/directory/groups">
								<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M18 7.16C17.94 7.15 17.87 7.15 17.81 7.16C16.43 7.11 15.33 5.98 15.33 4.58C15.33 3.15 16.48 2 17.91 2C19.34 2 20.49 3.16 20.49 4.58C20.48 5.98 19.38 7.11 18 7.16Z" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/><path d="M16.9699 14.44C18.3399 14.67 19.8499 14.43 20.9099 13.72C22.3199 12.78 22.3199 11.24 20.9099 10.3C19.8399 9.59004 18.3099 9.35003 16.9399 9.59003" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/><path d="M5.96998 7.16C6.02998 7.15 6.09998 7.15 6.15998 7.16C7.53998 7.11 8.63998 5.98 8.63998 4.58C8.63998 3.15 7.48998 2 6.05998 2C4.62998 2 3.47998 3.16 3.47998 4.58C3.48998 5.98 4.58998 7.11 5.96998 7.16Z" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/><path d="M6.99994 14.44C5.62994 14.67 4.11994 14.43 3.05994 13.72C1.64994 12.78 1.64994 11.24 3.05994 10.3C4.12994 9.59004 5.65994 9.35003 7.02994 9.59003" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/><path d="M12 14.63C11.94 14.62 11.87 14.62 11.81 14.63C10.43 14.58 9.32996 13.45 9.32996 12.05C9.32996 10.62 10.48 9.46997 11.91 9.46997C13.34 9.46997 14.49 10.63 14.49 12.05C14.48 13.45 13.38 14.59 12 14.63Z" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/><path d="M9.08997 17.78C7.67997 18.72 7.67997 20.26 9.08997 21.2C10.69 22.27 13.31 22.27 14.91 21.2C16.32 20.26 16.32 18.72 14.91 17.78C13.32 16.72 10.69 16.72 9.08997 17.78Z" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/></svg> {__("Groups")}
							</a>
						</li>
					{/if}
					{if $system['events_enabled']}
						<li {if $view == "events"}class="active"{/if}>
							<a href="{$system['system_url']}/directory/events">
								<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M8 2V5" stroke="currentColor" stroke-width="2" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"/><path d="M16 2V5" stroke="currentColor" stroke-width="2" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"/><path d="M3.5 9.08997H20.5" stroke="currentColor" stroke-width="2" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"/><path d="M21 8.5V17C21 20 19.5 22 16 22H8C4.5 22 3 20 3 17V8.5C3 5.5 4.5 3.5 8 3.5H16C19.5 3.5 21 5.5 21 8.5Z" stroke="currentColor" stroke-width="2" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"/><path d="M11.9955 13.7H12.0045" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/><path d="M8.29431 13.7H8.30329" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/><path d="M8.29431 16.7H8.30329" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/></svg> {__("Events")}
							</a>
						</li>
					{/if}
					{if $system['games_enabled']}
						<li {if $view == "games"}class="active"{/if}>
							<a href="{$system['system_url']}/directory/games">
								<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M9.57002 12.46L6.52002 15.51" stroke="currentColor" stroke-width="2" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"/><path d="M6.55005 12.49L9.60005 15.54" stroke="currentColor" stroke-width="2" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"/><path d="M13.53 14H13.54" stroke="currentColor" stroke-width="2" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"/><path d="M17.47 14H17.48" stroke="currentColor" stroke-width="2" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"/><path d="M15.5 15.98V15.96" stroke="currentColor" stroke-width="2" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"/><path d="M15.5 12.04V12.02" stroke="currentColor" stroke-width="2" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"/><path d="M9 22H15C20 22 22 20 22 15V13C22 8 20 6 15 6H9C4 6 2 8 2 13V15C2 20 4 22 9 22Z" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/><path d="M13.01 2L13 3.01C12.99 3.56 12.55 4 12 4H11.97C11.42 4 10.98 4.45 10.98 5C10.98 5.55 11.43 6 11.98 6H12.98" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/></svg> {__("Games")}
							</a>
						</li>
					{/if}
				</ul>
			</div>
			
			<div class="row">
				<!-- center panel -->
				<div class="col-lg-8 middlecol pb20">
					{if $view == "users"}
						{if $rows}
							<ul class="ele_side_users">
								{foreach $rows as $_user}
								{include file='__feeds_user.tpl' _tpl="list" _connection=$_user["connection"]}
								{/foreach}
							</ul>
							{$pager}
						{else}
							{include file='_no_data.tpl'}
						{/if}

					{elseif $view == "posts"}
						{if $rows}
							<ul>
								{foreach $rows as $post}
								{include file='__feeds_post.tpl'}
								{/foreach}
							</ul>
							{$pager}
						{else}
							{include file='_no_data.tpl'}
						{/if}

					{elseif $view == "pages"}
						{if $rows}
							<ul class="ele_side_users ele_side_page">
								{foreach $rows as $_page}
								{include file='__feeds_page.tpl' _tpl="list"}
								{/foreach}
							</ul>
							{$pager}
						{else}
							{include file='_no_data.tpl'}
						{/if}

					{elseif $view == "groups"}
						{if $rows}
							<ul class="ele_side_users ele_side_group">
								{foreach $rows as $_group}
								{include file='__feeds_group.tpl' _tpl="list"}
								{/foreach}
							</ul>
							{$pager}
						{else}
							{include file='_no_data.tpl'}
						{/if}

					{elseif $view == "events"}
						{if $rows}
							<ul class="valign ele_side_events height">
								{foreach $rows as $_event}
								{include file='__feeds_event.tpl' _tpl="box"}
								{/foreach}
							</ul>
							{$pager}
						{else}
							{include file='_no_data.tpl'}
						{/if}

					{elseif $view == "games"}
						{if $rows}
							<ul class="row mb-n3">
								{foreach $rows as $_game}
								{include file='__feeds_game.tpl' _tpl="box"}
								{/foreach}
							</ul>
							{$pager}
						{else}
							{include file='_no_data.tpl'}
						{/if}

					{/if}
				</div>
				<!-- center panel -->

				<!-- right panel -->
				<div class="col-lg-4 sidebar rightcol">
					{include file='_ads_campaigns.tpl'}
					{include file='_ads.tpl'}
					{include file='_widget.tpl'}
				</div>
				<!-- right panel -->
			</div>
		</div>
    </div>

{/if}
<!-- page content -->

{include file='_footer.tpl'}