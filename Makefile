run_all_in_parallel:
	make -j test_Windows_10_edge_18 test_OX_X_10_11_firefox_59 test_Windows_10_chrome_68

test_Windows_10_edge_18:
	robot  --variable platform:"Windows 10" --variable browserName:MicrosoftEdge --variable version:18.0 --variable ROBOT_BROWSER:chrome --variable visual:false --variable network:false --variable console:false Tests/sample_test.robot

test_OX_X_10_11_firefox_59:
	robot --variable platform:${LT_PLATFORM} --variable browserName:${LT_BROWSER_NAME} --variable version:${LT_BROWSER_VERSION} --variable ROBOT_BROWSER:${LT_BROWSER_NAME} --variable visual:false --variable network:false --variable console:false Tests/sample_test.robot

test_Windows_10_chrome_68:
	robot --variable platform:"Windows 10" --variable browserName:chrome --variable version:68.0 --variable ROBOT_BROWSER:chrome --variable visual:false --variable network:false --variable console:false Tests/sample_test.robot
