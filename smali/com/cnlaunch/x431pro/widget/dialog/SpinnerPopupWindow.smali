.class public Lcom/cnlaunch/x431pro/widget/dialog/SpinnerPopupWindow;
.super Ljava/lang/Object;
.source "SpinnerPopupWindow.java"


# instance fields
.field private defaultHeight:I

.field public defaultWidth:I

.field private listview:Landroid/widget/ListView;

.field private mContext:Landroid/content/Context;

.field private onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private popupWindow:Landroid/widget/PopupWindow;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    const/16 v1, 0xc8

    const/4 v4, -0x2

    const/4 v3, 0x1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput v1, p0, Lcom/cnlaunch/x431pro/widget/dialog/SpinnerPopupWindow;->defaultHeight:I

    .line 44
    iput v1, p0, Lcom/cnlaunch/x431pro/widget/dialog/SpinnerPopupWindow;->defaultWidth:I

    .line 52
    iput-object p1, p0, Lcom/cnlaunch/x431pro/widget/dialog/SpinnerPopupWindow;->mContext:Landroid/content/Context;

    .line 53
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0300dc

    invoke-virtual {v1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 54
    .local v0, popview:Landroid/view/View;
    new-instance v1, Landroid/widget/PopupWindow;

    invoke-direct {v1, v0, v4, v4, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v1, p0, Lcom/cnlaunch/x431pro/widget/dialog/SpinnerPopupWindow;->popupWindow:Landroid/widget/PopupWindow;

    .line 55
    const v1, 0x7f0c0046

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/cnlaunch/x431pro/widget/dialog/SpinnerPopupWindow;->listview:Landroid/widget/ListView;

    .line 56
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/dialog/SpinnerPopupWindow;->listview:Landroid/widget/ListView;

    new-instance v2, Lcom/cnlaunch/x431pro/widget/dialog/SpinnerPopupWindow$1;

    invoke-direct {v2, p0}, Lcom/cnlaunch/x431pro/widget/dialog/SpinnerPopupWindow$1;-><init>(Lcom/cnlaunch/x431pro/widget/dialog/SpinnerPopupWindow;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 67
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/dialog/SpinnerPopupWindow;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 68
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/dialog/SpinnerPopupWindow;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 69
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/dialog/SpinnerPopupWindow;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 70
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/dialog/SpinnerPopupWindow;->popupWindow:Landroid/widget/PopupWindow;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 71
    return-void
.end method

.method static synthetic access$0(Lcom/cnlaunch/x431pro/widget/dialog/SpinnerPopupWindow;)Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/dialog/SpinnerPopupWindow;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method static synthetic access$1(Lcom/cnlaunch/x431pro/widget/dialog/SpinnerPopupWindow;)Landroid/widget/PopupWindow;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/dialog/SpinnerPopupWindow;->popupWindow:Landroid/widget/PopupWindow;

    return-object v0
.end method


# virtual methods
.method public dismissPopupWindow()V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/dialog/SpinnerPopupWindow;->popupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/dialog/SpinnerPopupWindow;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/dialog/SpinnerPopupWindow;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 101
    :cond_0
    return-void
.end method

.method public getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/dialog/SpinnerPopupWindow;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method public setListViewWidth(I)V
    .locals 0
    .parameter "widthPixels"

    .prologue
    .line 46
    iput p1, p0, Lcom/cnlaunch/x431pro/widget/dialog/SpinnerPopupWindow;->defaultWidth:I

    .line 47
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0
    .parameter

    .prologue
    .line 107
    .local p1, onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;,"Landroid/widget/AdapterView$OnItemClickListener;"
    iput-object p1, p0, Lcom/cnlaunch/x431pro/widget/dialog/SpinnerPopupWindow;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 108
    return-void
.end method

.method public show(Landroid/view/View;Ljava/util/List;)V
    .locals 10
    .parameter "view"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 79
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 80
    iget-object v4, p0, Lcom/cnlaunch/x431pro/widget/dialog/SpinnerPopupWindow;->listview:Landroid/widget/ListView;

    new-instance v5, Landroid/widget/ArrayAdapter;

    iget-object v6, p0, Lcom/cnlaunch/x431pro/widget/dialog/SpinnerPopupWindow;->mContext:Landroid/content/Context;

    const v7, 0x1090003

    invoke-direct {v5, v6, v7, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 81
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    iget v4, p0, Lcom/cnlaunch/x431pro/widget/dialog/SpinnerPopupWindow;->defaultWidth:I

    iget v5, p0, Lcom/cnlaunch/x431pro/widget/dialog/SpinnerPopupWindow;->defaultHeight:I

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 82
    .local v3, params:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v4, p0, Lcom/cnlaunch/x431pro/widget/dialog/SpinnerPopupWindow;->listview:Landroid/widget/ListView;

    invoke-virtual {v4, v3}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 84
    const/4 v4, 0x2

    new-array v2, v4, [I

    .line 85
    .local v2, location:[I
    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 86
    iget-object v4, p0, Lcom/cnlaunch/x431pro/widget/dialog/SpinnerPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 87
    .local v1, dm:Landroid/util/DisplayMetrics;
    iget v4, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    aget v5, v2, v9

    sub-int v0, v4, v5

    .line 88
    .local v0, bottomHeight:I
    iget v4, p0, Lcom/cnlaunch/x431pro/widget/dialog/SpinnerPopupWindow;->defaultHeight:I

    add-int/lit8 v4, v4, 0x32

    if-ge v0, v4, :cond_1

    .line 89
    iget-object v4, p0, Lcom/cnlaunch/x431pro/widget/dialog/SpinnerPopupWindow;->popupWindow:Landroid/widget/PopupWindow;

    aget v5, v2, v8

    aget v6, v2, v9

    iget v7, p0, Lcom/cnlaunch/x431pro/widget/dialog/SpinnerPopupWindow;->defaultHeight:I

    sub-int/2addr v6, v7

    invoke-virtual {v4, p1, v8, v5, v6}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 94
    .end local v0           #bottomHeight:I
    .end local v1           #dm:Landroid/util/DisplayMetrics;
    .end local v2           #location:[I
    .end local v3           #params:Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    :goto_0
    return-void

    .line 91
    .restart local v0       #bottomHeight:I
    .restart local v1       #dm:Landroid/util/DisplayMetrics;
    .restart local v2       #location:[I
    .restart local v3       #params:Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    iget-object v4, p0, Lcom/cnlaunch/x431pro/widget/dialog/SpinnerPopupWindow;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4, p1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    goto :goto_0
.end method
