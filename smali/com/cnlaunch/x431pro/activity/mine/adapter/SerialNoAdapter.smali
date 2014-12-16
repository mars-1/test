.class public Lcom/cnlaunch/x431pro/activity/mine/adapter/SerialNoAdapter;
.super Landroid/widget/BaseAdapter;
.source "SerialNoAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cnlaunch/x431pro/activity/mine/adapter/SerialNoAdapter$Item;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private inflater:Landroid/view/LayoutInflater;

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/x431pro/utils/db/SerialNumber;",
            ">;"
        }
    .end annotation
.end field

.field private mFragment:Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/content/Context;Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "fragment"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/x431pro/utils/db/SerialNumber;",
            ">;",
            "Landroid/content/Context;",
            "Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;",
            ")V"
        }
    .end annotation

    .prologue
    .line 28
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/utils/db/SerialNumber;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/adapter/SerialNoAdapter;->list:Ljava/util/List;

    .line 29
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/mine/adapter/SerialNoAdapter;->list:Ljava/util/List;

    .line 30
    iput-object p2, p0, Lcom/cnlaunch/x431pro/activity/mine/adapter/SerialNoAdapter;->context:Landroid/content/Context;

    .line 31
    iput-object p3, p0, Lcom/cnlaunch/x431pro/activity/mine/adapter/SerialNoAdapter;->mFragment:Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;

    .line 32
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/adapter/SerialNoAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 33
    return-void
.end method

.method static synthetic access$0(Lcom/cnlaunch/x431pro/activity/mine/adapter/SerialNoAdapter;)Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/adapter/SerialNoAdapter;->mFragment:Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;

    return-object v0
.end method

.method static synthetic access$1(Lcom/cnlaunch/x431pro/activity/mine/adapter/SerialNoAdapter;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/adapter/SerialNoAdapter;->list:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/adapter/SerialNoAdapter;->list:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/adapter/SerialNoAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 39
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/adapter/SerialNoAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "arg0"

    .prologue
    .line 48
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "arg0"
    .parameter "convertView"
    .parameter "arg2"

    .prologue
    .line 53
    if-nez p2, :cond_1

    .line 54
    new-instance v0, Lcom/cnlaunch/x431pro/activity/mine/adapter/SerialNoAdapter$Item;

    invoke-direct {v0, p0}, Lcom/cnlaunch/x431pro/activity/mine/adapter/SerialNoAdapter$Item;-><init>(Lcom/cnlaunch/x431pro/activity/mine/adapter/SerialNoAdapter;)V

    .line 55
    .local v0, item:Lcom/cnlaunch/x431pro/activity/mine/adapter/SerialNoAdapter$Item;
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/adapter/SerialNoAdapter;->inflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030140

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 56
    const v1, 0x7f0d0390

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/cnlaunch/x431pro/activity/mine/adapter/SerialNoAdapter$Item;->tv_serial_number:Landroid/widget/TextView;

    .line 57
    const v1, 0x7f0d038f

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/cnlaunch/x431pro/activity/mine/adapter/SerialNoAdapter$Item;->iv_checkbox:Landroid/widget/ImageView;

    .line 58
    const v1, 0x7f0d0391

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, v0, Lcom/cnlaunch/x431pro/activity/mine/adapter/SerialNoAdapter$Item;->btn_spinner_down:Landroid/widget/ImageButton;

    .line 59
    const v1, 0x7f0d038e

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, v0, Lcom/cnlaunch/x431pro/activity/mine/adapter/SerialNoAdapter$Item;->relat_item_root:Landroid/widget/RelativeLayout;

    .line 61
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 66
    :goto_0
    const-string/jumbo v1, ""

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/adapter/SerialNoAdapter;->list:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/adapter/SerialNoAdapter;->list:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 67
    iget-object v2, v0, Lcom/cnlaunch/x431pro/activity/mine/adapter/SerialNoAdapter$Item;->tv_serial_number:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/adapter/SerialNoAdapter;->list:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/x431pro/utils/db/SerialNumber;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/utils/db/SerialNumber;->getSerialNo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    :cond_0
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/adapter/SerialNoAdapter;->list:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/x431pro/utils/db/SerialNumber;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/utils/db/SerialNumber;->getSerialNo()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string/jumbo v2, ""

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/adapter/SerialNoAdapter;->list:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/x431pro/utils/db/SerialNumber;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/utils/db/SerialNumber;->getSerialNo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/adapter/SerialNoAdapter;->list:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/x431pro/utils/db/SerialNumber;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/utils/db/SerialNumber;->getIsDefault()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 71
    iget-object v1, v0, Lcom/cnlaunch/x431pro/activity/mine/adapter/SerialNoAdapter$Item;->iv_checkbox:Landroid/widget/ImageView;

    const v2, 0x7f020122

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 75
    :goto_1
    iget-object v1, v0, Lcom/cnlaunch/x431pro/activity/mine/adapter/SerialNoAdapter$Item;->btn_spinner_down:Landroid/widget/ImageButton;

    new-instance v2, Lcom/cnlaunch/x431pro/activity/mine/adapter/SerialNoAdapter$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/cnlaunch/x431pro/activity/mine/adapter/SerialNoAdapter$1;-><init>(Lcom/cnlaunch/x431pro/activity/mine/adapter/SerialNoAdapter;Lcom/cnlaunch/x431pro/activity/mine/adapter/SerialNoAdapter$Item;I)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    return-object p2

    .line 63
    .end local v0           #item:Lcom/cnlaunch/x431pro/activity/mine/adapter/SerialNoAdapter$Item;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/x431pro/activity/mine/adapter/SerialNoAdapter$Item;

    .restart local v0       #item:Lcom/cnlaunch/x431pro/activity/mine/adapter/SerialNoAdapter$Item;
    goto :goto_0

    .line 73
    :cond_2
    iget-object v1, v0, Lcom/cnlaunch/x431pro/activity/mine/adapter/SerialNoAdapter$Item;->iv_checkbox:Landroid/widget/ImageView;

    const v2, 0x7f020123

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method
