.class public Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;
.super Landroid/widget/CheckBox;
.source "SwitchButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton$PerformClick;,
        Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton$SwitchAnimation;
    }
.end annotation


# instance fields
.field private final EXTENDED_OFFSET_Y:F

.field private final MAX_ALPHA:I

.field private final VELOCITY:F

.field private mAlpha:I

.field private mAnimatedVelocity:F

.field private mAnimating:Z

.field private mAnimationPosition:F

.field private mBottom:Landroid/graphics/Bitmap;

.field private mBroadcasting:Z

.field private mBtnInitPos:F

.field private mBtnNormal:Landroid/graphics/Bitmap;

.field private mBtnOffPos:F

.field private mBtnOnPos:F

.field private mBtnPos:F

.field private mBtnPressed:Landroid/graphics/Bitmap;

.field private mBtnWidth:F

.field private mChecked:Z

.field private mClickTimeout:I

.field private mCurBtnPic:Landroid/graphics/Bitmap;

.field private mExtendOffsetY:F

.field private mFirstDownX:F

.field private mFirstDownY:F

.field private mFrame:Landroid/graphics/Bitmap;

.field private mMask:Landroid/graphics/Bitmap;

.field private mMaskHeight:F

.field private mMaskWidth:F

.field private mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mOnCheckedChangeWidgetListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mPaint:Landroid/graphics/Paint;

.field private mParent:Landroid/view/ViewParent;

.field private mPerformClick:Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton$PerformClick;

.field private mRealPos:F

.field private mSaveLayerRectF:Landroid/graphics/RectF;

.field private mTouchSlop:I

.field private mTurningOn:Z

.field private mVelocity:F

.field private mXfermode:Landroid/graphics/PorterDuffXfermode;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 108
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 109
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 104
    const v0, 0x101006c

    invoke-direct {p0, p1, p2, v0}, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 105
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/16 v0, 0xff

    .line 112
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 73
    iput v0, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->MAX_ALPHA:I

    .line 75
    iput v0, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->mAlpha:I

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->mChecked:Z

    .line 91
    const/high16 v0, 0x43af

    iput v0, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->VELOCITY:F

    .line 95
    const/high16 v0, 0x4170

    iput v0, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->EXTENDED_OFFSET_Y:F

    .line 113
    invoke-direct {p0, p1}, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->initView(Landroid/content/Context;)V

    .line 114
    return-void
.end method

.method static synthetic access$0(Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;)Z
    .locals 1
    .parameter

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->mAnimating:Z

    return v0
.end method

.method static synthetic access$1(Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;)V
    .locals 0
    .parameter

    .prologue
    .line 367
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->doAnimation()V

    return-void
.end method

.method private attemptClaimDrag()V
    .locals 2

    .prologue
    .line 303
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->mParent:Landroid/view/ViewParent;

    .line 304
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->mParent:Landroid/view/ViewParent;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 307
    :cond_0
    return-void
.end method

.method private doAnimation()V
    .locals 3

    .prologue
    .line 368
    iget v0, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->mAnimationPosition:F

    iget v1, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->mAnimatedVelocity:F

    const/high16 v2, 0x4180

    mul-float/2addr v1, v2

    const/high16 v2, 0x447a

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->mAnimationPosition:F

    .line 369
    iget v0, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->mAnimationPosition:F

    iget v1, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->mBtnOnPos:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    .line 370
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->stopAnimation()V

    .line 371
    iget v0, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->mBtnOnPos:F

    iput v0, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->mAnimationPosition:F

    .line 372
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->setCheckedDelayed(Z)V

    .line 378
    :cond_0
    :goto_0
    iget v0, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->mAnimationPosition:F

    invoke-direct {p0, v0}, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->moveView(F)V

    .line 379
    return-void

    .line 373
    :cond_1
    iget v0, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->mAnimationPosition:F

    iget v1, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->mBtnOffPos:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 374
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->stopAnimation()V

    .line 375
    iget v0, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->mBtnOffPos:F

    iput v0, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->mAnimationPosition:F

    .line 376
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->setCheckedDelayed(Z)V

    goto :goto_0
.end method

.method private getRealPos(F)F
    .locals 2
    .parameter "btnPos"

    .prologue
    .line 316
    iget v0, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->mBtnWidth:F

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    sub-float v0, p1, v0

    return v0
