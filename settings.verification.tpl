<h2 class="ele_page_title small mt-n1 mb-4">{__("Verification")}</h2>

{if $case == "verified"}
	<div class="text-center">
		<div class="big-icon success valign justify-content-center">
			<svg width="50" height="50" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M21.5609 10.7386L20.2009 9.15859C19.9409 8.85859 19.7309 8.29859 19.7309 7.89859V6.19859C19.7309 5.13859 18.8609 4.26859 17.8009 4.26859H16.1009C15.7109 4.26859 15.1409 4.05859 14.8409 3.79859L13.2609 2.43859C12.5709 1.84859 11.4409 1.84859 10.7409 2.43859L9.17086 3.80859C8.87086 4.05859 8.30086 4.26859 7.91086 4.26859H6.18086C5.12086 4.26859 4.25086 5.13859 4.25086 6.19859V7.90859C4.25086 8.29859 4.04086 8.85859 3.79086 9.15859L2.44086 10.7486C1.86086 11.4386 1.86086 12.5586 2.44086 13.2486L3.79086 14.8386C4.04086 15.1386 4.25086 15.6986 4.25086 16.0886V17.7986C4.25086 18.8586 5.12086 19.7286 6.18086 19.7286H7.91086C8.30086 19.7286 8.87086 19.9386 9.17086 20.1986L10.7509 21.5586C11.4409 22.1486 12.5709 22.1486 13.2709 21.5586L14.8509 20.1986C15.1509 19.9386 15.7109 19.7286 16.1109 19.7286H17.8109C18.8709 19.7286 19.7409 18.8586 19.7409 17.7986V16.0986C19.7409 15.7086 19.9509 15.1386 20.2109 14.8386L21.5709 13.2586C22.1509 12.5686 22.1509 11.4286 21.5609 10.7386ZM16.1609 10.1086L11.3309 14.9386C11.1909 15.0786 11.0009 15.1586 10.8009 15.1586C10.6009 15.1586 10.4109 15.0786 10.2709 14.9386L7.85086 12.5186C7.56086 12.2286 7.56086 11.7486 7.85086 11.4586C8.14086 11.1686 8.62086 11.1686 8.91086 11.4586L10.8009 13.3486L15.1009 9.04859C15.3909 8.75859 15.8709 8.75859 16.1609 9.04859C16.4509 9.33859 16.4509 9.81859 16.1609 10.1086Z" fill="currentColor"></path></svg>
		</div>
		<h4 class="mt-4">{__("Congratulations")}</h4>
		<p>{__("This account is verified")}</p>
	</div>
{elseif $case == "pending"}
	<div class="text-center">
		<div class="big-icon warning valign justify-content-center">
			<svg width="50" height="50" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M12 2C6.49 2 2 6.49 2 12C2 17.51 6.49 22 12 22C17.51 22 22 17.51 22 12C22 6.49 17.51 2 12 2ZM16.35 15.57C16.21 15.81 15.96 15.94 15.7 15.94C15.57 15.94 15.44 15.91 15.32 15.83L12.22 13.98C11.45 13.52 10.88 12.51 10.88 11.62V7.52C10.88 7.11 11.22 6.77 11.63 6.77C12.04 6.77 12.38 7.11 12.38 7.52V11.62C12.38 11.98 12.68 12.51 12.99 12.69L16.09 14.54C16.45 14.75 16.57 15.21 16.35 15.57Z" fill="currentColor"/></svg>
		</div>
		<h4 class="mt-4">{__("Pending")}</h4>
		<p>{__("Your verification request is still awaiting admin approval")}</p>
	</div>
{elseif $case == "request" || "declined"}
	<form class="js_ajax-forms" data-url="users/verify.php?node=user">
		{if $case == "declined"}
			<div class="text-center">
				<div class="big-icon error valign justify-content-center">
					<svg width="50" height="50" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M12 2C6.49 2 2 6.49 2 12C2 17.51 6.49 22 12 22C17.51 22 22 17.51 22 12C22 6.49 17.51 2 12 2ZM15.36 14.3C15.65 14.59 15.65 15.07 15.36 15.36C15.21 15.51 15.02 15.58 14.83 15.58C14.64 15.58 14.45 15.51 14.3 15.36L12 13.06L9.7 15.36C9.55 15.51 9.36 15.58 9.17 15.58C8.98 15.58 8.79 15.51 8.64 15.36C8.35 15.07 8.35 14.59 8.64 14.3L10.94 12L8.64 9.7C8.35 9.41 8.35 8.93 8.64 8.64C8.93 8.35 9.41 8.35 9.7 8.64L12 10.94L14.3 8.64C14.59 8.35 15.07 8.35 15.36 8.64C15.65 8.93 15.65 9.41 15.36 9.7L13.06 12L15.36 14.3Z" fill="currentColor"/></svg>
				</div>
				<h4 class="mt-4">{__("Sorry")}</h4>
				<p>{__("Your verification request has been declined by the admin")}</p>
			</div>
			<hr>
		{/if}
	  
		{if $system['verification_docs_required']}
			<div class="mb-4">
				<div class="row">
					<div class="col-sm-6">
						<label class="form-control-label">
							{__("Your Photo")}
						</label>
						<div class="x-image full">
							<button type="button" class="close x-hidden js_x-image-remover" title='{__("Remove")}'>
								<span>×</span>
							</button>
							<div class="x-image-loader">
								<div class="progress x-progress">
									<div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100"></div>
								</div>
							</div>
							<i class="fa fa-camera fa-2x js_x-uploader" data-handle="x-image"></i>
							<input type="hidden" class="js_x-uploader-input" name="photo" value="">
						</div>
					</div>
					<div class="col-sm-6">
						<label class="form-control-label">
							{__("Passport or National ID")}
						</label>
						<div class="x-image full">
							<button type="button" class="close x-hidden js_x-image-remover" title='{__("Remove")}'>
								<span>×</span>
							</button>
							<div class="x-image-loader">
								<div class="progress x-progress">
									<div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100"></div>
								</div>
							</div>
							<i class="fa fa-camera fa-2x js_x-uploader" data-handle="x-image"></i>
							<input type="hidden" class="js_x-uploader-input" name="passport" value="">
						</div>
					</div>
				</div>
				<span class="form-text">
					{__("Please attach your photo and your Passport or National ID")}
				</span>
			</div>
		{/if}
		
		<label class="ele_field mb-4">
			<textarea placeholder=" " rows="4" name="message"></textarea>
			<span>{__("Additional Information")}</span>
		</label>
		<span class="help-block">{__("Please share why your account should be verified")}</span>

		<!-- success -->
		<div class="alert alert-success mb0 x-hidden"></div>
		<!-- success -->

		<!-- error -->
		<div class="alert alert-danger mb0 x-hidden"></div>
		<!-- error -->

		<div class="text-center ele_sett_bott_btn">
			<button type="submit" class="btn btn-primary btn-mat">{__("Send")}</button>
		</div>
	</form>
{/if}