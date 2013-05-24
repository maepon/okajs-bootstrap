@echo off

copy /Y img\* build\img

call lessc -x less\bootstrap.less > build\css\bootstrap.min.css
call lessc -x less\responsive.less > build\css\bootstrap-responsive.css

copy /B js\bootstrap-transition.js+js\bootstrap-alert.js+js\bootstrap-button.js+js\bootstrap-carousel.js+js\bootstrap-collapse.js+js\bootstrap-dropdown.js+js\bootstrap-modal.js+js\bootstrap-tooltip.js+js\bootstrap-popover.js+js\bootstrap-scrollspy.js+js\bootstrap-tab.js+js\bootstrap-typeahead.js build\js\bootstrap.js

call .\node_modules\.bin\uglifyjs --ascii build\js\bootstrap.js > build\js\bootstrap.min.js

call node build/build
