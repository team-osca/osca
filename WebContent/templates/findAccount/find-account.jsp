<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="preload" href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard@v1.3.6/dist/web/static/pretendard-dynamic-subset.css" as="style">
    <link rel="preload" href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard@v1.3.6/dist/web/static/pretendard-std-dynamic-subset.css" as="style">
    <link rel="preload" href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard@v1.3.6/dist/web/static/pretendard-dynamic-subset.css" as="style">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard@v1.3.6/dist/web/static/pretendard-std-dynamic-subset.css">
    <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard@v1.3.6/dist/web/static/pretendard-dynamic-subset.css">
    <link rel="icon" type="image/png" sizes="16x16" href="${pageContext.request.contextPath}/static/allimages/all-image/favicon.jpg">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/findAccount/base.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/findAccount/findAccount.css">
    <title>계정 찾기</title>    
  </head>
  <body>
    <div id="find-id" style="overflow: unset;">
      <div class="all-container">
        <div class="main-wrapper">
          <div class="main">
            <div class="header-wrapper">
              <div class="pre-btn-wrapper">
                <button type="button" class="pre-bth">
                  <span class="btn-span">
                    <svg viewBox="0 0 18 18" class="bth-svg">
                      <path
                        d="m6.045 9 5.978-5.977a.563.563 0 1 0-.796-.796L4.852 8.602a.562.562 0 0 0 0 .796l6.375 6.375a.563.563 0 0 0 .796-.796L6.045 9z"
                      ></path>
                    </svg>
                  </span>
                </button>
              </div>
              <div class="header">
                <p             
                  color="var(--theme-palette-colors-black-100)"
                  class="header-text"
                >
                  계정 찾기
                </p>
              </div>
              <div class="padding"></div>
            </div>
            <div class="main-body">
              <p
                color="var(--theme-palette-colors-gray-600)"
                class="guide-message"
              >
                계정을 찾기 위해 전화번호를 입력해주세요.
              </p>
              <div class="phonenumber-input-wrapper">
                <label
                  color="var(--theme-palette-colors-gray-600)"
                  for="mobile"
                  class="css-1isrpua"
                  >휴대폰 번호</label
                >
              </div>
              <div>
                <div class="select-box-wrapper"> 
                  <select class="local-select-box">
                    <option value="KR">South Korea +82</option>
                    <option value="JP">Japan +81</option>
                    <option value="TW">Taiwan +886</option>
                    <option value="HK">Hong Kong +852</option>
                    <option value="SG">Singapore +65</option>
                    <option value="AF">Afghanistan +93</option>
                    <option value="AL">Albania +355</option>
                    <option value="DZ">Algeria +213</option>
                    <option value="AO">Angola +244</option>
                    <option value="AR">Argentina +54</option>
                    <option value="AM">Armenia +374</option>
                    <option value="AW">Aruba +297</option>
                    <option value="AU">Australia +61</option>
                    <option value="AT">Austria +43</option>
                    <option value="AZ">Azerbaijan +994</option>
                    <option value="BH">Bahrain +973</option>
                    <option value="BD">Bangladesh +880</option>
                    <option value="BY">Belarus +375</option>
                    <option value="BE">Belgium +32</option>
                    <option value="BZ">Belize +501</option>
                    <option value="BJ">Benin +229</option>
                    <option value="BT">Bhutan +975</option>
                    <option value="BO">Bolivia +591</option>
                    <option value="BW">Botswana +267</option>
                    <option value="BR">Brazil +55</option>
                    <option value="BN">Brunei +673</option>
                    <option value="BG">Bulgaria +359</option>
                    <option value="BF">Burkina Faso +226</option>
                    <option value="KH">Cambodia +855</option>
                    <option value="CM">Cameroon +237</option>
                    <option value="CA">Canada +1</option>
                    <option value="CL">Chile +56</option>
                    <option value="CN">China +86</option>
                    <option value="CX">Christmas Island +61</option>
                    <option value="CC">Cocos Islands +61</option>
                    <option value="CO">Colombia +57</option>
                    <option value="KM">Comoros +269</option>
                    <option value="CR">Costa Rica +506</option>
                    <option value="HR">Croatia +385</option>
                    <option value="CU">Cuba +53</option>
                    <option value="CW">Curacao +599</option>
                    <option value="CY">Cyprus +357</option>
                    <option value="CZ">Czech Republic +420</option>
                    <option value="DK">Denmark +45</option>
                    <option value="DJ">Djibouti +253</option>
                    <option value="EC">Ecuador +593</option>
                    <option value="EG">Egypt +20</option>
                    <option value="SV">El Salvador +503</option>
                    <option value="GQ">Equatorial Guinea +240</option>
                    <option value="EE">Estonia +372</option>
                    <option value="ET">Ethiopia +251</option>
                    <option value="FO">Faroe Islands +298</option>
                    <option value="FJ">Fiji +679</option>
                    <option value="FI">Finland +358</option>
                    <option value="FR">France +33</option>
                    <option value="PF">French Polynesia +689</option>
                    <option value="GM">Gambia +220</option>
                    <option value="GE">Georgia +995</option>
                    <option value="DE">Germany +49</option>
                    <option value="GH">Ghana +233</option>
                    <option value="GR">Greece +30</option>
                    <option value="GL">Greenland +299</option>
                    <option value="GT">Guatemala +502</option>
                    <option value="GN">Guinea +224</option>
                    <option value="GY">Guyana +592</option>
                    <option value="HT">Haiti +509</option>
                    <option value="HN">Honduras +504</option>
                    <option value="HU">Hungary +36</option>
                    <option value="IS">Iceland +354</option>
                    <option value="IN">India +91</option>
                    <option value="ID">Indonesia +62</option>
                    <option value="IR">Iran +98</option>
                    <option value="IQ">Iraq +964</option>
                    <option value="IE">Ireland +353</option>
                    <option value="IL">Israel +972</option>
                    <option value="IT">Italy +39</option>
                    <option value="JO">Jordan +962</option>
                    <option value="KZ">Kazakhstan +7</option>
                    <option value="KE">Kenya +254</option>
                    <option value="XK">Kosovo +383</option>
                    <option value="KW">Kuwait +965</option>
                    <option value="KG">Kyrgyzstan +996</option>
                    <option value="LA">Laos +856</option>
                    <option value="LV">Latvia +371</option>
                    <option value="LB">Lebanon +961</option>
                    <option value="LY">Libya +218</option>
                    <option value="LI">Liechtenstein +423</option>
                    <option value="LT">Lithuania +370</option>
                    <option value="LU">Luxembourg +352</option>
                    <option value="MO">Macau +853</option>
                    <option value="MK">Macedonia +389</option>
                    <option value="MG">Madagascar +261</option>
                    <option value="MW">Malawi +265</option>
                    <option value="MY">Malaysia +60</option>
                    <option value="MV">Maldives +960</option>
                    <option value="ML">Mali +223</option>
                    <option value="MT">Malta +356</option>
                    <option value="MH">Marshall Islands +692</option>
                    <option value="MR">Mauritania +222</option>
                    <option value="MU">Mauritius +230</option>
                    <option value="MX">Mexico +52</option>
                    <option value="MD">Moldova +373</option>
                    <option value="MN">Mongolia +976</option>
                    <option value="ME">Montenegro +382</option>
                    <option value="MA">Morocco +212</option>
                    <option value="MZ">Mozambique +258</option>
                    <option value="MM">Myanmar +95</option>
                    <option value="NA">Namibia +264</option>
                    <option value="NP">Nepal +977</option>
                    <option value="NL">Netherlands +31</option>
                    <option value="NC">New Caledonia +687</option>
                    <option value="NZ">New Zealand +64</option>
                    <option value="NI">Nicaragua +505</option>
                    <option value="NE">Niger +227</option>
                    <option value="NG">Nigeria +234</option>
                    <option value="NO">Norway +47</option>
                    <option value="OM">Oman +968</option>
                    <option value="PK">Pakistan +92</option>
                    <option value="PW">Palau +680</option>
                    <option value="PS">Palestine +970</option>
                    <option value="PA">Panama +507</option>
                    <option value="PG">Papua New Guinea +675</option>
                    <option value="PY">Paraguay +595</option>
                    <option value="PE">Peru +51</option>
                    <option value="PH">Philippines +63</option>
                    <option value="PL">Poland +48</option>
                    <option value="PT">Portugal +351</option>
                    <option value="QA">Qatar +974</option>
                    <option value="RE">Reunion +262</option>
                    <option value="RO">Romania +40</option>
                    <option value="RU">Russia +7</option>
                    <option value="RW">Rwanda +250</option>
                    <option value="WS">Samoa +685</option>
                    <option value="SA">Saudi Arabia +966</option>
                    <option value="SN">Senegal +221</option>
                    <option value="RS">Serbia +381</option>
                    <option value="SC">Seychelles +248</option>
                    <option value="SL">Sierra Leone +232</option>
                    <option value="SK">Slovakia +421</option>
                    <option value="SI">Slovenia +386</option>
                    <option value="SB">Solomon Islands +677</option>
                    <option value="SO">Somalia +252</option>
                    <option value="ZA">South Africa +27</option>
                    <option value="SS">South Sudan +211</option>
                    <option value="ES">Spain +34</option>
                    <option value="LK">Sri Lanka +94</option>
                    <option value="SD">Sudan +249</option>
                    <option value="SR">Suriname +597</option>
                    <option value="SE">Sweden +46</option>
                    <option value="CH">Switzerland +41</option>
                    <option value="SY">Syria +963</option>
                    <option value="TJ">Tajikistan +992</option>
                    <option value="TZ">Tanzania +255</option>
                    <option value="TH">Thailand +66</option>
                    <option value="TG">Togo +228</option>
                    <option value="TO">Tonga +676</option>
                    <option value="TN">Tunisia +216</option>
                    <option value="TR">Turkey +90</option>
                    <option value="TM">Turkmenistan +993</option>
                    <option value="UG">Uganda +256</option>
                    <option value="UA">Ukraine +380</option>
                    <option value="AE">United Arab Emirates +971</option>
                    <option value="GB">United Kingdom +44</option>
                    <option value="US">United States +1</option>
                    <option value="UY">Uruguay +598</option>
                    <option value="UZ">Uzbekistan +998</option>
                    <option value="VU">Vanuatu +678</option>
                    <option value="VE">Venezuela +58</option>
                    <option value="VN">Vietnam +84</option>
                    <option value="YE">Yemen +967</option>
                    <option value="ZM">Zambia +260</option>
                    <option value="ZW">Zimbabwe +263</option>
                  </select>
                  <div class="x-image-wrapper">
                    <span class="btn-span"
                      ><svg viewBox="0 0 10 6" class="x-image-span">
                        <path
                          fill-rule="evenodd"
                          clip-rule="evenodd"
                          d="M5 3.93934L1.28033 0.21967C0.987437 -0.0732233 0.512563 -0.0732233 0.21967 0.21967C-0.0732233 0.512563 -0.0732233 0.987437 0.21967 1.28033L4.46967 5.53033C4.76256 5.82322 5.23744 5.82322 5.53033 5.53033L9.78033 1.28033C10.0732 0.987437 10.0732 0.512563 9.78033 0.21967C9.48744 -0.0732233 9.01256 -0.0732233 8.71967 0.21967L5 3.93934Z"
                          fill="var(--theme-palette-colors-gray-900)"
                        ></path></svg
                    ></span>
                  </div>
                </div>
                <div class="check-phonenumber-wrapper">
                <form action="find_account.member" method="post" name="phoneNumberFrom">
	                  <input
	                    type="text"
	                    placeholder="(예시) 01012345768"
	                    name="phoneNumber"
	                    class="check-phonenumber"
	                    value=""
	                    id="phoneNumber-input"
	                  />
	              </form>    
                  <button type="button" id="AuthenticationNumberBtn" class="check-phonenumber-bth" disabled>
                    <span 
                    	
                       color="var(--theme-palette-colors-black-100)"
                      class="check-phonenumber-bth-span"
                      >인증번호 받기</span>
                  </button>
                </div>
                <p color="var(--theme-palette-colors-red-400)" class="isnot-a-phonenumber">올바른 전화번호를 입력해주세요.</p>
                <div class="check-phonenumber-wrapper">
                  <input
                    id="input-authCode"
                    type="text"
                    placeholder="인증번호를 입력해주세요."
                    name="authCode"
                    readonly
                    class="check-phonenumber"
                    value=""
                    >
                    <button type="button" class="certification-Btn">
      					<span
        					color="var(--theme-palette-colors-black-100)"
        					class="certification-Number-Btn-span"
        					>인증하기
        				</span>
    				</button>
                </div>
                <p style="color: var(--theme-palette-colors-blue-400);" class="Authentication-Number-Guide">인증번호가 요청되었습니다.</p>
              <button type="button" disabled="" class="continue-btn">
                <span
                  color="var(--theme-palette-colors-black-100)"
                  class="check-phonenumber-bth-span"
                  >계속</span
                >
              </button>
            </div>
          </div>
        </div>
      </div>
    </div>
  </body>
  <script src="https://code.jquery.com/jquery-3.7.0.min.js"></script>
  <script>
  	let contextPath = "${pageContext.request.contextPath}"
  </script>
  <script src="${pageContext.request.contextPath}/static/js/findAccount/find-account.js"></script>
</html>
