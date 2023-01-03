/*
 *  fontnames-array takes two fonts, first one
 *  it treats as a proportional-width font and uses
 *  everywhere possible and as a main UI font, while
 *  the second font it treats as a fixed-width font,
 *  changeable to any text window by executing `Font`
 *  from tag window.
 *
 *  Note: `Font` can also be executed
 *  with arguments with any `fontsrv -p .` approved
 *  fonts, thus allowing you to experiment with font
 *  sizes and whether you want anti-aliasing or not.
 */

char *fontnames[2] = {
	/* "/lib/font/bit/profont/profont-12.font", */
	/* "/lib/font/bit/mntcarlo/mntcarlo.font" */
	"/mnt/font/IBMPlexSans/14a/font",
	"/mnt/font/FiraCodeNerdFontComplete-Retina/14a/font"
	/* "/mnt/font/PTSans-Regular/12a/font", */
	/* "/mnt/font/Writer-Regular/11a/font" */
};

/*
 *  globalautoindent tries to guess where to
 *  indent by the context of the previous line.
 *
 *  comes highly suggested.
 */

int globalautoindent	= TRUE;

/*
 *  swapping scroll buttons makes B1 scroll down
 *  instead of up and B2 up instead of down
 */

int	swapscrollbuttons	= FALSE;

/*
 *  bartflag triggers quote unquote experimental
 *  mode, in which instead of mouse following focus
 *  from window to window etc. it in fact, does not.
 *
 *  comes highly suggested.
 */

int bartflag			= FALSE;

/*
 *  colors-constants. now let me take a minute to explain
 *  them. C_TAGBG/FG/HLBG/HLFG are respectively your tag
 *  windows background, foreground, highlighted back- and
 *  foreground color. The same exact applies to C_TXT*-
 *  variants of the same constant just in this case it handles
 *  the colorscheme of the text window.
 *
 *  C_WINBUTTON is the button which you adjust your columns
 *  position with. C_COLBUTTON represents a separate text
 *  windows button. C_TMPBUTTON is the so-called "dirty"
 *  or "unclean" -marker aka notifying the file as modified put
 *  in the middle of C_COLBUTTON. C_SCROLLBG is plain and simple
 *  your scrollbars background color.
 *
 *  the last two defines are for defining the color of the specific
 *  buttons highlight background.
 */

#define C_TAGBG			0xDBDBDBFF
#define C_TAGFG			0x000000FF
#define C_TAGHLBG		0xc7c7c7FF
/* #define C_TAGHLBG		0xaaaaaaFF */
/* #define C_TAGHLBG		0x999999FF */
#define C_TAGHLFG		0x000000FF
/* #define C_TAGHLFG		0x444444FF */

#define C_TXTBG			0xE9E9E8FF
#define C_TXTFG			0x000000FF
#define C_TXTHLBG		0xc9c9c9FF
/* #define C_TXTHLBG		0xAAAAAAFF */
#define C_TXTHLFG		0x000000FF

#define C_WINBUTTON		0x5D5D5DFF
/* #define C_WINBUTTON		0x4D4D4DFF */
#define C_COLBUTTON		0xA0A0A0FF
#define C_TMPBUTTON		0xA0A0A0FF
#define C_SCROLLBG		0x999999FF

#define C_BUTTON2HL		0xcd2424FF
/* #define C_BUTTON2HL		0xB80000FF */
/* #define C_BUTTON2HL		0xcdc837FF */
/* #define C_BUTTON2HL		0xDBD424FF */
/* #define C_BUTTON2HL		0xE77400FF */
/* #define C_BUTTON2HL		0xEA8900FF */
#define C_BUTTON3HL		0x72b172FF
/* #define C_BUTTON3HL		0x85e085FF */
/* #define C_BUTTON3HL		0xaae1aaFF */
/* #define C_BUTTON3HL		0xccddccFF */
/* #define C_BUTTON3HL		0xcdc837FF */
/* #define C_BUTTON3HL		0xB80000FF */
/* #define C_BUTTON3HL		0x68b800FF */
/* #define C_BUTTON3HL		0xCCFF68DD */
/* #define C_BUTTON3HL		0xE6FFB5FF */
/* #define C_BUTTON3HL		0xD7FFA2FF */
