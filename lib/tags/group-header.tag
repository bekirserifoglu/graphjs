<graphjs-group-header class={'graphjs-element graphjs-root ' + boxStyle + (loaded ? '' : ' graphjs-loading')}>
    <div class="graphjs-information" if={loaded && group}>
        <div class="graphjs-cover" style={'background-image: url(' + (group && group.cover ? downsizeImage(group.cover, 770) : 'https://raw.githubusercontent.com/phonetworks/graphjs/master/static/group.png') + ');'}></div>
        <a>{group.title}</a>
        <p>{group.description}</p>
        <div class="graphjs-members" if={avatars}>
            <img each={avatar in avatars} src={avatar ? downsizeImage(avatar, 30) : 'https://raw.githubusercontent.com/phonetworks/graphjs/master/static/user.png'} />
            <span if={members && members.length >= 5}>
                <small>{'+' + (members.length - 4)}</small>
            </span>
        </div>
    </div>
    <ul if={loaded && group}>
        <li class={opts.active == 'members' ? 'graphjs-active' : ''}>
            <a class={group.count > 1 ? 'graphjs-count' : ''} data-link="members" data-count={group.count || ''} onclick={opts.callback}>
                <span>{i18n.membersText}</span>
                <svg viewBox="0 0 134 82" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
                    <path d="M100.625204,78.0003885 L100.625204,69.9105206 L100.625204,60.499489 C100.625204,58.4828393 99.7829909,56.6342438 98.2670066,55.4578649 C89.8448714,48.5676453 80.0102843,43.8621295 78.1574145,43.0218588 C77.9889718,42.8538047 77.8205291,42.6857506 77.8205291,42.5176964 L77.8205291,36.8038558 C78.6627426,35.1233144 79.1680708,33.2747189 79.5049562,31.5941776 C79.6733989,31.7622317 79.8418416,31.7622317 80.0102843,31.7622317 C80.6840551,31.7622317 81.6947113,30.7539069 82.8738102,26.8886618 C84.0529092,22.8553625 83.3791384,21.5109294 82.3684821,21.1748211 C85.5688935,6.0499489 78.3258572,5.54578649 78.3258572,5.54578649 C78.3258572,5.54578649 77.315201,3.52913686 74.2832324,1.8485955 C72.5988053,0.84027068 70.4090502,0 67.5455242,0 C67.0401961,0 66.7033107,0 66.1979826,0 C65.0188836,0 64.0082274,0.336108272 62.9975712,0.672216544 C61.6500296,1.17637895 60.4709306,1.68054136 59.4602744,2.52081204 C58.1127328,3.36108272 56.9336339,4.36940754 55.7545349,5.54578649 C54.0701079,7.39438199 52.3856809,9.57908575 51.71191,12.4360061 C51.0381392,14.788764 51.0381392,17.4776301 52.0487955,20.1664963 C50.7012538,20.1664963 49.3537122,21.1748211 50.7012538,25.880337 C51.71191,29.5775279 52.7225663,30.5858528 53.5647798,30.7539069 C53.9016652,32.9386107 54.575436,35.2913686 55.7545349,37.4760723 L55.7545349,42.3496423 C55.7545349,42.5176964 55.5860922,42.8538047 55.4176495,42.8538047 C53.5647798,43.6940754 44.4688738,48.3995912 35.8782959,55.2898108 C34.3623116,56.4661897 33.520098,58.4828393 33.520098,60.3314348 L33.520098,69.7424665 L33.520098,77.8523691 C33.520098,80.0575971 35.3048596,81.8468339 37.5100807,81.8523565 L96.6151871,82.0003759 C98.8243192,82.0059084 100.619659,80.2195379 100.625192,78.0104058 C100.6252,78.0070667 100.625204,78.0037276 100.625204,78.0003885 Z M18.8697067,46.9825562 C17.3601301,47.7356033 9.35937451,51.6514483 2.11340715,57.6758251 C0.754788267,58.730091 0,60.3867947 0,62.0434983 L0,70.0257976 L0,71.7489556 C2.705415e-16,73.9580946 1.790861,75.7489556 4,75.7489556 L30.5479842,75.7489556 L30.5479842,64.9050773 L30.5479842,58.7745092 C30.5479842,55.2611955 33.7416538,52.442808 39.8528205,48.4858311 C38.7750095,47.4427553 38.0413287,46.530728 38.0413287,46.3801185 L38.0413287,41.5606171 C38.7961169,40.0545229 39.2489899,38.3978192 39.3999475,37.0423345 C39.5509052,37.1929439 39.7018629,37.1929439 39.8528205,37.1929439 C40.4566511,37.1929439 41.362397,36.2892874 42.268143,32.9758801 C43.1738889,29.5118634 42.7210159,28.4575975 41.81527,28.1563786 C44.5325078,15.2039685 38.343244,14.7521402 38.343244,14.7521402 C38.343244,14.7521402 37.437498,12.9448272 34.8712179,11.5893424 C33.5125991,10.6856858 31.5501496,10.0832482 29.1348271,10.0832482 C28.6819542,10.0832482 28.3800388,10.0832482 27.9271659,10.0832482 C26.8704623,10.0832482 25.9647164,10.384467 25.2099281,10.6856858 C24.1532245,11.1375141 23.096521,11.5893424 22.1907751,12.1917801 C20.9831138,12.9448272 19.9264103,13.8484837 19.0206643,14.7521402 C17.5110878,16.2582344 16.1524689,18.2161569 15.5486383,20.776517 C14.9448077,22.8850489 14.9448077,25.1441902 15.8505536,27.4033315 C15.8505536,27.4033315 15.699596,27.4033315 15.699596,27.4033315 C14.6428924,27.4033315 13.5861888,28.1563786 14.6428924,32.3734424 C15.5486383,35.5362403 16.4543842,36.4398968 17.0582148,36.5905062 C17.3601301,38.3978192 17.9639608,40.5063511 19.0206643,42.3136642 L19.0206643,46.530728 C19.171622,46.6813374 19.171622,46.8319468 18.8697067,46.9825562 Z M115.130293,46.8992998 C116.63987,47.6523469 124.640625,51.5681919 131.886593,57.5925687 C133.245212,58.6468346 134,60.3035383 134,61.9602419 L134,69.9425412 L134,71.6656992 C134,73.8748382 132.209139,75.6656992 130,75.6656992 L103.452016,75.6656992 L103.452016,64.8218209 L103.452016,58.6912528 C103.452016,55.1779391 100.258346,52.3595516 94.1471795,48.4025747 C95.2249905,47.3594989 95.9586713,46.4474716 95.9586713,46.2968622 L95.9586713,41.4773607 C95.2038831,39.9712665 94.7510101,38.3145629 94.6000525,36.9590781 C94.4490948,37.1096875 94.2981371,37.1096875 94.1471795,37.1096875 C93.5433489,37.1096875 92.637603,36.206031 91.731857,32.8926237 C90.8261111,29.428607 91.2789841,28.3743411 92.18473,28.0731223 C89.4674922,15.1207121 95.656756,14.6688838 95.656756,14.6688838 C95.656756,14.6688838 96.562502,12.8615708 99.1287821,11.506086 C100.487401,10.6024295 102.44985,9.99999177 104.865173,9.99999177 C105.318046,9.99999177 105.619961,9.99999177 106.072834,9.99999177 C107.129538,9.99999177 108.035284,10.3012106 108.790072,10.6024295 C109.846775,11.0542577 110.903479,11.506086 111.809225,12.1085237 C113.016886,12.8615708 114.07359,13.7652273 114.979336,14.6688838 C116.488912,16.174978 117.847531,18.1329005 118.451362,20.6932606 C119.055192,22.8017925 119.055192,25.0609338 118.149446,27.3200751 C118.149446,27.3200751 118.300404,27.3200751 118.300404,27.3200751 C119.357108,27.3200751 120.413811,28.0731223 119.357108,32.290186 C118.451362,35.4529839 117.545616,36.3566404 116.941785,36.5072498 C116.63987,38.3145629 116.036039,40.4230947 114.979336,42.2304078 L114.979336,46.4474716 C114.828378,46.598081 114.828378,46.7486904 115.130293,46.8992998 Z"></path>
                </svg>
            </a>
        </li>
        <li if={userId == group.creator} class={opts.active == 'settings' ? 'graphjs-active' : ''}>
            <a data-link="settings" onclick={opts.callback}>
                <span>{i18n.settingsText}</span>
                <svg viewBox="0 0 82 82" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
                    <path d="M78.056,22.22 L71.612,26.823 C68.937,25.25 66.112,24.078 63.162,23.33 L61.832,15.509 C61.581,14.06 60.331,13.011 58.881,13.012 L54.982,13.015 L51.083,13.018 C49.634,13.019 48.385,14.07 48.136,15.519 L46.817,23.342 C43.819,24.094 40.921,25.296 38.198,26.972 L31.797,22.428 C30.597,21.579 28.972,21.705 27.924,22.756 L25.152,25.532 L22.38,28.308 C21.356,29.333 21.207,30.983 22.058,32.182 L26.686,38.701 C25.114,41.376 23.991,44.251 23.243,47.151 L15.472,48.381 C14.023,48.632 12.974,49.882 12.975,51.332 L12.978,55.231 L12.981,59.13 C12.982,60.579 14.033,61.828 15.482,62.077 L23.355,63.396 C24.132,66.319 25.308,69.143 26.91,71.79 L22.366,78.191 C21.517,79.391 21.643,81.016 22.694,82.064 L25.47,84.836 L28.246,87.608 C29.271,88.632 30.921,88.781 32.12,87.93 L38.639,83.302 C41.314,84.875 44.189,85.997 47.089,86.745 L48.394,94.491 C48.645,95.94 49.895,96.989 51.345,96.988 L55.244,96.985 L59.143,96.982 C60.592,96.981 61.841,95.93 62.09,94.481 L63.409,86.608 C66.257,85.856 69.056,84.705 71.629,83.178 L78.08,87.772 C79.28,88.621 80.904,88.495 81.953,87.444 L84.725,84.668 L87.497,81.892 C88.521,80.867 88.67,79.217 87.819,78.018 L83.216,71.574 C84.789,68.899 85.961,66.074 86.709,63.125 L94.53,61.795 C95.979,61.544 97.028,60.294 97.027,58.844 L97.024,54.945 L97.021,51.046 C97.02,49.596 95.969,48.348 94.52,48.099 L86.697,46.78 C85.945,43.832 84.769,41.008 83.192,38.335 L87.786,31.884 C88.635,30.684 88.509,29.059 87.458,28.011 L84.682,25.239 L81.906,22.467 C80.854,21.518 79.23,21.395 78.056,22.22 Z M43.083,66.972 C36.362,60.261 36.355,49.373 43.066,42.652 C49.777,35.931 60.665,35.924 67.386,42.634 C74.107,49.345 74.114,60.233 67.403,66.954 C60.691,73.675 49.803,73.683 43.083,66.972 Z" transform="translate(-14.000000, -14.000000) translate(55.001000, 55.000000) rotate(22.500000) translate(-55.001000, -55.000000)"></path>
                </svg>
            </a>
        </li>
        <li if={userId && membershipInformation}>
            <a if={!joined} class="graphjs-label" data-link="join" data-label="Join" onclick={handleJoin}>
                <span>{i18n.joinGroupText}</span>
                <svg width="120px" height="82px" viewBox="0 0 120 82" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
                    <path d="M100.625204,78.0003885 L100.625204,69.9105206 L100.625204,60.499489 C100.625204,58.4828393 99.7829909,56.6342438 98.2670066,55.4578649 C89.8448714,48.5676453 80.0102843,43.8621295 78.1574145,43.0218588 C77.9889718,42.8538047 77.8205291,42.6857506 77.8205291,42.5176964 L77.8205291,36.8038558 C78.6627426,35.1233144 79.1680708,33.2747189 79.5049562,31.5941776 C79.6733989,31.7622317 79.8418416,31.7622317 80.0102843,31.7622317 C80.6840551,31.7622317 81.6947113,30.7539069 82.8738102,26.8886618 C84.0529092,22.8553625 83.3791384,21.5109294 82.3684821,21.1748211 C85.5688935,6.0499489 78.3258572,5.54578649 78.3258572,5.54578649 C78.3258572,5.54578649 77.315201,3.52913686 74.2832324,1.8485955 C72.5988053,0.84027068 70.4090502,0 67.5455242,0 C67.0401961,0 66.7033107,0 66.1979826,0 C65.0188836,0 64.0082274,0.336108272 62.9975712,0.672216544 C61.6500296,1.17637895 60.4709306,1.68054136 59.4602744,2.52081204 C58.1127328,3.36108272 56.9336339,4.36940754 55.7545349,5.54578649 C54.0701079,7.39438199 52.3856809,9.57908575 51.71191,12.4360061 C51.0381392,14.788764 51.0381392,17.4776301 52.0487955,20.1664963 C50.7012538,20.1664963 49.3537122,21.1748211 50.7012538,25.880337 C51.71191,29.5775279 52.7225663,30.5858528 53.5647798,30.7539069 C53.9016652,32.9386107 54.575436,35.2913686 55.7545349,37.4760723 L55.7545349,42.3496423 C55.7545349,42.5176964 55.5860922,42.8538047 55.4176495,42.8538047 C53.5647798,43.6940754 44.4688738,48.3995912 35.8782959,55.2898108 C34.3623116,56.4661897 33.520098,58.4828393 33.520098,60.3314348 L33.520098,69.7424665 L33.520098,77.8523691 C33.520098,80.0575971 35.3048596,81.8468339 37.5100807,81.8523565 L96.6151871,82.0003759 C98.8243192,82.0059084 100.619659,80.2195379 100.625192,78.0104058 C100.6252,78.0070667 100.625204,78.0037276 100.625204,78.0003885 Z M18.8697067,46.9825562 C17.3601301,47.7356033 9.35937451,51.6514483 2.11340715,57.6758251 C0.754788267,58.730091 0,60.3867947 0,62.0434983 L0,70.0257976 L0,71.7489556 C2.705415e-16,73.9580946 1.790861,75.7489556 4,75.7489556 L30.5479842,75.7489556 L30.5479842,64.9050773 L30.5479842,58.7745092 C30.5479842,55.2611955 33.7416538,52.442808 39.8528205,48.4858311 C38.7750095,47.4427553 38.0413287,46.530728 38.0413287,46.3801185 L38.0413287,41.5606171 C38.7961169,40.0545229 39.2489899,38.3978192 39.3999475,37.0423345 C39.5509052,37.1929439 39.7018629,37.1929439 39.8528205,37.1929439 C40.4566511,37.1929439 41.362397,36.2892874 42.268143,32.9758801 C43.1738889,29.5118634 42.7210159,28.4575975 41.81527,28.1563786 C44.5325078,15.2039685 38.343244,14.7521402 38.343244,14.7521402 C38.343244,14.7521402 37.437498,12.9448272 34.8712179,11.5893424 C33.5125991,10.6856858 31.5501496,10.0832482 29.1348271,10.0832482 C28.6819542,10.0832482 28.3800388,10.0832482 27.9271659,10.0832482 C26.8704623,10.0832482 25.9647164,10.384467 25.2099281,10.6856858 C24.1532245,11.1375141 23.096521,11.5893424 22.1907751,12.1917801 C20.9831138,12.9448272 19.9264103,13.8484837 19.0206643,14.7521402 C17.5110878,16.2582344 16.1524689,18.2161569 15.5486383,20.776517 C14.9448077,22.8850489 14.9448077,25.1441902 15.8505536,27.4033315 C15.8505536,27.4033315 15.699596,27.4033315 15.699596,27.4033315 C14.6428924,27.4033315 13.5861888,28.1563786 14.6428924,32.3734424 C15.5486383,35.5362403 16.4543842,36.4398968 17.0582148,36.5905062 C17.3601301,38.3978192 17.9639608,40.5063511 19.0206643,42.3136642 L19.0206643,46.530728 C19.171622,46.6813374 19.171622,46.8319468 18.8697067,46.9825562 Z M91.1487686,26.8264137 L95.34364,26.8731432 L98.8223142,26.911895 L98.7374757,19.1802046 C98.7114584,16.8091531 100.532748,14.9740629 102.885969,15.0002774 C105.23919,15.0264915 107.101202,16.9026129 107.127219,19.2736644 L107.212057,27.0053545 L114.885603,27.0908362 C117.238824,27.1170503 119.100836,28.9931717 119.126853,31.3642232 C119.152871,33.735275 117.331581,35.5703648 114.97836,35.5441507 L107.304814,35.4586694 L107.343274,38.963702 L107.389653,43.1903595 C107.41567,45.5614113 105.59438,47.3965012 103.24116,47.370287 C100.887939,47.3440725 99.0259267,45.4679515 98.9999097,43.0968997 L98.9535312,38.8702426 L98.9150712,35.3652096 L95.436397,35.3264581 L91.2415252,35.2797282 C88.8883047,35.2535137 87.0262923,33.3773927 87.0002753,31.0063409 C86.9742579,28.6352894 88.7955477,26.8001992 91.1487686,26.8264137 Z"></path>
                </svg>
            </a>
            <a if={joined} class="graphjs-label" data-link="leave" data-label="Leave" onclick={handleLeave}>
                <span>{i18n.leaveGroupText}</span>
                <svg viewBox="0 0 117 82" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
                    <path d="M100.625204,78.0003885 L100.625204,69.9105206 L100.625204,60.499489 C100.625204,58.4828393 99.7829909,56.6342438 98.2670066,55.4578649 C89.8448714,48.5676453 80.0102843,43.8621295 78.1574145,43.0218588 C77.9889718,42.8538047 77.8205291,42.6857506 77.8205291,42.5176964 L77.8205291,36.8038558 C78.6627426,35.1233144 79.1680708,33.2747189 79.5049562,31.5941776 C79.6733989,31.7622317 79.8418416,31.7622317 80.0102843,31.7622317 C80.6840551,31.7622317 81.6947113,30.7539069 82.8738102,26.8886618 C84.0529092,22.8553625 83.3791384,21.5109294 82.3684821,21.1748211 C85.5688935,6.0499489 78.3258572,5.54578649 78.3258572,5.54578649 C78.3258572,5.54578649 77.315201,3.52913686 74.2832324,1.8485955 C72.5988053,0.84027068 70.4090502,0 67.5455242,0 C67.0401961,0 66.7033107,0 66.1979826,0 C65.0188836,0 64.0082274,0.336108272 62.9975712,0.672216544 C61.6500296,1.17637895 60.4709306,1.68054136 59.4602744,2.52081204 C58.1127328,3.36108272 56.9336339,4.36940754 55.7545349,5.54578649 C54.0701079,7.39438199 52.3856809,9.57908575 51.71191,12.4360061 C51.0381392,14.788764 51.0381392,17.4776301 52.0487955,20.1664963 C50.7012538,20.1664963 49.3537122,21.1748211 50.7012538,25.880337 C51.71191,29.5775279 52.7225663,30.5858528 53.5647798,30.7539069 C53.9016652,32.9386107 54.575436,35.2913686 55.7545349,37.4760723 L55.7545349,42.3496423 C55.7545349,42.5176964 55.5860922,42.8538047 55.4176495,42.8538047 C53.5647798,43.6940754 44.4688738,48.3995912 35.8782959,55.2898108 C34.3623116,56.4661897 33.520098,58.4828393 33.520098,60.3314348 L33.520098,69.7424665 L33.520098,77.8523691 C33.520098,80.0575971 35.3048596,81.8468339 37.5100807,81.8523565 L96.6151871,82.0003759 C98.8243192,82.0059084 100.619659,80.2195379 100.625192,78.0104058 C100.6252,78.0070667 100.625204,78.0037276 100.625204,78.0003885 Z M18.8697067,46.9825562 C17.3601301,47.7356033 9.35937451,51.6514483 2.11340715,57.6758251 C0.754788267,58.730091 0,60.3867947 0,62.0434983 L0,70.0257976 L0,71.7489556 C2.705415e-16,73.9580946 1.790861,75.7489556 4,75.7489556 L30.5479842,75.7489556 L30.5479842,64.9050773 L30.5479842,58.7745092 C30.5479842,55.2611955 33.7416538,52.442808 39.8528205,48.4858311 C38.7750095,47.4427553 38.0413287,46.530728 38.0413287,46.3801185 L38.0413287,41.5606171 C38.7961169,40.0545229 39.2489899,38.3978192 39.3999475,37.0423345 C39.5509052,37.1929439 39.7018629,37.1929439 39.8528205,37.1929439 C40.4566511,37.1929439 41.362397,36.2892874 42.268143,32.9758801 C43.1738889,29.5118634 42.7210159,28.4575975 41.81527,28.1563786 C44.5325078,15.2039685 38.343244,14.7521402 38.343244,14.7521402 C38.343244,14.7521402 37.437498,12.9448272 34.8712179,11.5893424 C33.5125991,10.6856858 31.5501496,10.0832482 29.1348271,10.0832482 C28.6819542,10.0832482 28.3800388,10.0832482 27.9271659,10.0832482 C26.8704623,10.0832482 25.9647164,10.384467 25.2099281,10.6856858 C24.1532245,11.1375141 23.096521,11.5893424 22.1907751,12.1917801 C20.9831138,12.9448272 19.9264103,13.8484837 19.0206643,14.7521402 C17.5110878,16.2582344 16.1524689,18.2161569 15.5486383,20.776517 C14.9448077,22.8850489 14.9448077,25.1441902 15.8505536,27.4033315 C15.8505536,27.4033315 15.699596,27.4033315 15.699596,27.4033315 C14.6428924,27.4033315 13.5861888,28.1563786 14.6428924,32.3734424 C15.5486383,35.5362403 16.4543842,36.4398968 17.0582148,36.5905062 C17.3601301,38.3978192 17.9639608,40.5063511 19.0206643,42.3136642 L19.0206643,46.530728 C19.171622,46.6813374 19.171622,46.8319468 18.8697067,46.9825562 Z M98.4605307,19.2961597 L101.39371,22.2954245 L103.826102,24.7826203 L109.233243,19.2554997 C110.891433,17.560516 113.476884,17.5507577 115.122326,19.2332725 C116.767768,20.9157869 116.757791,23.5590467 115.099602,25.25403 L109.692461,30.7811504 L115.058033,36.2676115 C116.703475,37.9501259 116.693498,40.5933856 115.035308,42.288369 C113.377118,43.9833529 110.791668,43.993111 109.146225,42.3105964 L103.780654,36.8241358 L101.329417,39.3297635 L98.373513,42.3512562 C96.7153233,44.04624 94.1298724,44.0559981 92.4844302,42.3734835 C90.8389885,40.6909689 90.8489648,38.0477094 92.5071548,36.3527258 L95.4630581,33.3312333 L97.9142954,30.8256054 L95.4819027,28.3384099 L92.5487235,25.3391446 C90.9032817,23.65663 90.913258,21.0133704 92.5714481,19.3183868 C94.2296376,17.6234032 96.8150887,17.6136448 98.4605307,19.2961597 Z"></path>
                </svg>
            </a>
        </li>
    </ul>
