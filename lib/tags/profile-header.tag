<graphjs-profile-header class={'graphjs-element graphjs-root ' + boxStyle + (loaded ? '' : ' graphjs-loading')}>
    <a onclick={following ? handleUnfollow : handleFollow} class="graphjs-left graphjs-option" if={loaded && profile && userId && userId != id}>
        <svg if={!following} viewBox="0 0 24 20" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
            <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                <g transform="translate(-22.000000, -20.000000)" fill="black" fill-rule="nonzero">
                    <path d="M22,39.0597068 L22,37.9313549 C22,36.9492708 22.4486148,36.0089776 23.2390314,35.4239063 C25.5461933,33.6686922 27.8960803,32.4985495 28.3874204,32.2687001 C28.4515082,32.2478047 28.4942334,32.1851185 28.4942334,32.1224322 L28.4942334,30.7224401 C28.1310691,30.1164733 27.917443,29.426925 27.8319925,28.8209582 C27.6183664,28.8000628 27.3192899,28.5075271 27.0202133,27.4418615 C26.5929611,25.9791831 27.0415759,25.7702291 27.4261029,25.7911245 C27.148389,25.0179945 27.148389,24.2657599 27.3192899,23.5762115 C27.5115534,22.7612907 27.9601682,22.0926377 28.4728708,21.591148 C28.79331,21.2568215 29.1564743,20.9642859 29.5410013,20.713541 C29.8614405,20.5045869 30.2032422,20.3165283 30.5877692,20.1911559 C30.8868457,20.0866788 31.2072849,20.0239926 31.527724,20.0239926 C32.5744919,19.9195156 33.3649085,20.1702605 33.9203363,20.5045869 C34.7534781,20.9642859 35.0739173,21.5493572 35.0739173,21.5493572 C35.0739173,21.5493572 37.1888157,21.695625 36.2702234,26.0209739 C36.5479374,26.1254509 36.7615635,26.5015682 36.4197617,27.6299201 C36.0138721,29.0299123 35.6507078,29.1134939 35.415719,28.9672261 C35.3302686,29.4478204 35.1807303,29.9911009 34.924379,30.4925906 C34.924379,31.2030344 34.924379,31.850792 34.924379,32.1015368 C34.924379,32.164223 34.9671042,32.2269093 35.0311921,32.2478047 C35.5438947,32.4985495 37.8937818,33.6686922 40.2009437,35.4239063 C40.9913602,36.029873 41.439975,36.9492708 41.439975,37.9313549 L41.439975,39.0597068 C41.439975,39.5820919 41.0127228,40 40.4786576,40 L22.9399548,40 C22.4272522,39.9791046 22,39.5611965 22,39.0597068 Z M37.7770946,28.6529954 L39.0022126,28.6665402 L40.0181642,28.6777726 L39.993387,26.4367029 C39.9857886,25.7494416 40.5176988,25.2175314 41.2049602,25.2251298 C41.8922215,25.2327281 42.4360248,25.7765314 42.4436231,26.4637927 L42.4684003,28.7048623 L44.70947,28.7296396 C45.3967313,28.7372379 45.9405346,29.2810412 45.9481329,29.9683025 C45.9557313,30.6555639 45.4238211,31.187474 44.7365597,31.1798757 L42.4954901,31.1550985 L42.5067224,32.17105 L42.5202673,33.3961681 C42.5278657,34.0834295 41.9959555,34.6153396 41.3086941,34.6077413 C40.6214328,34.6001429 40.0776295,34.0563397 40.0700312,33.3690783 L40.0564863,32.1439603 L40.045254,31.1280087 L39.0293024,31.1167764 L37.8041843,31.1032315 C37.116923,31.0956331 36.5731197,30.5518299 36.5655214,29.8645685 C36.557923,29.1773072 37.0898332,28.645397 37.7770946,28.6529954 Z"></path>
                </g>
            </g>
        </svg>
        <svg if={following} viewBox="0 0 24 20" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
            <path d="M0,19.0597068 L0,17.9313549 C0,16.9492708 0.4486148,16.0089776 1.2390314,15.4239063 C3.5461933,13.6686922 5.8960803,12.4985495 6.3874204,12.2687001 C6.4515082,12.2478047 6.4942334,12.1851185 6.4942334,12.1224322 L6.4942334,10.7224401 C6.1310691,10.1164733 5.917443,9.426925 5.8319925,8.8209582 C5.6183664,8.8000628 5.3192899,8.5075271 5.0202133,7.4418615 C4.5929611,5.9791831 5.0415759,5.7702291 5.4261029,5.7911245 C5.148389,5.0179945 5.148389,4.2657599 5.3192899,3.5762115 C5.5115534,2.7612907 5.9601682,2.0926377 6.4728708,1.591148 C6.79331,1.2568215 7.1564743,0.9642859 7.5410013,0.713541 C7.8614405,0.5045869 8.2032422,0.3165283 8.5877692,0.1911559 C8.8868457,0.0866788 9.2072849,0.0239926 9.527724,0.0239926 C10.5744919,-0.0804844 11.3649085,0.1702605 11.9203363,0.5045869 C12.7534781,0.9642859 13.0739173,1.5493572 13.0739173,1.5493572 C13.0739173,1.5493572 15.1888157,1.695625 14.2702234,6.0209739 C14.5479374,6.1254509 14.7615635,6.5015682 14.4197617,7.6299201 C14.0138721,9.0299123 13.6507078,9.1134939 13.415719,8.9672261 C13.3302686,9.4478204 13.1807303,9.9911009 12.924379,10.4925906 C12.924379,11.2030344 12.924379,11.850792 12.924379,12.1015368 C12.924379,12.164223 12.9671042,12.2269093 13.0311921,12.2478047 C13.5438947,12.4985495 15.8937818,13.6686922 18.2009437,15.4239063 C18.9913602,16.029873 19.439975,16.9492708 19.439975,17.9313549 L19.439975,19.0597068 C19.439975,19.5820919 19.0127228,20 18.4786576,20 L0.9399548,20 C0.4272522,19.9791046 0,19.5611965 0,19.0597068 Z" id="Shape" fill-rule="nonzero"></path>
            <path d="M18.1535041,10.0629214 L19.947406,10.0876986 L19.9226288,6.01321143 C19.9150304,5.32595013 20.4469406,4.79403993 21.134202,4.80163833 C21.8214633,4.80923663 22.3652666,5.35303993 22.3728649,6.04030123 L22.3976421,10.1147883 L22.419074,12.0532803 C22.4221269,12.3294058 22.2007577,12.5557246 21.9246322,12.5587774 C21.9207531,12.5588203 21.9168737,12.558818 21.9129946,12.5587706 L18.1805938,12.5131575 C17.4933325,12.5055591 16.9495292,11.9617559 16.9419309,11.2744945 C16.9343325,10.5872332 17.4662427,10.055323 18.1535041,10.0629214 Z" id="Path" transform="translate(19.683291, 8.683291) rotate(45.000000) translate(-19.683291, -8.683291) "></path>
        </svg>
    </a>
    <a class="graphjs-right graphjs-option" onclick={handleMessagesComposer} if={loaded && profile && userId && userId != id}>
        <svg viewBox="0 0 50 48" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
            <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                <path d="M34.8236776,11.6342064 L4.78589421,11.6342064 C2.14105793,11.6342064 0,13.7752644 0,16.4201006 L0,36.0044835 C0,38.6493198 2.14105793,40.7903777 4.78589421,40.7903777 L19.5843829,40.7903777 L31.3602015,47.7803022 L30.7934509,40.7903777 L34.8866499,40.7903777 C37.5314861,40.7903777 39.6725441,38.6493198 39.6725441,36.0044835 L39.6725441,16.4201006 C39.6725441,13.7752644 37.4685139,11.6342064 34.8236776,11.6342064 Z M10.5478586,29.1405026 C9.22544054,29.1405026 8.12342545,28.0384875 8.12342545,26.7160694 C8.12342545,25.3936513 9.22544054,24.2916362 10.5478586,24.2916362 C11.8702767,24.2916362 12.9722918,25.3936513 12.9722918,26.7160694 C12.9722918,28.0384875 11.8702767,29.1405026 10.5478586,29.1405026 Z M19.8677586,29.1405026 C18.5453405,29.1405026 17.4433254,28.0384875 17.4433254,26.7160694 C17.4433254,25.3936513 18.5453405,24.2916362 19.8677586,24.2916362 C21.1901767,24.2916362 22.2921918,25.3936513 22.2921918,26.7160694 C22.2187241,28.0384875 21.1901767,29.1405026 19.8677586,29.1405026 Z M29.124686,29.1405026 C27.8022679,29.1405026 26.7002529,28.0384875 26.7002529,26.7160694 C26.7002529,25.3936513 27.8022679,24.2916362 29.124686,24.2916362 C30.4471041,24.2916362 31.5491192,25.3936513 31.5491192,26.7160694 C31.5491192,28.0384875 30.4471041,29.1405026 29.124686,29.1405026 Z M45.2141058,0.779999733 C47.8589421,0.779999733 50,2.9210577 50,5.56589402 L50,25.0873049 C50,27.7321412 47.8589421,29.8731992 45.2141058,29.8731992 L42.3803526,29.8731992 L42.4433249,16.523073 C42.4433249,12.3039294 39.0428212,8.90342556 34.8236776,8.90342556 L10.3904282,8.90342556 L10.3904282,5.56589402 C10.3904282,2.9210577 12.5314861,0.779999733 15.1763224,0.779999733 L45.2141058,0.779999733 Z"></path>
            </g>
        </svg>
    </a>
    <div class="graphjs-information vcard" if={loaded && profile}>
        <img class="photo" src={profile.avatar ? downsizeImage(profile.avatar, 110) : defaultAvatar} />
        <a class="nickname">{profile.fullName || profile.username}</a>
        <p class="note">{profile.about}</p>
    </div>
    <ul if={loaded && profile}>
        <li class={opts.active == 'activity' ? 'graphjs-active' : ''}>
            <a data-link="activity" onclick={opts.callback}>
                <span>{language.activity}</span>
                <svg viewBox="0 0 76 64" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
                    <path d="M28,16 C25.790861,16 24,14.209139 24,12 L24,8 C24,5.790861 25.790861,4 28,4 L72,4 C74.209139,4 76,5.790861 76,8 L76,12 C76,14.209139 74.209139,16 72,16 L28,16 Z M16,12 C16,14.209139 14.209139,16 12,16 L4,16 C1.790861,16 2.705415e-16,14.209139 0,12 L0,4 C-2.705415e-16,1.790861 1.790861,4.05812251e-16 4,0 L12,0 C14.209139,-4.05812251e-16 16,1.790861 16,4 L16,12 Z M28,60 C25.790861,60 24,58.209139 24,56 L24,52 C24,49.790861 25.790861,48 28,48 L72,48 C74.209139,48 76,49.790861 76,52 L76,56 C76,58.209139 74.209139,60 72,60 L28,60 Z M16,60 C16,62.209139 14.209139,64 12,64 L4,64 C1.790861,64 2.705415e-16,62.209139 0,60 L0,52 C-2.705415e-16,49.790861 1.790861,48 4,48 L12,48 C14.209139,48 16,49.790861 16,52 L16,60 Z M28,38 C25.790861,38 24,36.209139 24,34 L24,30 C24,27.790861 25.790861,26 28,26 L72,26 C74.209139,26 76,27.790861 76,30 L76,34 C76,36.209139 74.209139,38 72,38 L28,38 Z M16,36 C16,38.209139 14.209139,40 12,40 L4,40 C1.790861,40 2.705415e-16,38.209139 0,36 L0,28 C-2.705415e-16,25.790861 1.790861,24 4,24 L12,24 C14.209139,24 16,25.790861 16,28 L16,36 Z"></path>
                </svg>
            </a>
        </li>
        <li class={opts.active == 'followers' ? 'graphjs-active' : ''}>
            <a class={profile.follower_count > 1 ? 'graphjs-count' : ''} data-link="followers" data-count={profile.follower_count || ''} onclick={opts.callback}>
                <span>{language.followers}</span>
                <svg viewBox="0 0 96 80" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
                    <path transform="translate(-2.000000, 0.000000)" d="M97.6,36.3 L97.6,43.8 L94.1,43.8 L78.1,43.8 L84.7,50.5 L79.4,55.8 L68.5,44.8 L63.6,40 L65,38.6 L69,34.7 L74.7,29.1 L79.5,24.3 L84.8,29.6 L80,34.4 L78.1,36.2 L94.1,36.2 L97.6,36.3 Z M6.1,79.9 L19,79.9 L61.6,79.9 L74.5,79.9 C76.6,79.9 78.2,78.2 78.2,76.2 L78.2,71.7 C78.2,67.8 76.4,64.1 73.3,61.7 C64.3,54.7 55.2,50.1 53.2,49.1 C53,49 52.8,48.8 52.8,48.5 C52.8,47.5 52.8,44.8 52.8,42.1 C53.8,40.1 54.3,38 54.7,36.1 C55.6,36.7 57,36.4 58.6,30.8 C59.9,26.3 59.1,24.7 58,24.4 C61.6,7.1 53.4,6.5 53.4,6.5 C53.4,6.5 52.2,4.1 48.9,2.3 C46.7,1 43.7,9.76996262e-15 39.6,0.3 C38.3,0.4 37.1,0.6 35.9,1 C34.4,1.5 33.1,2.2 31.8,3.1 C30.3,4.1 28.9,5.2 27.6,6.6 C25.6,8.6 23.8,11.3 23.1,14.5 C22.4,17.3 22.4,20.3 23.5,23.3 C22,23.2 20.3,24 21.9,29.8 C23.1,34.1 24.2,35.2 25.1,35.3 C25.5,37.7 26.2,40.4 27.7,42.9 L27.7,48.5 C27.7,48.8 27.6,49 27.3,49.1 C25.3,50.1 16.2,54.7 7.2,61.7 C4.1,64.1 2.3,67.8 2.3,71.7 L2.3,76.2 C2.4,78.2 4.1,79.9 6.1,79.9 Z"></path>
                </svg>
            </a>
        </li>
        <li class={opts.active == 'following' ? 'graphjs-active' : ''}>
            <a class={profile.following_count > 1 ? 'graphjs-count' : ''} data-link="following" data-count={profile.following_count || ''} onclick={opts.callback}>
                <span>{language.following}</span>
                <svg viewBox="0 0 96 80" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
                    <path transform="translate(-2.000000, 0.000000)" d="M97.6,40 L96.2,41.4 L92.2,45.3 L86.6,51 L81.8,55.8 L76.5,50.5 L81.3,45.7 L83.2,43.9 L83.2,43.8 L63.6,43.8 L63.6,36.3 L83.1,36.3 L76.5,29.7 L81.8,24.4 L92.7,35.4 L97.6,40 Z M6.1,79.9 L19,79.9 L61.6,79.9 L74.5,79.9 C76.6,79.9 78.2,78.2 78.2,76.2 L78.2,71.7 C78.2,67.8 76.4,64.1 73.3,61.7 C64.3,54.7 55.2,50.1 53.2,49.1 C53,49 52.8,48.8 52.8,48.5 C52.8,47.5 52.8,44.8 52.8,42.1 C53.8,40.1 54.3,38 54.7,36.1 C55.6,36.7 57,36.4 58.6,30.8 C59.9,26.3 59.1,24.7 58,24.4 C61.6,7.1 53.4,6.5 53.4,6.5 C53.4,6.5 52.2,4.1 48.9,2.3 C46.7,1 43.7,2.0877744e-13 39.6,0.3 C38.3,0.4 37.1,0.6 35.9,1 C34.4,1.5 33.1,2.2 31.8,3.1 C30.3,4.1 28.9,5.2 27.6,6.6 C25.6,8.6 23.8,11.3 23.1,14.5 C22.4,17.3 22.4,20.3 23.5,23.3 C22,23.2 20.3,24 21.9,29.8 C23.1,34.1 24.2,35.2 25.1,35.3 C25.5,37.7 26.2,40.4 27.7,42.9 L27.7,48.5 C27.7,48.8 27.6,49 27.3,49.1 C25.3,50.1 16.2,54.7 7.2,61.7 C4.1,64.1 2.3,67.8 2.3,71.7 L2.3,76.2 C2.4,78.2 4.1,79.9 6.1,79.9 Z"></path>
                </svg>
            </a>
        </li>
        <li class={opts.active == 'groups' ? 'graphjs-active' : ''}>
            <a class={profile.membership_count > 1 ? 'graphjs-count' : ''} data-link="groups" data-count={profile.membership_count || ''} onclick={opts.callback}>
                <span>{language.groups}</span>
                <svg viewBox="0 0 134 82" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
                    <path d="M100.625204,78.0003885 L100.625204,69.9105206 L100.625204,60.499489 C100.625204,58.4828393 99.7829909,56.6342438 98.2670066,55.4578649 C89.8448714,48.5676453 80.0102843,43.8621295 78.1574145,43.0218588 C77.9889718,42.8538047 77.8205291,42.6857506 77.8205291,42.5176964 L77.8205291,36.8038558 C78.6627426,35.1233144 79.1680708,33.2747189 79.5049562,31.5941776 C79.6733989,31.7622317 79.8418416,31.7622317 80.0102843,31.7622317 C80.6840551,31.7622317 81.6947113,30.7539069 82.8738102,26.8886618 C84.0529092,22.8553625 83.3791384,21.5109294 82.3684821,21.1748211 C85.5688935,6.0499489 78.3258572,5.54578649 78.3258572,5.54578649 C78.3258572,5.54578649 77.315201,3.52913686 74.2832324,1.8485955 C72.5988053,0.84027068 70.4090502,0 67.5455242,0 C67.0401961,0 66.7033107,0 66.1979826,0 C65.0188836,0 64.0082274,0.336108272 62.9975712,0.672216544 C61.6500296,1.17637895 60.4709306,1.68054136 59.4602744,2.52081204 C58.1127328,3.36108272 56.9336339,4.36940754 55.7545349,5.54578649 C54.0701079,7.39438199 52.3856809,9.57908575 51.71191,12.4360061 C51.0381392,14.788764 51.0381392,17.4776301 52.0487955,20.1664963 C50.7012538,20.1664963 49.3537122,21.1748211 50.7012538,25.880337 C51.71191,29.5775279 52.7225663,30.5858528 53.5647798,30.7539069 C53.9016652,32.9386107 54.575436,35.2913686 55.7545349,37.4760723 L55.7545349,42.3496423 C55.7545349,42.5176964 55.5860922,42.8538047 55.4176495,42.8538047 C53.5647798,43.6940754 44.4688738,48.3995912 35.8782959,55.2898108 C34.3623116,56.4661897 33.520098,58.4828393 33.520098,60.3314348 L33.520098,69.7424665 L33.520098,77.8523691 C33.520098,80.0575971 35.3048596,81.8468339 37.5100807,81.8523565 L96.6151871,82.0003759 C98.8243192,82.0059084 100.619659,80.2195379 100.625192,78.0104058 C100.6252,78.0070667 100.625204,78.0037276 100.625204,78.0003885 Z M18.8697067,46.9825562 C17.3601301,47.7356033 9.35937451,51.6514483 2.11340715,57.6758251 C0.754788267,58.730091 0,60.3867947 0,62.0434983 L0,70.0257976 L0,71.7489556 C2.705415e-16,73.9580946 1.790861,75.7489556 4,75.7489556 L30.5479842,75.7489556 L30.5479842,64.9050773 L30.5479842,58.7745092 C30.5479842,55.2611955 33.7416538,52.442808 39.8528205,48.4858311 C38.7750095,47.4427553 38.0413287,46.530728 38.0413287,46.3801185 L38.0413287,41.5606171 C38.7961169,40.0545229 39.2489899,38.3978192 39.3999475,37.0423345 C39.5509052,37.1929439 39.7018629,37.1929439 39.8528205,37.1929439 C40.4566511,37.1929439 41.362397,36.2892874 42.268143,32.9758801 C43.1738889,29.5118634 42.7210159,28.4575975 41.81527,28.1563786 C44.5325078,15.2039685 38.343244,14.7521402 38.343244,14.7521402 C38.343244,14.7521402 37.437498,12.9448272 34.8712179,11.5893424 C33.5125991,10.6856858 31.5501496,10.0832482 29.1348271,10.0832482 C28.6819542,10.0832482 28.3800388,10.0832482 27.9271659,10.0832482 C26.8704623,10.0832482 25.9647164,10.384467 25.2099281,10.6856858 C24.1532245,11.1375141 23.096521,11.5893424 22.1907751,12.1917801 C20.9831138,12.9448272 19.9264103,13.8484837 19.0206643,14.7521402 C17.5110878,16.2582344 16.1524689,18.2161569 15.5486383,20.776517 C14.9448077,22.8850489 14.9448077,25.1441902 15.8505536,27.4033315 C15.8505536,27.4033315 15.699596,27.4033315 15.699596,27.4033315 C14.6428924,27.4033315 13.5861888,28.1563786 14.6428924,32.3734424 C15.5486383,35.5362403 16.4543842,36.4398968 17.0582148,36.5905062 C17.3601301,38.3978192 17.9639608,40.5063511 19.0206643,42.3136642 L19.0206643,46.530728 C19.171622,46.6813374 19.171622,46.8319468 18.8697067,46.9825562 Z M115.130293,46.8992998 C116.63987,47.6523469 124.640625,51.5681919 131.886593,57.5925687 C133.245212,58.6468346 134,60.3035383 134,61.9602419 L134,69.9425412 L134,71.6656992 C134,73.8748382 132.209139,75.6656992 130,75.6656992 L103.452016,75.6656992 L103.452016,64.8218209 L103.452016,58.6912528 C103.452016,55.1779391 100.258346,52.3595516 94.1471795,48.4025747 C95.2249905,47.3594989 95.9586713,46.4474716 95.9586713,46.2968622 L95.9586713,41.4773607 C95.2038831,39.9712665 94.7510101,38.3145629 94.6000525,36.9590781 C94.4490948,37.1096875 94.2981371,37.1096875 94.1471795,37.1096875 C93.5433489,37.1096875 92.637603,36.206031 91.731857,32.8926237 C90.8261111,29.428607 91.2789841,28.3743411 92.18473,28.0731223 C89.4674922,15.1207121 95.656756,14.6688838 95.656756,14.6688838 C95.656756,14.6688838 96.562502,12.8615708 99.1287821,11.506086 C100.487401,10.6024295 102.44985,9.99999177 104.865173,9.99999177 C105.318046,9.99999177 105.619961,9.99999177 106.072834,9.99999177 C107.129538,9.99999177 108.035284,10.3012106 108.790072,10.6024295 C109.846775,11.0542577 110.903479,11.506086 111.809225,12.1085237 C113.016886,12.8615708 114.07359,13.7652273 114.979336,14.6688838 C116.488912,16.174978 117.847531,18.1329005 118.451362,20.6932606 C119.055192,22.8017925 119.055192,25.0609338 118.149446,27.3200751 C118.149446,27.3200751 118.300404,27.3200751 118.300404,27.3200751 C119.357108,27.3200751 120.413811,28.0731223 119.357108,32.290186 C118.451362,35.4529839 117.545616,36.3566404 116.941785,36.5072498 C116.63987,38.3145629 116.036039,40.4230947 114.979336,42.2304078 L114.979336,46.4474716 C114.828378,46.598081 114.828378,46.7486904 115.130293,46.8992998 Z"></path>
                </svg>
            </a>
        </li>
        <li if={userId == id} class={opts.active == 'settings' ? 'graphjs-active' : ''}>
            <a data-link="settings" onclick={opts.callback}>
                <span>{language.settings}</span>
                <svg viewBox="0 0 82 82" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
                    <path d="M78.056,22.22 L71.612,26.823 C68.937,25.25 66.112,24.078 63.162,23.33 L61.832,15.509 C61.581,14.06 60.331,13.011 58.881,13.012 L54.982,13.015 L51.083,13.018 C49.634,13.019 48.385,14.07 48.136,15.519 L46.817,23.342 C43.819,24.094 40.921,25.296 38.198,26.972 L31.797,22.428 C30.597,21.579 28.972,21.705 27.924,22.756 L25.152,25.532 L22.38,28.308 C21.356,29.333 21.207,30.983 22.058,32.182 L26.686,38.701 C25.114,41.376 23.991,44.251 23.243,47.151 L15.472,48.381 C14.023,48.632 12.974,49.882 12.975,51.332 L12.978,55.231 L12.981,59.13 C12.982,60.579 14.033,61.828 15.482,62.077 L23.355,63.396 C24.132,66.319 25.308,69.143 26.91,71.79 L22.366,78.191 C21.517,79.391 21.643,81.016 22.694,82.064 L25.47,84.836 L28.246,87.608 C29.271,88.632 30.921,88.781 32.12,87.93 L38.639,83.302 C41.314,84.875 44.189,85.997 47.089,86.745 L48.394,94.491 C48.645,95.94 49.895,96.989 51.345,96.988 L55.244,96.985 L59.143,96.982 C60.592,96.981 61.841,95.93 62.09,94.481 L63.409,86.608 C66.257,85.856 69.056,84.705 71.629,83.178 L78.08,87.772 C79.28,88.621 80.904,88.495 81.953,87.444 L84.725,84.668 L87.497,81.892 C88.521,80.867 88.67,79.217 87.819,78.018 L83.216,71.574 C84.789,68.899 85.961,66.074 86.709,63.125 L94.53,61.795 C95.979,61.544 97.028,60.294 97.027,58.844 L97.024,54.945 L97.021,51.046 C97.02,49.596 95.969,48.348 94.52,48.099 L86.697,46.78 C85.945,43.832 84.769,41.008 83.192,38.335 L87.786,31.884 C88.635,30.684 88.509,29.059 87.458,28.011 L84.682,25.239 L81.906,22.467 C80.854,21.518 79.23,21.395 78.056,22.22 Z M43.083,66.972 C36.362,60.261 36.355,49.373 43.066,42.652 C49.777,35.931 60.665,35.924 67.386,42.634 C74.107,49.345 74.114,60.233 67.403,66.954 C60.691,73.675 49.803,73.683 43.083,66.972 Z" transform="translate(-14.000000, -14.000000) translate(55.001000, 55.000000) rotate(22.500000) translate(-55.001000, -55.000000)"></path>
                </svg>
            </a>
        </li>
    </ul>
    <div class="graphjs-information" if={loaded && !profile}>
        <img src={defaultAvatar} alt="Profile Image"/>
        <a>{language.notFoundErrorOne}</a>
        <p>{language.notFoundErrorTwo}</p>
    </div>
    <button if={!profile} onclick={handleUpdate}>Refresh</button>
    <div if={!loaded} class="graphjs-placeholder graphjs-loader">
        <div class="graphjs-card">
            <div class="graphjs-avatar graphjs-circle graphjs-centered graphjs-fill"></div>
            <div class="graphjs-title graphjs-line graphjs-centered graphjs-fill"></div>
            <div class="graphjs-description graphjs-line graphjs-centered graphjs-fill"></div>
        </div>
        <div class="graphjs-list graphjs-rectangle graphjs-centered graphjs-fill"></div>
    </div>
    <graphjs-promo if={loaded} properties="top right"></graphjs-promo>
    <script>
        import language from '../scripts/language.js';
        import getProfile from '../scripts/getProfile.js';
        import showProfile from '../scripts/showProfile.js';
        import follow from '../scripts/follow.js';
        import unfollow from '../scripts/unfollow.js';
        import showMessagesComposer from '../scripts/showMessagesComposer.js';
        import getSession from '../scripts/getSession.js';
        import getFollowing from '../scripts/getFollowing.js';

        this.language = language('profile-header', opts);        
        this.defaultAvatar = opts.defaultAvatar ? opts.defaultAvatar : window.GraphJSConfig.defaultAvatar;

        import {downsizeImage} from '../scripts/client.js';
        this.downsizeImage = downsizeImage;

        this.id = opts.id;
        this.boxStyle = opts.box == 'disabled' ? 'graphjs-inline' : 'graphjs-box';
        this.profile = {};
        this.following = false;
        this.userId = undefined;

        this.on('before-mount', function() {
            this.handleInformation();
            this.handleUser();
        });
        this.on('mount', function() {
            opts.theme && this.root.classList.add('graphjs-' + opts.theme);
        });

        this.handleUser = () => {
            let self = this;
            getSession(function(response) {
                if(response.success) {
                    self.userId = response.id;
                    getFollowing(self.userId, function(response) {
                        if(response.success) {
                            let list = Object.keys(response.following);
                            self.following = list.includes(self.id);
                            self.update();
                        } else {
                            //Handle errors
                        }
                    });
                    self.update();
                } else {
                    //Handle errors
                }
            });
        }
        this.handleInformation = () => {
            let self = this;
            getProfile(self.id, function(response) {
                if(response.success) {
                    self.profile = response.profile;
                    self.loaded = true;
                    self.update();
                } else {
                    self.loaded = true;
                    //Handle errors
                }
            });
        }
        this.handleFollow = () => {
            let self = this;
            self.following = true;
            follow(self.id, function(response) {
                if(response.success) {
                    //No action required
                } else {
                    self.following = false;
                    self.update();
                    //Handle errors
                }
            });
        }
        this.handleUnfollow = () => {
            let self = this;
            self.following = false;
            unfollow(self.id, function(response) {
                if(response.success) {
                    //No action required
                } else {
                    self.following = true;
                    self.update();
                    //Handle errors
                }
            });
        }
        this.handleMessagesComposer = () => {
            let self = this;
            showMessagesComposer({
                "to": self.id,
                "close": true,
                "autofocus": "on"
            });
        }
        this.handleUpdate = () => this.update();
        this.updateInformation = () => this.handleInformation();
    </script>
</graphjs-profile-header>