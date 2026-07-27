---
source: http://www.seriouscompacts.com/showthread.php?t=11338
---
Disclaimer (Thanks, Gideon): The ISO-standard for math notation says that "lg(x)" denotes the 10-logarithm of x, rather than the 2-logarithm. Google does it differently, by taking lg(x) as the 2-logarithm of x. The equations below will work for their intended purpose (doing calculations in Google), but mathematically they don't use commonly accepted notation.

Amin Sabet wrote:
+++++++++++++++++++++++++++++++++++++++++++++++
**Calculations based on the ratio of the diagonal dimensions of the two formats:**

**Crop factor** , where **SW** \=sensor height (mm); **SH** \=sensor width (mm):

		(sqrt((36^2)+(24^2))) / (sqrt(( **SW** ^2)+( **SH** ^2)))
	

**Difference in stops between two formats** , where **SW1** \=sensor 1 width (mm); **SH1** \=sensor 1 height (mm), **SW2** \=sensor 2 width (mm); **SH2** \=sensor 2 height (mm):

		2 \* lg((sqrt(( **SW1** ^2)+( **SH1** ^2))) / (sqrt(( **SW2** ^2)+( **SH2** ^2))))
	

**135 format equivalent focal length** , where **SW** \=sensor height (mm); **SH** \=sensor width (mm); **FL** \=focal length:

		((sqrt((36^2)+(24^2))) / (sqrt(( **SW** ^2)+( **SH** ^2)))) \* **FL**
	

**135 format equivalent relative aperture (equivalent f-number)** , where **SW** \=sensor height (mm); **SH** \=sensor width (mm); **RA** \=relative aperture (f-number):

		((sqrt((36^2)+(24^2))) / (sqrt(( **SW** ^2)+( **SH** ^2)))) \* **RA**
	

+++++++++++++++++++++++++++++++++++++++++++++++

**Calculations based on the square root of the ratio of the areas of the two formats:**

**Crop factor** , where **SW** \=sensor height (mm); **SH** \=sensor width (mm):

		sqrt((36 \* 24) / ( **SW** \* **SH** ))
	

**Difference in stops between two formats** , where **SW1** \=sensor 1 width (mm); **SH1** \=sensor 1 height (mm), **SW2** \=sensor 2 width (mm); **SH2** \=sensor 2 height (mm):

		2 \* lg(sqrt(( **SW1** \* **SH1** ) / ( **SW2** \* **SH2** )))
	

**135 format equivalent focal length** , where **SW** \=sensor height (mm); **SH** \=sensor width (mm); **FL** \=focal length:

		(sqrt((36 \* 24) / ( **SW** \* **SH** ))) \* **FL**
	

**135 format equivalent relative aperture (equivalent f-number)** , where **SW** \=sensor height (mm); **SH** \=sensor width (mm); **RA** \=relative aperture (f-number):

		(sqrt((36 \* 24) / ( **SW** \* **SH** ))) \* **RA**
	

+++++++++++++++++++++++++++++++++++++++++++++++
**A few additional Googleable calculations which may be useful:**

**Number of stops separating two f-numbers** for a given format, where **RA1** \=f-number 1; **RA2** \=f-number 2:

		2 \* lg( **RA1** / **RA2** )
	

**F-number which is X stops slower** than another given f-number ( **RA** ):

		((sqrt(2))^( **X** ))) \* **RA**
	

**F-number which is X stops faster** than another given f-number ( **RA** ):

		((sqrt(2))^(- **X** ))) \* **RA**
	

Thanks again to everyone for your helpful input.
