.class public Lcom/itextpdf/text/html/HtmlTags;
.super Ljava/lang/Object;
.source "HtmlTags.java"


# static fields
.field public static final ALIGN:Ljava/lang/String; = "align"

.field public static final ALIGN_BASELINE:Ljava/lang/String; = "Baseline"

.field public static final ALIGN_BOTTOM:Ljava/lang/String; = "Bottom"

.field public static final ALIGN_CENTER:Ljava/lang/String; = "Center"

.field public static final ALIGN_JUSTIFIED:Ljava/lang/String; = "Justify"

.field public static final ALIGN_LEFT:Ljava/lang/String; = "Left"

.field public static final ALIGN_MIDDLE:Ljava/lang/String; = "Middle"

.field public static final ALIGN_RIGHT:Ljava/lang/String; = "Right"

.field public static final ALIGN_TOP:Ljava/lang/String; = "Top"

.field public static final ALT:Ljava/lang/String; = "alt"

.field public static final ANCHOR:Ljava/lang/String; = "a"

.field public static final AUTHOR:Ljava/lang/String; = "author"

.field public static final B:Ljava/lang/String; = "b"

.field public static final BACKGROUNDCOLOR:Ljava/lang/String; = "bgcolor"

.field public static final BODY:Ljava/lang/String; = "body"

.field public static final BORDERCOLOR:Ljava/lang/String; = "bordercolor"

.field public static final BORDERWIDTH:Ljava/lang/String; = "border"

.field public static final BOTTOM:Ljava/lang/String; = "bottom"

.field public static final BOTTOMMARGIN:Ljava/lang/String; = "bottommargin"

.field public static final CELL:Ljava/lang/String; = "td"

.field public static final CELLPADDING:Ljava/lang/String; = "cellpadding"

.field public static final CELLSPACING:Ljava/lang/String; = "cellspacing"

.field public static final CHUNK:Ljava/lang/String; = "font"

.field public static final CODE:Ljava/lang/String; = "code"

.field public static final COLOR:Ljava/lang/String; = "color"

.field public static final COLSPAN:Ljava/lang/String; = "colspan"

.field public static final COLUMNS:Ljava/lang/String; = "cols"

.field public static final CONTENT:Ljava/lang/String; = "content"

.field public static final DEFAULT:Ljava/lang/String; = "Default"

.field public static final DIV:Ljava/lang/String; = "div"

.field public static final EM:Ljava/lang/String; = "em"

.field public static final FONT:Ljava/lang/String; = "face"

.field public static final H:[Ljava/lang/String; = null

.field public static final HEAD:Ljava/lang/String; = "head"

.field public static final HEADERCELL:Ljava/lang/String; = "th"

.field public static final HORIZONTALALIGN:Ljava/lang/String; = "align"

.field public static final HORIZONTALRULE:Ljava/lang/String; = "hr"

.field public static final HTML:Ljava/lang/String; = "html"

.field public static final I:Ljava/lang/String; = "i"

.field public static final IMAGE:Ljava/lang/String; = "img"

.field public static final JAVASCRIPT:Ljava/lang/String; = "JavaScript"

.field public static final JAVASCRIPT_ONLOAD:Ljava/lang/String; = "onLoad"

.field public static final JAVASCRIPT_ONUNLOAD:Ljava/lang/String; = "onUnLoad"

.field public static final KEYWORDS:Ljava/lang/String; = "keywords"

.field public static final LANGUAGE:Ljava/lang/String; = "language"

.field public static final LEFT:Ljava/lang/String; = "left"

.field public static final LEFTMARGIN:Ljava/lang/String; = "leftmargin"

.field public static final LINK:Ljava/lang/String; = "link"

.field public static final LISTITEM:Ljava/lang/String; = "li"

.field public static final META:Ljava/lang/String; = "meta"

.field public static final NAME:Ljava/lang/String; = "name"

.field public static final NEWLINE:Ljava/lang/String; = "br"

.field public static final NOWRAP:Ljava/lang/String; = "nowrap"

.field public static final ORDEREDLIST:Ljava/lang/String; = "ol"

.field public static final PARAGRAPH:Ljava/lang/String; = "p"

.field public static final PLAINHEIGHT:Ljava/lang/String; = "height"

.field public static final PLAINWIDTH:Ljava/lang/String; = "width"

.field public static final PRE:Ljava/lang/String; = "pre"

.field public static final REFERENCE:Ljava/lang/String; = "href"

.field public static final REL:Ljava/lang/String; = "rel"

.field public static final RIGHT:Ljava/lang/String; = "right"

.field public static final RIGHTMARGIN:Ljava/lang/String; = "rightmargin"

.field public static final ROW:Ljava/lang/String; = "tr"

.field public static final ROWSPAN:Ljava/lang/String; = "rowspan"

.field public static final S:Ljava/lang/String; = "s"

.field public static final SCRIPT:Ljava/lang/String; = "script"

.field public static final SIZE:Ljava/lang/String; = "point-size"

.field public static final SPAN:Ljava/lang/String; = "span"

.field public static final STRONG:Ljava/lang/String; = "strong"

.field public static final STYLE:Ljava/lang/String; = "style"

.field public static final STYLESHEET:Ljava/lang/String; = "stylesheet"

.field public static final SUB:Ljava/lang/String; = "sub"

.field public static final SUBJECT:Ljava/lang/String; = "subject"

.field public static final SUP:Ljava/lang/String; = "sup"

.field public static final TABLE:Ljava/lang/String; = "table"

.field public static final TEXT_CSS:Ljava/lang/String; = "text/css"

.field public static final TITLE:Ljava/lang/String; = "title"

.field public static final TOP:Ljava/lang/String; = "top"

.field public static final TOPMARGIN:Ljava/lang/String; = "topmargin"

.field public static final TYPE:Ljava/lang/String; = "type"

.field public static final U:Ljava/lang/String; = "u"

.field public static final UNORDEREDLIST:Ljava/lang/String; = "ul"

.field public static final URL:Ljava/lang/String; = "src"

.field public static final VAR:Ljava/lang/String; = "var"

.field public static final VERTICALALIGN:Ljava/lang/String; = "valign"

.field public static final WIDTH:Ljava/lang/String; = "width"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 139
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/itextpdf/text/html/HtmlTags;->H:[Ljava/lang/String;

    .line 141
    sget-object v0, Lcom/itextpdf/text/html/HtmlTags;->H:[Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "h1"

    aput-object v2, v0, v1

    .line 142
    sget-object v0, Lcom/itextpdf/text/html/HtmlTags;->H:[Ljava/lang/String;

    const/4 v1, 0x1

    const-string/jumbo v2, "h2"

    aput-object v2, v0, v1

    .line 143
    sget-object v0, Lcom/itextpdf/text/html/HtmlTags;->H:[Ljava/lang/String;

    const/4 v1, 0x2

    const-string/jumbo v2, "h3"

    aput-object v2, v0, v1

    .line 144
    sget-object v0, Lcom/itextpdf/text/html/HtmlTags;->H:[Ljava/lang/String;

    const/4 v1, 0x3

    const-string/jumbo v2, "h4"

    aput-object v2, v0, v1

    .line 145
    sget-object v0, Lcom/itextpdf/text/html/HtmlTags;->H:[Ljava/lang/String;

    const/4 v1, 0x4

    const-string/jumbo v2, "h5"

    aput-object v2, v0, v1

    .line 146
    sget-object v0, Lcom/itextpdf/text/html/HtmlTags;->H:[Ljava/lang/String;

    const/4 v1, 0x5

    const-string/jumbo v2, "h6"

    aput-object v2, v0, v1

    .line 147
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
