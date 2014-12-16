.class public Lcom/cnlaunch/x431pro/widget/DropdownEditText;
.super Landroid/widget/EditText;
.source "DropdownEditText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cnlaunch/x431pro/widget/DropdownEditText$DropdownUsernameAdapter;
    }
.end annotation


# instance fields
.field USERNAMELIST:Ljava/lang/String;

.field handle:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field listview:Landroid/widget/ListView;

.field private mClearDrawable:Landroid/graphics/drawable/Drawable;

.field mContext:Landroid/content/Context;

.field mEditText:Landroid/widget/EditText;

.field preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

.field pw:Landroid/widget/PopupWindow;

.field usernameAdapter:Lcom/cnlaunch/x431pro/widget/DropdownEditText$DropdownUsernameAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/cnlaunch/x431pro/widget/DropdownEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    iput-object p1, p0, Lcom/cnlaunch/x431pro/widget/DropdownEditText;->mContext:Landroid/content/Context;

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 70
    const v0, 0x101006e

    invoke-direct {p0, p1, p2, v0}, Lcom/cnlaunch/x431pro/widget/DropdownEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 71
    iput-object p1, p0, Lcom/cnlaunch/x431pro/widget/DropdownEditText;->mContext:Landroid/content/Context;

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 75
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/widget/DropdownEditText;->list:Ljava/util/ArrayList;

    .line 47
    const-string/jumbo v0, "username_list"

    iput-object v0, p0, Lcom/cnlaunch/x431pro/widget/DropdownEditText;->USERNAMELIST:Ljava/lang/String;

    .line 50
    new-instance v0, Lcom/cnlaunch/x431pro/widget/DropdownEditText$1;

    invoke-direct {v0, p0}, Lcom/cnlaunch/x431pro/widget/DropdownEditText$1;-><init>(Lcom/cnlaunch/x431pro/widget/DropdownEditText;)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/widget/DropdownEditText;->handle:Landroid/os/Handler;

    .line 76
    iput-object p1, p0, Lcom/cnlaunch/x431pro/widget/DropdownEditText;->mContext:Landroid/content/Context;

    .line 77
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/widget/DropdownEditText;->init()V

    .line 78
    return-void
.end method

.method private init()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 82
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/DropdownEditText;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/cnlaunch/x431pro/widget/DropdownEditText;->mClearDrawable:Landroid/graphics/drawable/Drawable;

    .line 83
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/DropdownEditText;->mClearDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 84
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/DropdownEditText;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0205a6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/widget/DropdownEditText;->mClearDrawable:Landroid/graphics/drawable/Drawable;

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/DropdownEditText;->mClearDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/DropdownEditText;->mClearDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/cnlaunch/x431pro/widget/DropdownEditText;->mClearDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 87
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/widget/DropdownEditText;->setClearIconVisible(Z)V

    .line 88
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/DropdownEditText;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/widget/DropdownEditText;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    .line 89
    return-void
.end method

