.class public Lcom/cnlaunch/x431pro/widget/sortlistview/SideBar;
.super Landroid/view/View;
.source "SideBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cnlaunch/x431pro/widget/sortlistview/SideBar$OnTouchingLetterChangedListener;
    }
.end annotation


# static fields
.field public static b:[Ljava/lang/String;


# instance fields
.field private choose:I

.field private mTextDialog:Landroid/widget/TextView;

.field private onTouchingLetterChangedListener:Lcom/cnlaunch/x431pro/widget/sortlistview/SideBar$OnTouchingLetterChangedListener;

.field private paint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 27
    const/16 v0, 0x1b

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "A"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "B"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "C"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "D"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "E"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "F"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "G"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "H"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "I"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "J"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "K"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "L"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "M"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "N"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "O"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    .line 28
    const-string/jumbo v2, "P"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "Q"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v2, "R"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string/jumbo v2, "S"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string/jumbo v2, "T"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string/jumbo v2, "U"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string/jumbo v2, "V"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string/jumbo v2, "W"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string/jumbo v2, "X"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string/jumbo v2, "Y"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string/jumbo v2, "Z"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string/jumbo v2, "#"

    aput-object v2, v0, v1

    .line 27
    sput-object v0, Lcom/cnlaunch/x431pro/widget/sortlistview/SideBar;->b:[Ljava/lang/String;

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 30
    const/4 v0, -0x1

    iput v0, p0, Lcom/cnlaunch/x431pro/widget/sortlistview/SideBar;->choose:I

    .line 31
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/widget/sortlistview/SideBar;->paint:Landroid/graphics/Paint;

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    const/4 v0, -0x1

    iput v0, p0, Lcom/cnlaunch/x431pro/widget/sortlistview/SideBar;->choose:I

    .line 31
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/widget/sortlistview/SideBar;->paint:Landroid/graphics/Paint;

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    const/4 v0, -0x1

    iput v0, p0, Lcom/cnlaunch/x431pro/widget/sortlistview/SideBar;->choose:I

    .line 31
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/widget/sortlistview/SideBar;->paint:Landroid/graphics/Paint;

    .line 40
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "event"

    .prologue
    const/4 v7, 0x0

    .line 85
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 87
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 88
    .local v4, y:F
    iget v3, p0, Lcom/cnlaunch/x431pro/widget/sortlistview/SideBar;->choose:I

    .line 89
    .local v3, oldChoose:I
    iget-object v2, p0, Lcom/cnlaunch/x431pro/widget/sortlistview/SideBar;->onTouchingLetterChangedListener:Lcom/cnlaunch/x431pro/widget/sortlistview/SideBar$OnTouchingLetterChangedListener;

    .line 91
    .local v2, listener:Lcom/cnlaunch/x431pro/widget/sortlistview/SideBar$OnTouchingLetterChangedListener;
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/sortlistview/SideBar;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float v5, v4, v5

    sget-object v6, Lcom/cnlaunch/x431pro/widget/sortlistview/SideBar;->b:[Ljava/lang/String;

    array-length v6, v6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    float-to-int v1, v5

    .line 93
    .local v1, c:I
    packed-switch v0, :pswitch_data_0

    .line 105
    const v5, 0x7f020599

    invoke-virtual {p0, v5}, Lcom/cnlaunch/x431pro/widget/sortlistview/SideBar;->setBackgroundResource(I)V

    .line 106
    if-eq v3, v1, :cond_2

    .line 107
    if-ltz v1, :cond_2

    sget-object v5, Lcom/cnlaunch/x431pro/widget/sortlistview/SideBar;->b:[Ljava/lang/String;

    array-length v5, v5

    if-ge v1, v5, :cond_2

    .line 108
    if-eqz v2, :cond_0

    .line 109
    sget-object v5, Lcom/cnlaunch/x431pro/widget/sortlistview/SideBar;->b:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-interface {v2, v5}, Lcom/cnlaunch/x431pro/widget/sortlistview/SideBar$OnTouchingLetterChangedListener;->onTouchingLetterChanged(Ljava/lang/String;)V

    .line 111
    :cond_0
    iget-object v5, p0, Lcom/cnlaunch/x431pro/widget/sortlistview/SideBar;->mTextDialog:Landroid/widget/TextView;

    if-eqz v5, :cond_1

    .line 112
    iget-object v5, p0, Lcom/cnlaunch/x431pro/widget/sortlistview/SideBar;->mTextDialog:Landroid/widget/TextView;

    sget-object v6, Lcom/cnlaunch/x431pro/widget/sortlistview/SideBar;->b:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    iget-object v5, p0, Lcom/cnlaunch/x431pro/widget/sortlistview/SideBar;->mTextDialog:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 115
    :cond_1
    iput v1, p0, Lcom/cnlaunch/x431pro/widget/sortlistview/SideBar;->choose:I

    .line 116
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/sortlistview/SideBar;->invalidate()V

    .line 121
    :cond_2
    :goto_0
    const/4 v5, 0x1

    return v5

    .line 96
    :pswitch_0
    invoke-virtual {p0, v7}, Lcom/cnlaunch/x431pro/widget/sortlistview/SideBar;->setBackgroundColor(I)V

    .line 97
    const/4 v5, -0x1

    iput v5, p0, Lcom/cnlaunch/x431pro/widget/sortlistview/SideBar;->choose:I

    .line 98
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/sortlistview/SideBar;->invalidate()V

    .line 99
    iget-object v5, p0, Lcom/cnlaunch/x431pro/widget/sortlistview/SideBar;->mTextDialog:Landroid/widget/TextView;

    if-eqz v5, :cond_2

    .line 100
    iget-object v5, p0, Lcom/cnlaunch/x431pro/widget/sortlistview/SideBar;->mTextDialog:Landroid/widget/TextView;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 93
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11
    .parameter "canvas"

    .prologue
    const/4 v10, 0x1

    .line 54
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 56
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/sortlistview/SideBar;->getHeight()I

    move-result v0

    .line 58
    .local v0, height:I
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/sortlistview/SideBar;->getWidth()I

    move-result v3

    .line 60
    .local v3, width:I
    sget-object v6, Lcom/cnlaunch/x431pro/widget/sortlistview/SideBar;->b:[Ljava/lang/String;

    array-length v6, v6

    div-int v2, v0, v6

    .line 62
    .local v2, singleHeight:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    sget-object v6, Lcom/cnlaunch/x431pro/widget/sortlistview/SideBar;->b:[Ljava/lang/String;

    array-length v6, v6

    if-lt v1, v6, :cond_0

    .line 81
    return-void

    .line 63
    :cond_0
    iget-object v6, p0, Lcom/cnlaunch/x431pro/widget/sortlistview/SideBar;->paint:Landroid/graphics/Paint;

    const/16 v7, 0x21

    const/16 v8, 0x41

    const/16 v9, 0x62

    invoke-static {v7, v8, v9}, Landroid/graphics/Color;->rgb(III)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 65
    iget-object v6, p0, Lcom/cnlaunch/x431pro/widget/sortlistview/SideBar;->paint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 66
    iget-object v6, p0, Lcom/cnlaunch/x431pro/widget/sortlistview/SideBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {v6, v10}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 67
    iget-object v6, p0, Lcom/cnlaunch/x431pro/widget/sortlistview/SideBar;->paint:Landroid/graphics/Paint;

    const/high16 v7, 0x41a0

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 69
    iget v6, p0, Lcom/cnlaunch/x431pro/widget/sortlistview/SideBar;->choose:I

    if-ne v1, v6, :cond_1

    .line 70
    iget-object v6, p0, Lcom/cnlaunch/x431pro/widget/sortlistview/SideBar;->paint:Landroid/graphics/Paint;

    const-string/jumbo v7, "#3399ff"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 71
    iget-object v6, p0, Lcom/cnlaunch/x431pro/widget/sortlistview/SideBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {v6, v10}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 74
    :cond_1
    div-int/lit8 v6, v3, 0x2

    int-to-float v6, v6

    iget-object v7, p0, Lcom/cnlaunch/x431pro/widget/sortlistview/SideBar;->paint:Landroid/graphics/Paint;

    sget-object v8, Lcom/cnlaunch/x431pro/widget/sortlistview/SideBar;->b:[Ljava/lang/String;

    aget-object v8, v8, v1

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v7

    const/high16 v8, 0x4000

    div-float/2addr v7, v8

    sub-float v4, v6, v7

    .line 75
    .local v4, xPos:F
    mul-int v6, v2, v1

    add-int/2addr v6, v2

    int-to-float v5, v6

    .line 76
    .local v5, yPos:F
    sget-object v6, Lcom/cnlaunch/x431pro/widget/sortlistview/SideBar;->b:[Ljava/lang/String;

    aget-object v6, v6, v1

    iget-object v7, p0, Lcom/cnlaunch/x431pro/widget/sortlistview/SideBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v4, v5, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 78
    iget-object v6, p0, Lcom/cnlaunch/x431pro/widget/sortlistview/SideBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->reset()V

    .line 62
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 145
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 147
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/sortlistview/SideBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/cnlaunch/x431pro/utils/CommonUtils;->getScreenHeight(Landroid/content/Context;)I

    move-result v0

    .line 148
    .local v0, scheight:I
    invoke-virtual {p0, p2}, Lcom/cnlaunch/x431pro/widget/sortlistview/SideBar;->setLeft(I)V

    .line 149
    invoke-virtual {p0, p4}, Lcom/cnlaunch/x431pro/widget/sortlistview/SideBar;->setRight(I)V

    .line 150
    invoke-virtual {p0, p3}, Lcom/cnlaunch/x431pro/widget/sortlistview/SideBar;->setTop(I)V

    .line 151
    add-int/lit16 v1, v0, -0x82

    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/widget/sortlistview/SideBar;->setBottom(I)V

    .line 152
    return-void
.end method

.method public setOnTouchingLetterChangedListener(Lcom/cnlaunch/x431pro/widget/sortlistview/SideBar$OnTouchingLetterChangedListener;)V
    .locals 0
    .parameter "onTouchingLetterChangedListener"

    .prologue
    .line 129
    iput-object p1, p0, Lcom/cnlaunch/x431pro/widget/sortlistview/SideBar;->onTouchingLetterChangedListener:Lcom/cnlaunch/x431pro/widget/sortlistview/SideBar$OnTouchingLetterChangedListener;

    .line 130
    return-void
.end method

.method public setTextView(Landroid/widget/TextView;)V
    .locals 0
    .parameter "mTextDialog"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/cnlaunch/x431pro/widget/sortlistview/SideBar;->mTextDialog:Landroid/widget/TextView;

    .line 36
    return-void
.end method
