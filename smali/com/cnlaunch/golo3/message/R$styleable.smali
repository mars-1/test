.class public final Lcom/cnlaunch/golo3/message/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/golo3/message/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final CompoundButton:[I = null

.field public static final CompoundButton_android_button:I = 0x0

.field public static final Switch:[I = null

.field public static final Switch_Style:[I = null

.field public static final Switch_Style_switchStyle:I = 0x0

.field public static final Switch_switchMinWidth:I = 0x6

.field public static final Switch_switchPadding:I = 0x7

.field public static final Switch_switchTextAppearance:I = 0x5

.field public static final Switch_textOff:I = 0x3

.field public static final Switch_textOn:I = 0x2

.field public static final Switch_thumb:I = 0x0

.field public static final Switch_thumbTextPadding:I = 0x4

.field public static final Switch_track:I = 0x1

.field public static final TextAppearance:[I = null

.field public static final TextAppearance_textAllCaps:I = 0x7

.field public static final TextAppearance_textColor:I = 0x0

.field public static final TextAppearance_textColorHighlight:I = 0x4

.field public static final TextAppearance_textColorHint:I = 0x5

.field public static final TextAppearance_textColorLink:I = 0x6

.field public static final TextAppearance_textSize:I = 0x1

.field public static final TextAppearance_textStyle:I = 0x2

.field public static final TextAppearance_typeface:I = 0x3

.field public static final roundedimageview:[I = null

.field public static final roundedimageview_border_color:I = 0x1

.field public static final roundedimageview_border_thickness:I = 0x0

.field public static final roundedimageview_circleColor:I = 0x4

.field public static final roundedimageview_radius:I = 0x2

.field public static final roundedimageview_ringColor:I = 0x5

.field public static final roundedimageview_strokeWidth:I = 0x3


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2398
    new-array v0, v3, [I

    const v1, 0x1010107

    aput v1, v0, v2

    sput-object v0, Lcom/cnlaunch/golo3/message/R$styleable;->CompoundButton:[I

    .line 2400
    new-array v0, v4, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/cnlaunch/golo3/message/R$styleable;->Switch:[I

    .line 2401
    new-array v0, v3, [I

    const v1, 0x7f010008

    aput v1, v0, v2

    sput-object v0, Lcom/cnlaunch/golo3/message/R$styleable;->Switch_Style:[I

    .line 2411
    new-array v0, v4, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/cnlaunch/golo3/message/R$styleable;->TextAppearance:[I

    .line 2420
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/cnlaunch/golo3/message/R$styleable;->roundedimageview:[I

    .line 2426
    return-void

    .line 2400
    nop

    :array_0
    .array-data 0x4
        0x9t 0x0t 0x1t 0x7ft
        0xat 0x0t 0x1t 0x7ft
        0xbt 0x0t 0x1t 0x7ft
        0xct 0x0t 0x1t 0x7ft
        0xdt 0x0t 0x1t 0x7ft
        0xet 0x0t 0x1t 0x7ft
        0xft 0x0t 0x1t 0x7ft
        0x10t 0x0t 0x1t 0x7ft
    .end array-data

    .line 2411
    :array_1
    .array-data 0x4
        0x11t 0x0t 0x1t 0x7ft
        0x12t 0x0t 0x1t 0x7ft
        0x13t 0x0t 0x1t 0x7ft
        0x14t 0x0t 0x1t 0x7ft
        0x15t 0x0t 0x1t 0x7ft
        0x16t 0x0t 0x1t 0x7ft
        0x17t 0x0t 0x1t 0x7ft
        0x18t 0x0t 0x1t 0x7ft
    .end array-data

    .line 2420
    :array_2
    .array-data 0x4
        0x2t 0x0t 0x1t 0x7ft
        0x3t 0x0t 0x1t 0x7ft
        0x4t 0x0t 0x1t 0x7ft
        0x5t 0x0t 0x1t 0x7ft
        0x6t 0x0t 0x1t 0x7ft
        0x7t 0x0t 0x1t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2397
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