.method public static shakeAnimation(I)Landroid/view/animation/Animation;
    .locals 3
    .parameter "counts"

    .prologue
    const/4 v2, 0x0

    .line 261
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v1, 0x4120

    invoke-direct {v0, v2, v1, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 262
    .local v0, translateAnimation:Landroid/view/animation/Animation;
    new-instance v1, Landroid/view/animation/CycleInterpolator;

    int-to-float v2, p0

    invoke-direct {v1, v2}, Landroid/view/animation/CycleInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 263
    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 264
    return-object v0
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 97
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/DropdownEditText;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v1, v1, v2

    if-eqz v1, :cond_0

    .line 98
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 99
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/DropdownEditText;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/DropdownEditText;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/cnlaunch/x431pro/widget/DropdownEditText;->mClearDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/DropdownEditText;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/DropdownEditText;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    .line 100
    .local v0, touchable:Z
    :goto_0
    if-eqz v0, :cond_0

    .line 101
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/DropdownEditText;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 102
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/DropdownEditText;->showPopupWindow()V

    .line 107
    .end local v0           #touchable:Z
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/EditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 99
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected setClearIconVisible(Z)V
    .locals 5
    .parameter "visible"

    .prologue
    .line 242
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/DropdownEditText;->mClearDrawable:Landroid/graphics/drawable/Drawable;

    .line 243
    .local v0, right:Landroid/graphics/drawable/Drawable;
    :goto_0
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/DropdownEditText;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/DropdownEditText;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/DropdownEditText;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x3

    aget-object v3, v3, v4

    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/cnlaunch/x431pro/widget/DropdownEditText;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 244
    return-void

    .line 242
    .end local v0           #right:Landroid/graphics/drawable/Drawable;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setList(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 111
    .local p1, l:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/cnlaunch/x431pro/widget/DropdownEditText;->list:Ljava/util/ArrayList;

    .line 112
    return-void
.end method

.method public setPasswordText(Landroid/widget/EditText;)V
    .locals 0
    .parameter "editView"

    .prologue
    .line 115
    iput-object p1, p0, Lcom/cnlaunch/x431pro/widget/DropdownEditText;->mEditText:Landroid/widget/EditText;

    .line 116
    return-void
.end method

.method public setShakeAnimation()V
    .locals 1

    .prologue
    .line 250
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/cnlaunch/x431pro/widget/DropdownEditText;->shakeAnimation(I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/widget/DropdownEditText;->setAnimation(Landroid/view/animation/Animation;)V

    .line 251
    return-void
.end method

.method public showPopupWindow()V
    .locals 6

    .prologue
    .line 218
    iget-object v2, p0, Lcom/cnlaunch/x431pro/widget/DropdownEditText;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 219
    .local v0, factory:Landroid/view/LayoutInflater;
    const v2, 0x7f0300ec

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 220
    .local v1, view:Landroid/view/View;
    const v2, 0x7f0c02b9

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/cnlaunch/x431pro/widget/DropdownEditText;->listview:Landroid/widget/ListView;

    .line 221
    new-instance v2, Lcom/cnlaunch/x431pro/widget/DropdownEditText$DropdownUsernameAdapter;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/widget/DropdownEditText;->list:Ljava/util/ArrayList;

    invoke-direct {v2, p0, v3}, Lcom/cnlaunch/x431pro/widget/DropdownEditText$DropdownUsernameAdapter;-><init>(Lcom/cnlaunch/x431pro/widget/DropdownEditText;Ljava/util/ArrayList;)V

    iput-object v2, p0, Lcom/cnlaunch/x431pro/widget/DropdownEditText;->usernameAdapter:Lcom/cnlaunch/x431pro/widget/DropdownEditText$DropdownUsernameAdapter;

    .line 222
    iget-object v2, p0, Lcom/cnlaunch/x431pro/widget/DropdownEditText;->listview:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/widget/DropdownEditText;->usernameAdapter:Lcom/cnlaunch/x431pro/widget/DropdownEditText$DropdownUsernameAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 223
    iget-object v2, p0, Lcom/cnlaunch/x431pro/widget/DropdownEditText;->listview:Landroid/widget/ListView;

    new-instance v3, Lcom/cnlaunch/x431pro/widget/DropdownEditText$2;

    invoke-direct {v3, p0}, Lcom/cnlaunch/x431pro/widget/DropdownEditText$2;-><init>(Lcom/cnlaunch/x431pro/widget/DropdownEditText;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 231
    new-instance v2, Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/DropdownEditText;->getWidth()I

    move-result v3

    const/16 v4, 0x12c

    const/4 v5, 0x1

    invoke-direct {v2, v1, v3, v4, v5}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v2, p0, Lcom/cnlaunch/x431pro/widget/DropdownEditText;->pw:Landroid/widget/PopupWindow;

    .line 232
    iget-object v2, p0, Lcom/cnlaunch/x431pro/widget/DropdownEditText;->pw:Landroid/widget/PopupWindow;

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 233
    iget-object v2, p0, Lcom/cnlaunch/x431pro/widget/DropdownEditText;->pw:Landroid/widget/PopupWindow;

    invoke-virtual {v2, p0}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    .line 234
    return-void
.end method