.end method

.method private initView(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    const/high16 v5, 0x4000

    const/high16 v4, 0x3f00

    .line 117
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->mPaint:Landroid/graphics/Paint;

    .line 118
    iget-object v2, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->mPaint:Landroid/graphics/Paint;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 119
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 122
    .local v1, resources:Landroid/content/res/Resources;
    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v2

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->mClickTimeout:I

    .line 123
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->mTouchSlop:I

    .line 126
    const v2, 0x7f02002c

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->mBottom:Landroid/graphics/Bitmap;

    .line 127
    const v2, 0x7f02007f

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->mBtnPressed:Landroid/graphics/Bitmap;

    .line 128
    const v2, 0x7f0200ad

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->mBtnNormal:Landroid/graphics/Bitmap;

    .line 129
    const v2, 0x7f0201f8

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->mFrame:Landroid/graphics/Bitmap;

    .line 130
    const v2, 0x7f02040b

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->mMask:Landroid/graphics/Bitmap;

    .line 131
    iget-object v2, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->mBtnNormal:Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->mCurBtnPic:Landroid/graphics/Bitmap;

    .line 133
    iget-object v2, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->mBtnPressed:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->mBtnWidth:F

    .line 134
    iget-object v2, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->mMask:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->mMaskWidth:F

    .line 135
    iget-object v2, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->mMask:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->mMaskHeight:F

    .line 137
    iget v2, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->mBtnWidth:F

    div-float/2addr v2, v5

    iput v2, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->mBtnOffPos:F

    .line 138
    iget v2, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->mMaskWidth:F

    iget v3, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->mBtnWidth:F

    div-float/2addr v3, v5

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->mBtnOnPos:F

    .line 140
    iget-boolean v2, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->mChecked:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->mBtnOnPos:F

    :goto_0
    iput v2, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->mBtnPos:F

    .line 141
    iget v2, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->mBtnPos:F

    invoke-direct {p0, v2}, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->getRealPos(F)F

    move-result v2

    iput v2, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->mRealPos:F

    .line 143
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    .line 144
    .local v0, density:F
    const/high16 v2, 0x43af

    mul-float/2addr v2, v0

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-float v2, v2

    iput v2, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->mVelocity:F

    .line 145
    const/high16 v2, 0x4170

    mul-float/2addr v2, v0

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-float v2, v2

    iput v2, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->mExtendOffsetY:F

    .line 147
    new-instance v2, Landroid/graphics/RectF;

    const/4 v3, 0x0

    iget v4, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->mExtendOffsetY:F

    iget-object v5, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->mMask:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->mMask:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    iget v7, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->mExtendOffsetY:F

    add-float/2addr v6, v7

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v2, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->mSaveLayerRectF:Landroid/graphics/RectF;

    .line 148
    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v2, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->mXfermode:Landroid/graphics/PorterDuffXfermode;

    .line 149
    return-void

    .line 140
    .end local v0           #density:F
    :cond_0
    iget v2, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->mBtnOffPos:F

    goto :goto_0
.end method

.method private moveView(F)V
    .locals 1
    .parameter "position"

    .prologue
    .line 382
    iput p1, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->mBtnPos:F

    .line 383
    iget v0, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->mBtnPos:F

    invoke-direct {p0, v0}, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->getRealPos(F)F

    move-result v0

    iput v0, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->mRealPos:F

    .line 384
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->invalidate()V

    .line 385
    return-void
.end method

.method private setCheckedDelayed(Z)V
    .locals 3
    .parameter "checked"

    .prologue
    .line 171
    new-instance v0, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton$1;

    invoke-direct {v0, p0, p1}, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton$1;-><init>(Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;Z)V

    .line 177
    const-wide/16 v1, 0xa

    .line 171
    invoke-virtual {p0, v0, v1, v2}, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 178
    return-void
.end method

.method private startAnimation(Z)V
    .locals 2
    .parameter "turnOn"

    .prologue
    .line 344
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->mAnimating:Z

    .line 345
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->mVelocity:F

    neg-float v0, v0

    :goto_0
    iput v0, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->mAnimatedVelocity:F

    .line 346
    iget v0, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->mBtnPos:F

    iput v0, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->mAnimationPosition:F

    .line 348
    new-instance v0, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton$SwitchAnimation;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton$SwitchAnimation;-><init>(Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton$SwitchAnimation;)V

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton$SwitchAnimation;->run()V

    .line 349
    return-void

    .line 345
    :cond_0
    iget v0, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->mVelocity:F

    goto :goto_0
.end method

.method private stopAnimation()V
    .locals 1

    .prologue
    .line 352
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->mAnimating:Z

    .line 353
    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    .prologue
    .line 158
    iget-boolean v0, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->mChecked:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "canvas"

    .prologue
    const/4 v4, 0x0

    .line 321
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->mSaveLayerRectF:Landroid/graphics/RectF;

    iget v1, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->mAlpha:I

    const/16 v2, 0x1f

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->saveLayerAlpha(Landroid/graphics/RectF;II)I

    .line 324
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->mMask:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->mExtendOffsetY:F

    iget-object v2, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 325
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->mXfermode:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 328
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->mBottom:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->mRealPos:F

    iget v2, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->mExtendOffsetY:F

    iget-object v3, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 329
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 331
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->mFrame:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->mExtendOffsetY:F

    iget-object v2, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 334
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->mCurBtnPic:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->mRealPos:F

    iget v2, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->mExtendOffsetY:F

    iget-object v3, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 335
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 336
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 340
    iget v0, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->mMaskWidth:F

    float-to-int v0, v0

    iget v1, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->mMaskHeight:F

    const/high16 v2, 0x4000

    iget v3, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->mExtendOffsetY:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->setMeasuredDimension(II)V

    .line 341
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .parameter "event"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 240
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 241
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    .line 242
    .local v4, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .line 243
    .local v5, y:F
    iget v8, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->mFirstDownX:F

    sub-float v8, v4, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 244
    .local v1, deltaX:F
    iget v8, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->mFirstDownY:F

    sub-float v8, v5, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 245
    .local v2, deltaY:F
    packed-switch v0, :pswitch_data_0

    .line 282
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->invalidate()V

    .line 283
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->isEnabled()Z

    move-result v6

    return v6

    .line 247
    :pswitch_0
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->attemptClaimDrag()V

    .line 248
    iput v4, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->mFirstDownX:F

    .line 249
    iput v5, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->mFirstDownY:F

    .line 250
    iget-object v6, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->mBtnPressed:Landroid/graphics/Bitmap;

    iput-object v6, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->mCurBtnPic:Landroid/graphics/Bitmap;

    .line 251
    iget-boolean v6, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->mChecked:Z

    if-eqz v6, :cond_1

    iget v6, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->mBtnOnPos:F

    :goto_1
    iput v6, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->mBtnInitPos:F

    goto :goto_0

    :cond_1
    iget v6, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->mBtnOffPos:F

    goto :goto_1

    .line 254
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v10

    sub-long/2addr v8, v10

    long-to-float v3, v8

    .line 255
    .local v3, time:F
    iget v8, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->mBtnInitPos:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    add-float/2addr v8, v9

    iget v9, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->mFirstDownX:F

    sub-float/2addr v8, v9

    iput v8, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->mBtnPos:F

    .line 256
    iget v8, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->mBtnPos:F

    iget v9, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->mBtnOffPos:F

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_2

    .line 257
    iget v8, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->mBtnOffPos:F

    iput v8, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->mBtnPos:F

    .line 259
    :cond_2
    iget v8, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->mBtnPos:F

    iget v9, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->mBtnOnPos:F

    cmpg-float v8, v8, v9

    if-gtz v8, :cond_3

    .line 260
    iget v8, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->mBtnOnPos:F

    iput v8, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->mBtnPos:F

    .line 262
    :cond_3
    iget v8, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->mBtnPos:F

    iget v9, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->mBtnOffPos:F

    iget v10, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->mBtnOnPos:F

    sub-float/2addr v9, v10

    const/high16 v10, 0x4000

    div-float/2addr v9, v10

    iget v10, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->mBtnOnPos:F

    add-float/2addr v9, v10

    cmpl-float v8, v8, v9

    if-lez v8, :cond_4

    :goto_2
    iput-boolean v6, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->mTurningOn:Z

    .line 264
    iget v6, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->mBtnPos:F

    invoke-direct {p0, v6}, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->getRealPos(F)F

    move-result v6

    iput v6, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->mRealPos:F

    goto :goto_0

    :cond_4
    move v6, v7

    .line 262
    goto :goto_2

    .line 267
    .end local v3           #time:F
    :pswitch_2
    iget-object v8, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->mBtnNormal:Landroid/graphics/Bitmap;

    iput-object v8, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->mCurBtnPic:Landroid/graphics/Bitmap;

    .line 268
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v10

    sub-long/2addr v8, v10

    long-to-float v3, v8

    .line 269
    .restart local v3       #time:F
    iget v8, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->mTouchSlop:I

    int-to-float v8, v8

    cmpg-float v8, v2, v8

    if-gez v8, :cond_6

    iget v8, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->mTouchSlop:I

    int-to-float v8, v8

    cmpg-float v8, v1, v8

    if-gez v8, :cond_6

    iget v8, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->mClickTimeout:I

    int-to-float v8, v8

    cmpg-float v8, v3, v8

    if-gez v8, :cond_6

    .line 270
    iget-object v6, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->mPerformClick:Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton$PerformClick;

    if-nez v6, :cond_5

    .line 271
    new-instance v6, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton$PerformClick;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton$PerformClick;-><init>(Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton$PerformClick;)V

    iput-object v6, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->mPerformClick:Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton$PerformClick;

    .line 273
    :cond_5
    iget-object v6, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->mPerformClick:Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton$PerformClick;

    invoke-virtual {p0, v6}, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->post(Ljava/lang/Runnable;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 274
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->performClick()Z

    goto/16 :goto_0

    .line 277
    :cond_6
    iget-boolean v8, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->mTurningOn:Z

    if-eqz v8, :cond_7

    :goto_3
    invoke-direct {p0, v7}, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->startAnimation(Z)V

    goto/16 :goto_0

    :cond_7
    move v7, v6

    goto :goto_3

    .line 245
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public performClick()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 294
    iget-boolean v0, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->mChecked:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->startAnimation(Z)V

    .line 295
    return v1

    :cond_0
    move v0, v1

    .line 294
    goto :goto_0
.end method

.method public setChecked(Z)V
    .locals 2
    .parameter "checked"

    .prologue
    .line 190
    iget-boolean v0, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->mChecked:Z

    if-eq v0, p1, :cond_0

    .line 191
    iput-boolean p1, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->mChecked:Z

    .line 193
    if-eqz p1, :cond_1

    iget v0, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->mBtnOnPos:F

    :goto_0
    iput v0, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->mBtnPos:F

    .line 194
    iget v0, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->mBtnPos:F

    invoke-direct {p0, v0}, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->getRealPos(F)F

    move-result v0

    iput v0, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->mRealPos:F

    .line 195
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->invalidate()V

    .line 199
    iget-boolean v0, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->mBroadcasting:Z

    if-eqz v0, :cond_2

    .line 213
    :cond_0
    :goto_1
    return-void

    .line 193
    :cond_1
    iget v0, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->mBtnOffPos:F

    goto :goto_0

    .line 203
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->mBroadcasting:Z

    .line 204
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    if-eqz v0, :cond_3

    .line 205
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    iget-boolean v1, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->mChecked:Z

    invoke-interface {v0, p0, v1}, Landroid/widget/CompoundButton$OnCheckedChangeListener;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    .line 207
    :cond_3
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->mOnCheckedChangeWidgetListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    if-eqz v0, :cond_4

    .line 208
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->mOnCheckedChangeWidgetListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    iget-boolean v1, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->mChecked:Z

    invoke-interface {v0, p0, v1}, Landroid/widget/CompoundButton$OnCheckedChangeListener;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    .line 211
    :cond_4
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->mBroadcasting:Z

    goto :goto_1
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 153
    if-eqz p1, :cond_0

    const/16 v0, 0xff

    :goto_0
    iput v0, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->mAlpha:I

    .line 154
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 155
    return-void

    .line 153
    :cond_0
    const/16 v0, 0x7f

    goto :goto_0
.end method

.method public setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 223
    iput-object p1, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 224
    return-void
.end method

.method setOnCheckedChangeWidgetListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 235
    iput-object p1, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->mOnCheckedChangeWidgetListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 236
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 162
    iget-boolean v0, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->mChecked:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->setChecked(Z)V

    .line 163
    return-void

    .line 162
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
