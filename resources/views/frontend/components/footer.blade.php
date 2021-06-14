<style>
    @if (config('layouts.component.footer.color_text'))
        #footer ul li a {
            color: {{ config('layouts.component.footer.color_text') }};
        }
        #footer .title {
            {{ config('layouts.component.footer.title') }};
        }
    @endif
</style>
<div id="footer" style="background: {{ config('layouts.component.footer.background') }}">
    <div class="container footer">
        
        <div class="footer__mid">
            
        </div>
        <div class="footer__right">
            
        </div>
    </div>
    <div class="container footer">
        <div class="col-5" style="margin-right: 50px;">
            <div class="footer-widget">
                <div class="title">KẾT NỐI VỚI CHÚNG TÔI</div>
                <ul class="list-menu" style="display:block">
                    <li>Địa chỉ: 180 Cao Lỗ , Phường 4 , Quận 8, TP.HCM</li>
                    <li>Hotline: 0932022097</li>
                    <li>Email: </li>
                </ul>
            </div>
        </div>
        <div class="col-4 footer__left">
            <div class="bot">
                <div class="social">
                    <div class="title">KẾT NỐI VỚI CHÚNG TÔI</div>
                    <p>
                        <a href="" class="fa fa fa-youtube"></a>
                        <a href="" class="fa fa-facebook-official"></a>
                        <a href="" class="fa fa-twitter"></a>
                    </p>
                </div>
            </div>
        </div>
    </div>
</div>

