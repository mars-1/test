.class public Lcom/cnlaunch/golo3/utils/ClearEditText;
.super Landroid/widget/EditText;
.source "ClearEditText.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field private mClearDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/cnlaunch/golo3/utils/ClearEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 31
    const v0, 0x101006e

    invoke-direct {p0, p1, p2, v0}, Lcom/cnlaunch/golo3/utils/ClearEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    invoke-direct {p0}, Lcom/cnlaunch/golo3/utils/ClearEditText;->init()V

    .line 37
    return-void
.end method

.method private init()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 42
    invoke-virtual {p0}, Lcom/cnlaunch/golo3/utils/ClearEditText;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/cnlaunch/golo3/utils/ClearEditText;->mClearDrawable:Landroid/graphics/drawable/Drawable;

    .line 43
    iget-object v0, p0, Lcom/cnlaunch/golo3/utils/ClearEditText;->mClearDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 44
    invoke-virtual {p0}, Lcom/cnlaunch/golo3/utils/ClearEditText;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 45
    sget v1, Lcom/cnlaunch/golo3/message/R$drawable;->search_cancel:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 44
    iput-object v0, p0, Lcom/cnlaunch/golo3/utils/ClearEditText;->mClearDrawable:Landroid/graphics/drawable/Drawable;

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/golo3/utils/ClearEditText;->mClearDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/cnlaunch/golo3/utils/ClearEditText;->mClearDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/cnlaunch/golo3/utils/ClearEditText;->mClearDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 48
    invoke-virtual {p0, v3}, Lcom/cnlaunch/golo3/utils/ClearEditText;->setClearIconVisible(Z)V

    .line 49
    invoke-virtual {p0, p0}, Lcom/cnlaunch/golo3/utils/ClearEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 50
    invoke-virtual {p0, p0}, Lcom/cnlaunch/golo3/utils/ClearEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 51
    return-void
.end method

.method public static shakeAnimation(I)Landroid/view/animation/Animation;
    .locals 3
    .parameter "counts"

    .prologue
    const/4 v2, 0x0

    .line 134
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v1, 0x4120

    invoke-direct {v0, v2, v1, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 135
    .local v0, translateAnimation:Landroid/view/animation/Animation;
    new-instance v1, Landroid/view/animation/CycleInterpolator;

    int-to-float v2, p0

    invoke-direct {v1, v2}, Landroid/view/animation/CycleInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 136
    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 137
    return-object v0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 117
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 112
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    const/4 v0, 0x0

    .line 80
    if-eqz p2, :cond_1

    .line 81
    invoke-virtual {p0}, Lcom/cnlaunch/golo3/utils/ClearEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/cnlaunch/golo3/utils/ClearEditText;->setClearIconVisible(Z)V

    .line 85
    :goto_0
    return-void

    .line 83
    :cond_1
    invoke-virtual {p0, v0}, Lcom/cnlaunch/golo3/utils/ClearEditText;->setClearIconVisible(Z)V

    goto :goto_0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 105
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/cnlaunch/golo3/utils/ClearEditText;->setClearIconVisible(Z)V

    .line 106
    return-void

    .line 105
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 61
    invoke-virtual {p0}, Lcom/cnlaunch/golo3/utils/ClearEditText;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v1, v1, v2

    if-eqz v1, :cond_0

    .line 62
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 63
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p0}, Lcom/cnlaunch/golo3/utils/ClearEditText;->getWidth()I

    move-result v2

    .line 64
    invoke-virtual {p0}, Lcom/cnlaunch/golo3/utils/ClearEditText;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/cnlaunch/golo3/utils/ClearEditText;->mClearDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 65
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p0}, Lcom/cnlaunch/golo3/utils/ClearEditText;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/cnlaunch/golo3/utils/ClearEditText;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    .line 63
    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    .line 66
    .local v0, touchable:Z
    :goto_0
    if-eqz v0, :cond_0

    .line 67
    const-string/jumbo v1, ""

    invoke-virtual {p0, v1}, Lcom/cnlaunch/golo3/utils/ClearEditText;->setText(Ljava/lang/CharSequence;)V

    .line 72
    .end local v0           #touchable:Z
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/EditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 63
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected setClearIconVisible(Z)V
    .locals 5
    .parameter "visible"

    .prologue
    .line 93
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/cnlaunch/golo3/utils/ClearEditText;->mClearDrawable:Landroid/graphics/drawable/Drawable;

    .line 94
    .local v0, right:Landroid/graphics/drawable/Drawable;
    :goto_0
    invoke-virtual {p0}, Lcom/cnlaunch/golo3/utils/ClearEditText;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 95
    invoke-virtual {p0}, Lcom/cnlaunch/golo3/utils/ClearEditText;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {p0}, Lcom/cnlaunch/golo3/utils/ClearEditText;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x3

    aget-object v3, v3, v4

    .line 94
    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/cnlaunch/golo3/utils/ClearEditText;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 96
    return-void

    .line 93
    .end local v0           #right:Landroid/graphics/drawable/Drawable;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setShakeAnimation()V
    .locals 1

    .prologue
    .line 124
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/cnlaunch/golo3/utils/ClearEditText;->shakeAnimation(I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cnlaunch/golo3/utils/ClearEditText;->setAnimation(Landroid/view/animation/Animation;)V

    .line 125
    return-void
.end method
