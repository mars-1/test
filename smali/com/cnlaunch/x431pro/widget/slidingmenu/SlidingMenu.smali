.class public Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;
.super Landroid/widget/RelativeLayout;
.source "SlidingMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu$CanvasTransformer;,
        Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu$OnCloseListener;,
        Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu$OnClosedListener;,
        Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu$OnOpenListener;,
        Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu$OnOpenedListener;,
        Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu$SavedState;
    }
.end annotation


# static fields
.field public static final LEFT:I = 0x0

.field public static final LEFT_RIGHT:I = 0x2

.field public static final RIGHT:I = 0x1

.field public static final SLIDING_CONTENT:I = 0x1

.field public static final SLIDING_WINDOW:I = 0x0

.field public static final TOUCHMODE_FULLSCREEN:I = 0x1

.field public static final TOUCHMODE_MARGIN:I = 0x0

.field public static final TOUCHMODE_NONE:I = 0x2


# instance fields
.field private mCloseListener:Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu$OnCloseListener;

.field private mOpenListener:Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu$OnOpenListener;

.field private mViewAbove:Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;

.field private mViewBehind:Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;


# direct methods
.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 1
    .parameter "activity"
    .parameter "slideStyle"

    .prologue
    .line 173
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 174
    invoke-virtual {p0, p1, p2}, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;->attachToActivity(Landroid/app/Activity;I)V

    .line 175
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 163
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 164
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 184
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 185
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 21
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 195
    invoke-direct/range {p0 .. p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 197
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v19, -0x1

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v4, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 198
    .local v4, behindParams:Landroid/widget/RelativeLayout$LayoutParams;
    new-instance v19, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;->mViewBehind:Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;

    .line 199
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;->mViewBehind:Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v4}, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 200
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v19, -0x1

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v3, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 201
    .local v3, aboveParams:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v19, 0xb

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 202
    new-instance v19, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;->mViewAbove:Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;

    .line 203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;->mViewAbove:Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v3}, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 205
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;->mViewAbove:Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;->mViewBehind:Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->setCustomViewBehind(Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;)V

    .line 206
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;->mViewBehind:Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;->mViewAbove:Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;->setCustomViewAbove(Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;)V

    .line 207
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;->mViewAbove:Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;

    move-object/from16 v19, v0

    new-instance v20, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu$1;

    invoke-direct/range {v20 .. v21}, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu$1;-><init>(Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;)V

    invoke-virtual/range {v19 .. v20}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->setOnPageChangeListener(Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove$OnPageChangeListener;)V

    .line 224
    sget-object v19, Lcom/ifoer/expedition/pro/R$styleable;->SlidingMenu:[I

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v14

    .line 226
    .local v14, ta:Landroid/content/res/TypedArray;
    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v14, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    .line 227
    .local v7, mode:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;->setMode(I)V

    .line 228
    const/16 v19, 0x1

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v14, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v16

    .line 229
    .local v16, viewAbove:I
    const/16 v19, -0x1

    move/from16 v0, v16

    move/from16 v1, v19

    if-eq v0, v1, :cond_0

    .line 230
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;->setContent(I)V

    .line 234
    :goto_0
    const/16 v19, 0x2

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v14, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v17

    .line 235
    .local v17, viewBehind:I
    const/16 v19, -0x1

    move/from16 v0, v17

    move/from16 v1, v19

    if-eq v0, v1, :cond_1

    .line 236
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;->setMenu(I)V

    .line 240
    :goto_1
    const/16 v19, 0x6

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v14, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v15

    .line 241
    .local v15, touchModeAbove:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;->setTouchModeAbove(I)V

    .line 243
    const/16 v19, 0x3

    const/high16 v20, -0x4080

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v14, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v19

    move/from16 v0, v19

    float-to-int v8, v0

    .line 244
    .local v8, offsetBehind:I
    const/16 v19, 0x4

    const/high16 v20, -0x4080

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v14, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v18, v0

    .line 245
    .local v18, widthBehind:I
    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v8, v0, :cond_2

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_2

    .line 246
    new-instance v19, Ljava/lang/IllegalStateException;

    const-string/jumbo v20, "Cannot set both behindOffset and behindWidth for a SlidingMenu"

    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 232
    .end local v8           #offsetBehind:I
    .end local v15           #touchModeAbove:I
    .end local v17           #viewBehind:I
    .end local v18           #widthBehind:I
    :cond_0
    new-instance v19, Landroid/widget/FrameLayout;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;->setContent(Landroid/view/View;)V

    goto :goto_0

    .line 238
    .restart local v17       #viewBehind:I
    :cond_1
    new-instance v19, Landroid/widget/FrameLayout;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;->setMenu(Landroid/view/View;)V

    goto :goto_1

    .line 247
    .restart local v8       #offsetBehind:I
    .restart local v15       #touchModeAbove:I
    .restart local v18       #widthBehind:I
    :cond_2
    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v8, v0, :cond_5

    .line 248
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;->setBehindOffset(I)V

    .line 253
    :goto_2
    const/16 v19, 0x5

    const v20, 0x3ea8f5c3

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v14, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v9

    .line 254
    .local v9, scrollOffsetBehind:F
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;->setBehindScrollScale(F)V

    .line 255
    const/16 v19, 0x7

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v14, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v12

    .line 256
    .local v12, shadowRes:I
    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v12, v0, :cond_3

    .line 257
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;->setShadowDrawable(I)V

    .line 259
    :cond_3
    const/16 v19, 0x8

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v14, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v19

    move/from16 v0, v19

    float-to-int v13, v0

    .line 260
    .local v13, shadowWidth:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;->setShadowWidth(I)V

    .line 261
    const/16 v19, 0x9

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v14, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    .line 262
    .local v6, fadeEnabled:Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;->setFadeEnabled(Z)V

    .line 263
    const/16 v19, 0xa

    const v20, 0x3f28f5c3

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v14, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    .line 264
    .local v5, fadeDeg:F
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;->setFadeDegree(F)V

    .line 265
    const/16 v19, 0xb

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v14, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    .line 266
    .local v10, selectorEnabled:Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;->setSelectorEnabled(Z)V

    .line 267
    const/16 v19, 0xc

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v14, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    .line 268
    .local v11, selectorRes:I
    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v11, v0, :cond_4

    .line 269
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;->setSelectorDrawable(I)V

    .line 270
    :cond_4
    invoke-virtual {v14}, Landroid/content/res/TypedArray;->recycle()V

    .line 272
    const/high16 v19, -0x100

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;->setBackgroundColor(I)V

    .line 273
    return-void

    .line 249
    .end local v5           #fadeDeg:F
    .end local v6           #fadeEnabled:Z
    .end local v9           #scrollOffsetBehind:F
    .end local v10           #selectorEnabled:Z
    .end local v11           #selectorRes:I
    .end local v12           #shadowRes:I
    .end local v13           #shadowWidth:I
    :cond_5
    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_6

    .line 250
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;->setBehindWidth(I)V

    goto/16 :goto_2

    .line 252
    :cond_6
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;->setBehindOffset(I)V

    goto/16 :goto_2
.end method

.method static synthetic access$0(Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;)Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu$OnOpenListener;
    .locals 1
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;->mOpenListener:Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu$OnOpenListener;

    return-object v0
.end method

.method static synthetic access$1(Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;)Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu$OnCloseListener;
    .locals 1
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;->mCloseListener:Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu$OnCloseListener;

    return-object v0
.end method


# virtual methods
.method public addIgnoredView(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 786
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;->mViewAbove:Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;

    invoke-virtual {v0, p1}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->addIgnoredView(Landroid/view/View;)V

    .line 787
    return-void
.end method

.method public attachToActivity(Landroid/app/Activity;I)V
    .locals 11
    .parameter "activity"
    .parameter "slideStyle"

    .prologue
    const/4 v7, 0x1

    const/4 v10, -0x1

    const/4 v9, 0x0

    .line 276
    if-eqz p2, :cond_0

    if-eq p2, v7, :cond_0

    .line 277
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v7, "slideStyle must be either SLIDING_WINDOW or SLIDING_CONTENT"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 279
    :cond_0
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 280
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string/jumbo v7, "This SlidingMenu appears to already be attached"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 283
    :cond_1
    invoke-virtual {p1}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    new-array v7, v7, [I

    const v8, 0x1010054

    aput v8, v7, v9

    invoke-virtual {v6, v7}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 284
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v9, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 285
    .local v1, background:I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 287
    packed-switch p2, :pswitch_data_0

    .line 309
    :cond_2
    :goto_0
    return-void

    .line 289
    :pswitch_0
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 290
    .local v4, decor:Landroid/view/ViewGroup;
    invoke-virtual {v4, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 292
    .local v5, decorChild:Landroid/view/ViewGroup;
    invoke-virtual {v5, v1}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 293
    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 294
    invoke-virtual {p0, v5}, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;->setContent(Landroid/view/View;)V

    .line 295
    invoke-virtual {v4, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 299
    .end local v4           #decor:Landroid/view/ViewGroup;
    .end local v5           #decorChild:Landroid/view/ViewGroup;
    :pswitch_1
    const v6, 0x1020002

    invoke-virtual {p1, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 300
    .local v2, content:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 301
    .local v3, contentParent:Landroid/view/ViewGroup;
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 302
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v6, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, p0, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 303
    invoke-virtual {p0, v2}, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;->setContent(Landroid/view/View;)V

    .line 305
    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-nez v6, :cond_2

    .line 306
    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 287
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public clearIgnoredViews()V
    .locals 1

    .prologue
    .line 802
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;->mViewAbove:Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->clearIgnoredViews()V

    .line 803
    return-void
.end method

.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
    .locals 5
    .parameter "insets"

    .prologue
    .line 912
    iget v1, p1, Landroid/graphics/Rect;->left:I

    .line 913
    .local v1, leftPadding:I
    iget v2, p1, Landroid/graphics/Rect;->right:I

    .line 914
    .local v2, rightPadding:I
    iget v3, p1, Landroid/graphics/Rect;->top:I

    .line 915
    .local v3, topPadding:I
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 916
    .local v0, bottomPadding:I
    invoke-virtual {p0, v1, v3, v2, v0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;->setPadding(IIII)V

    .line 917
    const/4 v4, 0x1

    return v4
.end method

.method public getBehindOffset()I
    .locals 1

    .prologue
    .line 535
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;->mViewBehind:Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v0, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    return v0
.end method

.method public getBehindScrollScale()F
    .locals 1

    .prologue
    .line 622
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;->mViewBehind:Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;->getScrollScale()F

    move-result v0

    return v0
.end method

.method public getContent()Landroid/view/View;
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;->mViewAbove:Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->getContent()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getMenu()Landroid/view/View;
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;->mViewBehind:Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;->getContent()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 428
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;->mViewBehind:Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;->getMode()I

    move-result v0

    return v0
.end method

.method public getSecondaryMenu()Landroid/view/View;
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;->mViewBehind:Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;->getSecondaryContent()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getTouchModeAbove()I
    .locals 1

    .prologue
    .line 652
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;->mViewAbove:Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->getTouchMode()I

    move-result v0

    return v0
.end method

.method public isMenuShowing()Z
    .locals 2

    .prologue
    .line 526
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;->mViewAbove:Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->getCurrentItem()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;->mViewAbove:Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->getCurrentItem()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isSlidingEnabled()Z
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;->mViewAbove:Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->isSlidingEnabled()Z

    move-result v0

    return v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .parameter "state"

    .prologue
    .line 892
    instance-of v1, p1, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu$SavedState;

    if-nez v1, :cond_0

    .line 893
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 905
    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    .line 897
    check-cast v0, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu$SavedState;

    .line 898
    .local v0, ss:Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu$SavedState;
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/RelativeLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 900
    #getter for: Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu$SavedState;->mBehindShowing:Z
    invoke-static {v0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu$SavedState;->access$1(Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu$SavedState;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 901
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;->showMenu()V

    goto :goto_0

    .line 903
    :cond_1
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;->showContent()V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 882
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 883
    .local v1, superState:Landroid/os/Parcelable;
    new-instance v0, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu$SavedState;

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;->isMenuShowing()Z

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu$SavedState;-><init>(Landroid/os/Parcelable;Z)V

    .line 884
    .local v0, ss:Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu$SavedState;
    return-object v0
.end method

.method public removeIgnoredView(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 795
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;->mViewAbove:Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;

    invoke-virtual {v0, p1}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->removeIgnoredView(Landroid/view/View;)V

    .line 796
    return-void
.end method

.method public setAboveOffset(I)V
    .locals 1
    .parameter "i"

    .prologue
    .line 569
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;->mViewAbove:Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;

    invoke-virtual {v0, p1}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->setAboveOffset(I)V

    .line 570
    return-void
.end method

.method public setAboveOffsetRes(I)V
    .locals 2
    .parameter "resID"

    .prologue
    .line 578
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    .line 579
    .local v0, i:I
    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;->setAboveOffset(I)V

    .line 580
    return-void
.end method

.method public setBehindCanvasTransformer(Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu$CanvasTransformer;)V
    .locals 1
    .parameter "t"

    .prologue
    .line 643
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;->mViewBehind:Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;

    invoke-virtual {v0, p1}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;->setCanvasTransformer(Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu$CanvasTransformer;)V

    .line 644
    return-void
.end method

.method public setBehindOffset(I)V
    .locals 1
    .parameter "i"

    .prologue
    .line 549
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;->mViewBehind:Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;

    invoke-virtual {v0, p1}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;->setWidthOffset(I)V

    .line 550
    return-void
.end method

.method public setBehindOffsetRes(I)V
    .locals 2
    .parameter "resID"

    .prologue
    .line 559
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    .line 560
    .local v0, i:I
    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;->setBehindOffset(I)V

    .line 561
    return-void
.end method

.method public setBehindScrollScale(F)V
    .locals 2
    .parameter "f"

    .prologue
    .line 632
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    const/high16 v0, 0x3f80

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 633
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "ScrollScale must be between 0 and 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 634
    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;->mViewBehind:Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;

    invoke-virtual {v0, p1}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;->setScrollScale(F)V

    .line 635
    return-void
.end method

.method public setBehindWidth(I)V
    .locals 9
    .parameter "i"

    .prologue
    .line 590
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string/jumbo v8, "window"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/WindowManager;

    .line 591
    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 593
    .local v1, display:Landroid/view/Display;
    :try_start_0
    const-class v0, Landroid/view/Display;

    .line 594
    .local v0, cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v7, 0x1

    new-array v5, v7, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Landroid/graphics/Point;

    aput-object v8, v5, v7

    .line 595
    .local v5, parameterTypes:[Ljava/lang/Class;
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    .line 596
    .local v4, parameter:Landroid/graphics/Point;
    const-string/jumbo v7, "getSize"

    invoke-virtual {v0, v7, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 597
    .local v3, method:Ljava/lang/reflect/Method;
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    invoke-virtual {v3, v1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 598
    iget v6, v4, Landroid/graphics/Point;->x:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 602
    .end local v0           #cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v3           #method:Ljava/lang/reflect/Method;
    .end local v4           #parameter:Landroid/graphics/Point;
    .end local v5           #parameterTypes:[Ljava/lang/Class;
    .local v6, width:I
    :goto_0
    sub-int v7, v6, p1

    invoke-virtual {p0, v7}, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;->setBehindOffset(I)V

    .line 603
    return-void

    .line 599
    .end local v6           #width:I
    :catch_0
    move-exception v2

    .line 600
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v6

    .restart local v6       #width:I
    goto :goto_0
.end method

.method public setBehindWidthRes(I)V
    .locals 2
    .parameter "res"

    .prologue
    .line 612
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    .line 613
    .local v0, i:I
    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;->setBehindWidth(I)V

    .line 614
    return-void
.end method

.method public setContent(I)V
    .locals 2
    .parameter "res"

    .prologue
    .line 318
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;->setContent(Landroid/view/View;)V

    .line 319
    return-void
.end method

.method public setContent(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 327
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;->mViewAbove:Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;

    invoke-virtual {v0, p1}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->setContent(Landroid/view/View;)V

    .line 328
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;->showContent()V

    .line 329
    return-void
.end method

.method public setFadeDegree(F)V
    .locals 1
    .parameter "f"

    .prologue
    .line 741
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;->mViewBehind:Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;

    invoke-virtual {v0, p1}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;->setFadeDegree(F)V

    .line 742
    return-void
.end method

.method public setFadeEnabled(Z)V
    .locals 1
    .parameter "b"

    .prologue
    .line 731
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;->mViewBehind:Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;

    invoke-virtual {v0, p1}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;->setFadeEnabled(Z)V

    .line 732
    return-void
.end method

.method public setMenu(I)V
    .locals 2
    .parameter "res"

    .prologue
    .line 346
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;->setMenu(Landroid/view/View;)V

    .line 347
    return-void
.end method

.method public setMenu(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 355
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;->mViewBehind:Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;

    invoke-virtual {v0, p1}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;->setContent(Landroid/view/View;)V

    .line 356
    return-void
.end method

.method public setMode(I)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 417
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 418
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "SlidingMenu mode must be LEFT, RIGHT, or LEFT_RIGHT"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 420
    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;->mViewBehind:Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;

    invoke-virtual {v0, p1}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;->setMode(I)V

    .line 421
    return-void
.end method

.method public setOnCloseListener(Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu$OnCloseListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 822
    iput-object p1, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;->mCloseListener:Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu$OnCloseListener;

    .line 823
    return-void
.end method

.method public setOnClosedListener(Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu$OnClosedListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 840
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;->mViewAbove:Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;

    invoke-virtual {v0, p1}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->setOnClosedListener(Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu$OnClosedListener;)V

    .line 841
    return-void
.end method

.method public setOnOpenListener(Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu$OnOpenListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 812
    iput-object p1, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;->mOpenListener:Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu$OnOpenListener;

    .line 813
    return-void
.end method

.method public setOnOpenedListener(Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu$OnOpenedListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 831
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;->mViewAbove:Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;

    invoke-virtual {v0, p1}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->setOnOpenedListener(Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu$OnOpenedListener;)V

    .line 832
    return-void
.end method

.method public setSecondaryMenu(I)V
    .locals 2
    .parameter "res"

    .prologue
    .line 372
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;->setSecondaryMenu(Landroid/view/View;)V

    .line 373
    return-void
.end method

.method public setSecondaryMenu(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 381
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;->mViewBehind:Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;

    invoke-virtual {v0, p1}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;->setSecondaryContent(Landroid/view/View;)V

    .line 383
    return-void
.end method

.method public setSecondaryShadowDrawable(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 695
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;->setSecondaryShadowDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 696
    return-void
.end method

.method public setSecondaryShadowDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "d"

    .prologue
    .line 704
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;->mViewBehind:Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;

    invoke-virtual {v0, p1}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;->setSecondaryShadowDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 705
    return-void
.end method

.method public setSelectedView(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 759
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;->mViewAbove:Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;

    invoke-virtual {v0, p1}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->setSelectedView(Landroid/view/View;)V

    .line 760
    return-void
.end method

.method public setSelectorBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "b"

    .prologue
    .line 777
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;->mViewAbove:Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;

    invoke-virtual {v0, p1}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->setSelectorBitmap(Landroid/graphics/Bitmap;)V

    .line 778
    return-void
.end method

.method public setSelectorDrawable(I)V
    .locals 2
    .parameter "res"

    .prologue
    .line 768
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;->mViewAbove:Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->setSelectorBitmap(Landroid/graphics/Bitmap;)V

    .line 769
    return-void
.end method

.method public setSelectorEnabled(Z)V
    .locals 2
    .parameter "b"

    .prologue
    .line 750
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;->mViewAbove:Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->setSelectorEnabled(Z)V

    .line 751
    return-void
.end method

.method public setShadowDrawable(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 677
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;->setShadowDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 678
    return-void
.end method

.method public setShadowDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "d"

    .prologue
    .line 686
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;->mViewBehind:Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;

    invoke-virtual {v0, p1}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;->setShadowDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 687
    return-void
.end method

.method public setShadowWidth(I)V
    .locals 1
    .parameter "pixels"

    .prologue
    .line 722
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;->mViewBehind:Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;

    invoke-virtual {v0, p1}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;->setShadowWidth(I)V

    .line 723
    return-void
.end method

.method public setShadowWidthRes(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 713
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;->setShadowWidth(I)V

    .line 714
    return-void
.end method

.method public setSlidingEnabled(Z)V
    .locals 1
    .parameter "b"

    .prologue
    .line 400
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;->mViewAbove:Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;

    invoke-virtual {v0, p1}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->setSlidingEnabled(Z)V

    .line 401
    return-void
.end method

.method public setStatic(Z)V
    .locals 3
    .parameter "b"

    .prologue
    const/4 v2, 0x1

    .line 437
    if-eqz p1, :cond_0

    .line 438
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;->setSlidingEnabled(Z)V

    .line 439
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;->mViewAbove:Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->setCustomViewBehind(Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;)V

    .line 440
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;->mViewAbove:Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;

    invoke-virtual {v0, v2}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->setCurrentItem(I)V

    .line 448
    :goto_0
    return-void

    .line 443
    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;->mViewAbove:Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;

    invoke-virtual {v0, v2}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->setCurrentItem(I)V

    .line 445
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;->mViewAbove:Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;->mViewBehind:Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->setCustomViewBehind(Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;)V

    .line 446
    invoke-virtual {p0, v2}, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;->setSlidingEnabled(Z)V

    goto :goto_0
.end method

.method public setTouchModeAbove(I)V
    .locals 2
    .parameter "i"

    .prologue
    .line 663
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    if-eqz p1, :cond_0

    .line 664
    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 665
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "TouchMode must be set to eitherTOUCHMODE_FULLSCREEN or TOUCHMODE_MARGIN or TOUCHMODE_NONE."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 668
    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;->mViewAbove:Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;

    invoke-virtual {v0, p1}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->setTouchMode(I)V

    .line 669
    return-void
.end method

.method public showContent()V
    .locals 1

    .prologue
    .line 488
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;->showContent(Z)V

    .line 489
    return-void
.end method

.method public showContent(Z)V
    .locals 2
    .parameter "animate"

    .prologue
    .line 497
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;->mViewAbove:Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->setCurrentItem(IZ)V

    .line 498
    return-void
.end method

.method public showMenu()V
    .locals 1

    .prologue
    .line 454
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;->showMenu(Z)V

    .line 455
    return-void
.end method

.method public showMenu(Z)V
    .locals 2
    .parameter "animate"

    .prologue
    .line 463
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;->mViewAbove:Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->setCurrentItem(IZ)V

    .line 464
    return-void
.end method

.method public showSecondaryMenu()V
    .locals 1

    .prologue
    .line 471
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;->showSecondaryMenu(Z)V

    .line 472
    return-void
.end method

.method public showSecondaryMenu(Z)V
    .locals 2
    .parameter "animate"

    .prologue
    .line 481
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;->mViewAbove:Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->setCurrentItem(IZ)V

    .line 482
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 504
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;->toggle(Z)V

    .line 505
    return-void
.end method

.method public toggle(Z)V
    .locals 1
    .parameter "animate"

    .prologue
    .line 513
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;->isMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 514
    invoke-virtual {p0, p1}, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;->showContent(Z)V

    .line 518
    :goto_0
    return-void

    .line 516
    :cond_0
    invoke-virtual {p0, p1}, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;->showMenu(Z)V

    goto :goto_0
.end method
