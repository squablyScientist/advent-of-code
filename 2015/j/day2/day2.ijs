NB. 

NB. The puzzle input. 
input =: 1!:1 <'input'

NB.                                           +-+-+-+
NB. Takes a string 'axbxy' and boxes it into: |a|b|c|
NB.                                           +-+-+-+
boxProduct =: {{<;._2 y,'x'}}
boxedInput =: boxProduct;._2 input
triples =: ".>boxedInput

NB. Given a triple of l w h, finds the surface area of the rectangular prism of that size.
surfaceArea =: {{2 * +/ 2 */\ 4 $ y}}

NB. Finds the surface area of the smalles side of the rectangular prism. Really
NB. just multiplies the two lowest numbers in the array
smallestSideArea =: {{*/ ((2{./:){]) y}}

smallestSidePerimeter =: {{2 * +/((2{./:){]) y}}

volume =: */

NB. The amount of ribbon needed for any triple
ribbonNeeded =: volume+smallestSidePerimeter

NB. Fork that sums the surface area of a triple and the surface area of the smallest side
paperNeeded =: surfaceArea+smallestSideArea

NB. Sums the amount of paper needed for each triple in the input
totalPaperNeeded =: +/ _3(paperNeeded)\,triples

NB. Sumes the amount of ribbon needed for each triple in the input
totalRibbonNeeded =: +/ _3(ribbonNeeded)\,triples