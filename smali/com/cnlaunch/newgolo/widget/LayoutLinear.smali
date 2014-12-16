.class public Lcom/cnlaunch/newgolo/widget/LayoutLinear;
.super Landroid/widget/LinearLayout;
.source "LayoutLinear.java"


# instance fields
.field private display:Landroid/util/DisplayMetrics;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 21
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    return-void
.end method

.method private getDisplayHeight()I
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/cnlaunch/newgolo/widget/LayoutLinear;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-lez v0, :cond_0

    .line 45
    invoke-direct {p0}, Lcom/cnlaunch/newgolo/widget/LayoutLinear;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 47
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x320

    goto :goto_0
.end method

.method private getDisplayMetrics()Landroid/util/DisplayMetrics;
    .locals 3

    .prologue
    .line 30
    iget-object v1, p0, Lcom/cnlaunch/newgolo/widget/LayoutLinear;->display:Landroid/util/DisplayMetrics;

    if-nez v1, :cond_0

    .line 31
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v1, p0, Lcom/cnlaunch/newgolo/widget/LayoutLinear;->display:Landroid/util/DisplayMetrics;

    .line 32
    invoke-virtual {p0}, Lcom/cnlaunch/newgolo/widget/LayoutLinear;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 33
    .local v0, wm:Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    iget-object v2, p0, Lcom/cnlaunch/newgolo/widget/LayoutLinear;->display:Landroid/util/DisplayMetrics;

    invoke-virtual {v1, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 35
    .end local v0           #wm:Landroid/view/WindowManager;
    :cond_0
    iget-object v1, p0, Lcom/cnlaunch/newgolo/widget/LayoutLinear;->display:Landroid/util/DisplayMetrics;

    return-object v1
.end method

.method private getDisplayWidth()I
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/cnlaunch/newgolo/widget/LayoutLinear;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    if-lez v0, :cond_0

    .line 39
    invoke-direct {p0}, Lcom/cnlaunch/newgolo/widget/LayoutLinear;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 41
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
    .line 51
    invoke-direct {p0}, Lcom/cnlaunch/newgolo/widget/LayoutLinear;->getDisplayWidth()I

    move-result v6

    .line 52
    .local v6, width:I
    invoke-direct {p0}, Lcom/cnlaunch/newgolo/widget/LayoutLinear;->getDisplayHeight()I

    move-result v2

    .line 53
    .local v2, height:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/cnlaunch/newgolo/widget/LayoutLinear;->getChildCount()I

    move-result v7

    if-lt v3, v7, :cond_0

    .line 71
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 72
    return-void

    .line 54
    :cond_0
    invoke-virtual {p0, v3}, Lcom/cnlaunch/newgolo/widget/LayoutLinear;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 56
    .local v5, view:Landroid/view/View;
    :try_start_0
    invoke-virtual {v5}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 57
    .local v0, content:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 58
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 59
    .local v4, json:Lorg/json/JSONObject;
    const-string/jumbo v7, "base"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 60
    const-string/jumbo v7, "base"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "width"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 61
    invoke-virtual {p0, v5, v4, v6}, Lcom/cnlaunch/newgolo/widget/LayoutLinear;->resize(Landroid/view/View;Lorg/json/JSONObject;I)V

    .line 53
    .end local v0           #content:Ljava/lang/String;
    .end local v4           #json:Lorg/json/JSONObject;
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 62
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

    .line 63
    invoke-virtual {p0, v5, v4, v2}, Lcom/cnlaunch/newgolo/widget/LayoutLinear;->resize(Landroid/view/View;Lorg/json/JSONObject;I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 67
    .end local v0           #content:Ljava/lang/String;
    .end local v4           #json:Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 68
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
    .line 75
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 76
    .local v0, params:Landroid/widget/LinearLayout$LayoutParams;
    const-string/jumbo v1, "width"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 77
    int-to-double v1, p3

    const-string/jumbo v3, "width"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    mul-double/2addr v1, v3

    double-to-int v1, v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 79
    :cond_0
    const-string/jumbo v1, "height"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 80
    int-to-double v1, p3

    const-string/jumbo v3, "height"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    mul-double/2addr v1, v3

    double-to-int v1, v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 82
    :cond_1
    const-string/jumbo v1, "left"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 83
    int-to-double v1, p3

    const-string/jumbo v3, "left"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    mul-double/2addr v1, v3

    double-to-int v1, v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 85
    :cond_2
    const-string/jumbo v1, "right"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 86
    int-to-double v1, p3

    const-string/jumbo v3, "right"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    mul-double/2addr v1, v3

    double-to-int v1, v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 88
    :cond_3
    const-string/jumbo v1, "top"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 89
    int-to-double v1, p3

    const-string/jumbo v3, "top"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    mul-double/2addr v1, v3

    double-to-int v1, v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 91
    :cond_4
    const-string/jumbo v1, "bottom"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 92
    int-to-double v1, p3

    const-string/jumbo v3, "bottom"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    mul-double/2addr v1, v3

    double-to-int v1, v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 94
    :cond_5
    const-string/jumbo v1, "minWidth"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 95
    int-to-double v1, p3

    const-string/jumbo v3, "minWidth"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    mul-double/2addr v1, v3

    double-to-int v1, v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setMinimumWidth(I)V

    .line 97
    :cond_6
    const-string/jumbo v1, "minHeight"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 98
    int-to-double v1, p3

    const-string/jumbo v3, "minHeight"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    mul-double/2addr v1, v3

    double-to-int v1, v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 100
    :cond_7
    const-string/jumbo v1, "textSize"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    move-object v1, p1

    .line 101
    check-cast v1, Landroid/widget/TextView;

    const/4 v2, 0x0

    int-to-double v3, p3

    const-string/jumbo v5, "textSize"

    invoke-virtual {p2, v5}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v5

    mul-double/2addr v3, v5

    double-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 103
    :cond_8
    const-string/jumbo v1, "maxW"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    move-object v1, p1

    .line 104
    check-cast v1, Landroid/widget/TextView;

    int-to-double v2, p3

    const-string/jumbo v4, "maxW"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 106
    :cond_9
    const-string/jumbo v1, "paddingRight"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 107
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

    .line 109
    :cond_a
    const-string/jumbo v1, "paddingLeft"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 110
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

    .line 112
    :cond_b
    const-string/jumbo v1, "paddingBottom"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 113
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

    .line 115
    :cond_c
    const-string/jumbo v1, "paddingTop"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 116
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

    .line 118
    :cond_d
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 119
    return-void
.end method
