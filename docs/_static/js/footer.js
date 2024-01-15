$(document).ready(function() {
  insertIframe()
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
    // intersectionObserver
    innerSidebar.removeAttr('style')
    innerSidebarHeight = $('.wy-side-scroll').height()
    intersectionObserver(options, divDoc, innerSidebarHeight, innerSidebar)
  })

  $(window).scroll(function() {
    // intersectionObserver
    innerSidebar.removeAttr('style')
    innerSidebarHeight = $('.wy-side-scroll').height()
    intersectionObserver(options, divDoc, innerSidebarHeight, innerSidebar)
  })
});

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
        $(innerSidebar).height(resultOfSums - heightOfAdditionalButton)
        return
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