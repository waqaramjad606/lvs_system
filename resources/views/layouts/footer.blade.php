<footer>
    <div class="container">
        <div class="row">
            <div class="col-lg-4 col-md-6">
                <h3 style="color:white; font-size: 20px;">Contact Information</h3>
                <ul class="contact_information">
                    <li><span><img src="{{ asset('lvs_assets/images/location_icon.png') }} " alt="#" /></span><span class="text_cont">Gift University<br>Gujranwala, Pakistan</span></li>
                    <li><span><img src="{{ asset('lvs_assets/images/phone_icon.png') }}" alt="#" /></span><span class="text_cont">055*******<br>055********</span></li>
                    <li><span><img src="{{ asset('lvs_assets/images/mail_icon.png') }}" alt="#" /></span><span class="text_cont">181400029@gift.edu.pk<br>181400179@gift.edu.pk</span></li>
                </ul>

            </div>
            <br> <br>
            <div class="col-lg-4 col-md-6">
                <div class="footer_links">
                    <h3>Quick link</h3>
                    <ul>
                        <li><a href="{{ route('home') }}"><i class="fa fa-angle-right" aria-hidden="true"></i> Home</a></li>
                        <li><a href="#"><i class="fa fa-angle-right" aria-hidden="true"></i> Private NGO</a></li>
                        <li><a href="{{ route('apply_application') }}"><i class="fa fa-angle-right" aria-hidden="true"></i> Loan Application</a></li>
                        <li><a href="{{ route('track') }}"><i class="fa fa-angle-right" aria-hidden="true"></i> Tracking Application</a></li>
                        <li><a href="{{ route('about') }}"><i class="fa fa-angle-right" aria-hidden="true"></i> About Us</a></li>

                    </ul>
                </div>
            </div>

            <br> <br>
            <div class="col-lg-3 col-md-6">
                <div class="footer_links">
                    <h3>Contact us</h3>
                    <form action="">
                        <fieldset>
                            <div class="field">
                                <input type="text" name="name" placeholder="Your Name" required="" />
                            </div>
                            <div class="field">
                                <input type="email" name="email" placeholder="Email" required="" />
                            </div>
                            <div class="field">
                                <input type="text" name="subject" placeholder="Subject" required="" />
                            </div>
                            <div class="field">
                                <textarea placeholder="Message"></textarea>
                            </div>
                            <div class="field">
                                <div class="center">
                                    <button class="reply_bt">Send</button>
                                </div>
                            </div>
                        </fieldset>
                    </form>
                </div>
            </div>
        </div>
    </div>
</footer>