<<<<<<< HEAD
    <div class="graphjs-information" if={!group}>
        <div class="graphjs-cover" style="background-image: url(https://raw.githubusercontent.com/phonetworks/graphjs/master/static/group.png)"></div>
=======
    <div class="graphjs-information" if={loaded && !group}>
        <div class="graphjs-cover" style="background-image: url(https://res.cloudinary.com/graphjs/image/upload/graphjs/content/covers/group.png)"></div>
>>>>>>> ozanilbey_advanced-styling
        <a>{i18n.groupErrorTextOne}</a>
        <p>{i18n.groupErrorTextTwo}</p>
        <button onclick={handleUpdate}>{i18n.refreshButtonText}</button>
    </div>
    <div if={!loaded} class="graphjs-placeholder graphjs-loader">
        <div class="graphjs-card">
            <div class="graphjs-cover graphjs-rectangle graphjs-fill"></div>
            <div class="graphjs-title graphjs-line graphjs-centered graphjs-fill"></div>
            <div class="graphjs-description graphjs-line graphjs-centered graphjs-fill"></div>
            <div class="graphjs-members">
                <div class="graphjs-avatar graphjs-circle graphjs-fill"></div>
                <div class="graphjs-avatar graphjs-circle graphjs-fill"></div>
                <div class="graphjs-avatar graphjs-circle graphjs-fill"></div>
                <div class="graphjs-avatar graphjs-circle graphjs-fill"></div>
                <div class="graphjs-avatar graphjs-circle graphjs-fill"></div>
            </div>
        </div>
        <div class="graphjs-list graphjs-rectangle graphjs-centered graphjs-fill"></div>
    </div>
    <graphjs-promo if={loaded} properties="top right"></graphjs-promo>
    <script>
        import getGroup from '../scripts/getGroup.js';
        import joinGroup from '../scripts/joinGroup.js';
        import leaveGroup from '../scripts/leaveGroup.js';
        import showGroup from '../scripts/showGroup.js';
        import getSession from '../scripts/getSession.js';
        import listMembers from '../scripts/listMembers.js';
        import getProfile from '../scripts/getProfile.js';

        import internationalization from '../i18n';
        let i18n = internationalization[window.GraphJSConfig.language]['group-header'];
        i18n = {...i18n,...JSON.parse(JSON.stringify(opts))}
        this.i18n = i18n;

        import {downsizeImage} from '../scripts/client.js';
        this.downsizeImage = downsizeImage;

        this.id = opts.id;
        this.boxStyle = opts.box == 'disabled' ? 'graphjs-inline' : 'graphjs-box';
        this.userId = undefined;
        this.blocked = true;

        this.on('before-mount', function() {
            this.handleUser();
            this.handleInformation();
            this.handleMembers();
        });
        this.on('mount', function() {
            opts.theme && this.root.classList.add('graphjs-' + opts.theme);
        });

        this.handleUser = () => {
            let self = this;
            getSession(function(response) {
                if(response.success) {
                    self.userId = response.id;
                    self.update();
                } else {
                    self.loaded = false;
                    self.blocked = true;
                    self.update();
                    //Handle errors
                }
            });
        }
        this.handleAvatars = () => {
            let self = this;
            self.avatars = [];
            let limit = 4;
            let index = 0;
            for(let member of self.members) {
                if(index < limit) {
                    getProfile(member, function(response) {
                        if(response.success) {
                            self.avatars.push(response.profile.avatar);
                            self.update();
                        } else {
                            //Handle errors
                        }
                    });
                } else {
                    break;
                }
                index++;
            }
        }
        this.handleInformation = () => {
            let self = this;
            getGroup(self.id, function(response) {
                if(response.success) {
                    self.group = response.group;
                    self.loaded = true;
                    self.update();
                } else {
                    self.loaded = true;
                    //Handle errors
                }
            });
        }
        this.handleMembers = () => {
            let self = this;
            listMembers(self.id, function(response) {
                if(response.success) {
                    self.members = response.members;
                    self.handleAvatars();
                    self.update();
                    getSession(function(response) {
                        if(response.success) {
                            self.joined = self.members.includes(response.id);
                            self.membershipInformation = true;
                            self.update();
                        } else {
                            //Handle errors
                        }
                    });
                } else {
                    //Handle errors
                }
            });
        };
        this.handleJoin = () => {
            let self = this;
            joinGroup(self.id, function(response) {
                if(response.success) {
                    self.joined = true;
                    self.handleInformation();
                    self.update();
                } else {
                    //Handle errors
                }
            });
        }
        this.handleLeave = () => {
            let self = this;
            leaveGroup(self.id, function(response) {
                if(response.success) {
                    self.joined = false;
                    self.handleInformation();
                    self.update();
                } else {
                    //Handle errors
                }
            });
        }
        this.handleUpdate = () => this.update();
        this.updateInformation = () => this.handleInformation();
    </script>
</graphjs-group-header>