$(document).ready(function() {
  insertIframe()
  // handmade
  // changeSidebarHeightAndCreateIframe()

  // intersectionObserver
  const options = {
    threshold: 0.01,
  }
  const divDoc = document.querySelector('.iframe-container')
  const innerSidebar = $('.wy-side-scroll')
  innerSidebar.removeAttr('style')
  let innerSidebarHeight = $('.wy-side-scroll').height()

  intersectionObserver(options, divDoc, innerSidebarHeight, innerSidebar)

  $(window).resize(function() {
    // handmade
    // changeSidebarHeightAndCreateIframe()

    // intersectionObserver
    innerSidebar.removeAttr('style')
    innerSidebarHeight = $('.wy-side-scroll').height()
    intersectionObserver(options, divDoc, innerSidebarHeight, innerSidebar)
  })

  $(window).scroll(function() {
    // handmade
    // changeSidebarHeightAndCreateIframe()

    // intersectionObserver
    innerSidebar.removeAttr('style')
    innerSidebarHeight = $('.wy-side-scroll').height()
    intersectionObserver(options, divDoc, innerSidebarHeight, innerSidebar)
  })
});

function changeSidebarHeightAndCreateIframe() {
  
  const iframeContainer = $('.iframe-container')
  const screenWidth = $(window).width()
  const windowHeight = $(document).height(); // maximum height
  const iframeHeight = iframeContainer.height() // height of bottom iframe
  const sidebar = $('.wy-nav-side') // sidebar element
  const currentPosition = $(document).scrollTop()
  const browserHeight = $(window).height()
  const additionalPaddingFromSidebar = screenWidth > 991 ? 70 : 83
  const heightThatIsAddedByPaddings = 36
  const resultOfSums = windowHeight - 
    iframeHeight - 
    currentPosition - 
    additionalPaddingFromSidebar - 
    heightThatIsAddedByPaddings
  const topPointofIframe = iframeContainer.offset().top
  const isIframeInViewport = 
    (currentPosition + browserHeight + additionalPaddingFromSidebar) > 
    topPointofIframe
  const innerSidebarPart = $('.wy-side-scroll')

  console.log(
    // 'windowHeight=', windowHeight,
    // 'iframeHeight=', iframeHeight,
    // 'currentPosition=', currentPosition,
    // 'browserHeight=', browserHeight,
    // 'resultOfSums=', resultOfSums,
    // 'screenWidth=', screenWidth,
    // 'currentPositionMinusBrowserHeight=', ( currentPosition - browserHeight),
    // 'additionalPaddingFromSidebar=', additionalPaddingFromSidebar,
    // 'topPointofIframe=', topPointofIframe,
    'isIframeInViewport=', isIframeInViewport, 
    // currentPosition + browserHeight + additionalPaddingFromSidebar, 
    // windowHeight - topPointofIframe - additionalPaddingFromSidebar,
    // {innerSidebarPart}
  )

  if(isIframeInViewport) {
    if(resultOfSums <= 50) {
      $(sidebar).hide()
      return 
    }
    $(sidebar).show()
    $(sidebar).height(resultOfSums)
    $(sidebar).css('margin-bottom', '20px')
    // $(innerSidebarPart).removeAttr('style')
    // const heightOfInner = $(innerSidebarPart).height()
    // console.log({heightOfInner})
    // $(innerSidebarPart).height(heightOfInner - 50)
    return

  } else {
    $(sidebar).removeAttr('style')
    $(innerSidebarPart).removeAttr('style')
  }
  
}

function intersectionObserver(options, divDoc, innerSidebarHeight, innerSidebar) {
  // we delete any inline-styles from innerSidebar
  if($(innerSidebar).attr('style')) {
    innerSidebar.removeAttr('style')
  }
  const screenWidth = $(window).width()
  const sidebar = $('.wy-nav-side')
  const documentHeight = $(document).height()
  const iframeHeight = $('.iframe-container').height()
  const currentPosition = $(document).scrollTop()
  const additionalPaddingFromSidebar = screenWidth > 991 ? 70 : 83
  const heightThatIsAddedByPaddings = 36
  const resultOfSums = documentHeight - 
    iframeHeight - 
    currentPosition - 
    additionalPaddingFromSidebar - 
    heightThatIsAddedByPaddings
  const heightOfAdditionalButton = 50

  console.log({resultOfSums})

  const onEntry = (entries, observer) => {
    entries.forEach(entry => {
      if(entry.isIntersecting) {
        if(resultOfSums <= 70) {
          $(sidebar).hide()
          return 
        }
        $(sidebar).show()
        $(sidebar).height(resultOfSums)
        $(sidebar).css('margin-bottom', '20px')
        $(innerSidebar).removeAttr('style')
        // const heightOfInner = $(innerSidebar).height()
        // console.log({heightOfInner})
        $(innerSidebar).height(resultOfSums - heightOfAdditionalButton)
        return
        // entry.isIntersecting ? innerSidebar.height(windowHeight * (1 - entry.intersectionRatio) - 40) : null
        console.log(innerSidebar.height(), $(innerSidebar).attr('style'), $(window).height() * (1 - (entry.intersectionRatio + (entry.intersectionRatio / windowHeight))) - 40)
      } else {
        $(sidebar).removeAttr('style')
        $(innerSidebar).removeAttr('style')
      }
    })
  }
  const observer = new IntersectionObserver(onEntry, options);
  observer.observe(divDoc)

  if($(innerSidebar).attr('style')) {
    observer.unobserve(divDoc)
  }

}

function insertIframe() {
  const body = $('.wy-body-for-nav')
  body.append(divWithIframe)
}

const divWithIframe = `<div class="iframe-container">
  <iframe src='https://vyos.io/iframes/footer' id='vyos-footer-iframe'></iframe>
</div>`
