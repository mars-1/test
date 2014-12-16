.class public Lcom/cnlaunch/newgolo/widget/LayoutRelative;
.super Landroid/widget/RelativeLayout;
.source "LayoutRelative.java"


# instance fields
.field private display:Landroid/util/DisplayMetrics;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 21
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    return-void
.end method

.method private getDisplayHeight()I
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/cnlaunch/newgolo/widget/LayoutRelative;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-lez v0, :cond_0

    .line 49
    invoke-direct {p0}, Lcom/cnlaunch/newgolo/widget/LayoutRelative;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 51
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x320

    goto :goto_0
.end method

.method private getDisplayMetrics()Landroid/util/DisplayMetrics;
    .locals 3

    .prologue
    .line 34
    iget-object v1, p0, Lcom/cnlaunch/newgolo/widget/LayoutRelative;->display:Landroid/util/DisplayMetrics;

    if-nez v1, :cond_0

    .line 35
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v1, p0, Lcom/cnlaunch/newgolo/widget/LayoutRelative;->display:Landroid/util/DisplayMetrics;

    .line 36
    invoke-virtual {p0}, Lcom/cnlaunch/newgolo/widget/LayoutRelative;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 37
    .local v0, wm:Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    iget-object v2, p0, Lcom/cnlaunch/newgolo/widget/LayoutRelative;->display:Landroid/util/DisplayMetrics;

    invoke-virtual {v1, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 39
    .end local v0           #wm:Landroid/view/WindowManager;
    :cond_0
    iget-object v1, p0, Lcom/cnlaunch/newgolo/widget/LayoutRelative;->display:Landroid/util/DisplayMetrics;

    return-object v1
.end method

.method private getDisplayWidth()I
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/cnlaunch/newgolo/widget/LayoutRelative;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    if-lez v0, :cond_0

    .line 43
    invoke-direct {p0}, Lcom/cnlaunch/newgolo/widget/LayoutRelative;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 45
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x1e0

    goto :goto_0
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 9
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/cnlaunch/newgolo/widget/LayoutRelative;->getDisplayWidth()I

    move-result v6

    .line 57
    .local v6, width:I
    invoke-direct {p0}, Lcom/cnlaunch/newgolo/widget/LayoutRelative;->getDisplayHeight()I

    move-result v2

    .line 58
    .local v2, height:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/cnlaunch/newgolo/widget/LayoutRelative;->getChildCount()I

    move-result v7

    if-lt v3, v7, :cond_0

    .line 76
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 77
    return-void

    .line 59
    :cond_0
    invoke-virtual {p0, v3}, Lcom/cnlaunch/newgolo/widget/LayoutRelative;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 61
    .local v5, view:Landroid/view/View;
    :try_start_0
    invoke-virtual {v5}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 62
    .local v0, content:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 63
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 64
    .local v4, json:Lorg/json/JSONObject;
    const-string/jumbo v7, "base"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 65
    const-string/jumbo v7, "base"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "width"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 66
    invoke-virtual {p0, v5, v4, v6}, Lcom/cnlaunch/newgolo/widget/LayoutRelative;->resize(Landroid/view/View;Lorg/json/JSONObject;I)V

    .line 58
    .end local v0           #content:Ljava/lang/String;
    .end local v4           #json:Lorg/json/JSONObject;
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 67
    .restart local v0       #content:Ljava/lang/String;
    .restart local v4       #json:Lorg/json/JSONObject;
    :cond_2
    const-string/jumbo v7, "base"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "height"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 68
    invoke-virtual {p0, v5, v4, v2}, Lcom/cnlaunch/newgolo/widget/LayoutRelative;->resize(Landroid/view/View;Lorg/json/JSONObject;I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 72
    .end local v0           #content:Ljava/lang/String;
    .end local v4           #json:Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 73
    .local v1, e:Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method protected resize(Landroid/view/View;Lorg/json/JSONObject;I)V
    .locals 8
    .parameter "view"
    .parameter "json"
    .parameter "size"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 80
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 81
    .local v0, params:Landroid/widget/RelativeLayout$LayoutParams;
    const-string/jumbo v1, "width"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    int-to-double v1, p3

    const-string/jumbo v3, "width"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    mul-double/2addr v1, v3

    double-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 84
    :cond_0
    const-string/jumbo v1, "height"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 85
    int-to-double v1, p3

    const-string/jumbo v3, "height"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    mul-double/2addr v1, v3

    double-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 87
    :cond_1
    const-string/jumbo v1, "left"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 88
    int-to-double v1, p3

    const-string/jumbo v3, "left"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    mul-double/2addr v1, v3

    double-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 90
    :cond_2
    const-string/jumbo v1, "right"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 91
    int-to-double v1, p3

    const-string/jumbo v3, "right"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    mul-double/2addr v1, v3

    double-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 93
    :cond_3
    const-string/jumbo v1, "top"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 94
    int-to-double v1, p3

    const-string/jumbo v3, "top"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    mul-double/2addr v1, v3

    double-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 96
    :cond_4
    const-string/jumbo v1, "bottom"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 97
    int-to-double v1, p3

    const-string/jumbo v3, "bottom"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    mul-double/2addr v1, v3

    double-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 99
    :cond_5
    const-string/jumbo v1, "minWidth"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 100
    int-to-double v1, p3

    const-string/jumbo v3, "minWidth"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    mul-double/2addr v1, v3

    double-to-int v1, v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setMinimumWidth(I)V

    .line 102
    :cond_6
    const-string/jumbo v1, "minHeight"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 103
    int-to-double v1, p3

    const-string/jumbo v3, "minHeight"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    mul-double/2addr v1, v3

    double-to-int v1, v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 105
    :cond_7
    const-string/jumbo v1, "textSize"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    move-object v1, p1

    .line 106
    check-cast v1, Landroid/widget/TextView;

    const/4 v2, 0x0

    int-to-double v3, p3

    const-string/jumbo v5, "textSize"

    invoke-virtual {p2, v5}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v5

    mul-double/2addr v3, v5

    double-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 108
    :cond_8
    const-string/jumbo v1, "maxW"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    move-object v1, p1

    .line 109
    check-cast v1, Landroid/widget/TextView;

    int-to-double v2, p3

    const-string/jumbo v4, "maxW"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 111
    :cond_9
    const-string/jumbo v1, "paddingRight"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 112
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    int-to-double v3, p3

    const-string/jumbo v5, "paddingRight"

    invoke-virtual {p2, v5}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v5

    mul-double/2addr v3, v5

    double-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 114
    :cond_a
    const-string/jumbo v1, "paddingLeft"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 115
    int-to-double v1, p3

    const-string/jumbo v3, "paddingLeft"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    mul-double/2addr v1, v3

    double-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 117
    :cond_b
    const-string/jumbo v1, "paddingBottom"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 118
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    int-to-double v4, p3

    const-string/jumbo v6, "paddingBottom"

    invoke-virtual {p2, v6}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    mul-double/2addr v4, v6

    double-to-int v4, v4

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 120
    :cond_c
    const-string/jumbo v1, "paddingTop"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 121
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    int-to-double v2, p3

    const-string/jumbo v4, "paddingTop"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 123
    :cond_d
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 124
    return-void
.end method
