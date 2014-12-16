.class public Lcom/cnlaunch/x431pro/activity/upgrade/adapter/UpgradeAdapter;
.super Landroid/widget/BaseAdapter;
.source "UpgradeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cnlaunch/x431pro/activity/upgrade/adapter/UpgradeAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private holder:Lcom/cnlaunch/x431pro/activity/upgrade/adapter/UpgradeAdapter$ViewHolder;

.field protected list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;",
            ">;"
        }
    .end annotation
.end field

.field protected mContext:Landroid/content/Context;

.field protected mFragment:Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;

.field protected mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;)V
    .locals 1
    .parameter "context"
    .parameter "fragment"

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/UpgradeAdapter;->mContext:Landroid/content/Context;

    .line 42
    iput-object p2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/UpgradeAdapter;->mFragment:Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;

    .line 43
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/UpgradeAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/UpgradeAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 44
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/UpgradeAdapter;->list:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/UpgradeAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 66
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/UpgradeAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 76
    int-to-long v0, p1

    return-wide v0
.end method

.method public getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/UpgradeAdapter;->list:Ljava/util/List;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 81
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/UpgradeAdapter;->list:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;

    .line 83
    .local v0, bean:Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;
    if-nez p2, :cond_1

    .line 84
    new-instance v2, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/UpgradeAdapter$ViewHolder;

    invoke-direct {v2, p0}, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/UpgradeAdapter$ViewHolder;-><init>(Lcom/cnlaunch/x431pro/activity/upgrade/adapter/UpgradeAdapter;)V

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/UpgradeAdapter;->holder:Lcom/cnlaunch/x431pro/activity/upgrade/adapter/UpgradeAdapter$ViewHolder;

    .line 85
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/UpgradeAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f0301b1

    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 86
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/UpgradeAdapter;->holder:Lcom/cnlaunch/x431pro/activity/upgrade/adapter/UpgradeAdapter$ViewHolder;

    const v2, 0x7f0c010d

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, v4, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/UpgradeAdapter$ViewHolder;->cbox_item:Landroid/widget/CheckBox;

    .line 87
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/UpgradeAdapter;->holder:Lcom/cnlaunch/x431pro/activity/upgrade/adapter/UpgradeAdapter$ViewHolder;

    const v2, 0x7f0c010e

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v4, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/UpgradeAdapter$ViewHolder;->tv_carname_item:Landroid/widget/TextView;

    .line 88
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/UpgradeAdapter;->holder:Lcom/cnlaunch/x431pro/activity/upgrade/adapter/UpgradeAdapter$ViewHolder;

    const v2, 0x7f0c010f

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v4, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/UpgradeAdapter$ViewHolder;->tv_curversion_item:Landroid/widget/TextView;

    .line 89
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/UpgradeAdapter;->holder:Lcom/cnlaunch/x431pro/activity/upgrade/adapter/UpgradeAdapter$ViewHolder;

    const v2, 0x7f0c0110

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v4, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/UpgradeAdapter$ViewHolder;->tv_upgradeversion_item:Landroid/widget/TextView;

    .line 90
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/UpgradeAdapter;->holder:Lcom/cnlaunch/x431pro/activity/upgrade/adapter/UpgradeAdapter$ViewHolder;

    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 95
    :goto_0
    const/4 v2, 0x3

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->getType()I

    move-result v4

    if-ne v2, v4, :cond_2

    .line 96
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/UpgradeAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f020171

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 97
    .local v1, drawable:Landroid/graphics/drawable/Drawable;
    const/16 v2, 0x13

    const/16 v4, 0xb

    invoke-virtual {v1, v3, v3, v2, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 98
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/UpgradeAdapter;->holder:Lcom/cnlaunch/x431pro/activity/upgrade/adapter/UpgradeAdapter$ViewHolder;

    iget-object v2, v2, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/UpgradeAdapter$ViewHolder;->tv_upgradeversion_item:Landroid/widget/TextView;

    invoke-virtual {v2, v5, v5, v1, v5}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 99
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/UpgradeAdapter;->holder:Lcom/cnlaunch/x431pro/activity/upgrade/adapter/UpgradeAdapter$ViewHolder;

    iget-object v2, v2, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/UpgradeAdapter$ViewHolder;->tv_upgradeversion_item:Landroid/widget/TextView;

    new-instance v4, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/UpgradeAdapter$1;

    invoke-direct {v4, p0, v0, p1}, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/UpgradeAdapter$1;-><init>(Lcom/cnlaunch/x431pro/activity/upgrade/adapter/UpgradeAdapter;Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;I)V

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    .end local v1           #drawable:Landroid/graphics/drawable/Drawable;
    :goto_1
    if-eqz v0, :cond_0

    .line 111
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/UpgradeAdapter;->holder:Lcom/cnlaunch/x431pro/activity/upgrade/adapter/UpgradeAdapter$ViewHolder;

    iget-object v2, v2, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/UpgradeAdapter$ViewHolder;->tv_carname_item:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->getSoftName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/UpgradeAdapter;->holder:Lcom/cnlaunch/x431pro/activity/upgrade/adapter/UpgradeAdapter$ViewHolder;

    iget-object v2, v2, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/UpgradeAdapter$ViewHolder;->tv_curversion_item:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->getMaxOldVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/UpgradeAdapter;->holder:Lcom/cnlaunch/x431pro/activity/upgrade/adapter/UpgradeAdapter$ViewHolder;

    iget-object v2, v2, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/UpgradeAdapter$ViewHolder;->tv_upgradeversion_item:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->getVersionNo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/UpgradeAdapter;->holder:Lcom/cnlaunch/x431pro/activity/upgrade/adapter/UpgradeAdapter$ViewHolder;

    iget-object v4, v2, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/UpgradeAdapter$ViewHolder;->cbox_item:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->isMust()Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v3

    :goto_2
    invoke-virtual {v4, v2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 115
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/UpgradeAdapter;->holder:Lcom/cnlaunch/x431pro/activity/upgrade/adapter/UpgradeAdapter$ViewHolder;

    iget-object v2, v2, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/UpgradeAdapter$ViewHolder;->cbox_item:Landroid/widget/CheckBox;

    invoke-virtual {v2, v5}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 116
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/UpgradeAdapter;->holder:Lcom/cnlaunch/x431pro/activity/upgrade/adapter/UpgradeAdapter$ViewHolder;

    iget-object v2, v2, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/UpgradeAdapter$ViewHolder;->cbox_item:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->isChecked()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 117
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/UpgradeAdapter;->holder:Lcom/cnlaunch/x431pro/activity/upgrade/adapter/UpgradeAdapter$ViewHolder;

    iget-object v2, v2, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/UpgradeAdapter$ViewHolder;->cbox_item:Landroid/widget/CheckBox;

    new-instance v3, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/UpgradeAdapter$2;

    invoke-direct {v3, p0, v0}, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/UpgradeAdapter$2;-><init>(Lcom/cnlaunch/x431pro/activity/upgrade/adapter/UpgradeAdapter;Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;)V

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 126
    :cond_0
    return-object p2

    .line 92
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/UpgradeAdapter$ViewHolder;

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/UpgradeAdapter;->holder:Lcom/cnlaunch/x431pro/activity/upgrade/adapter/UpgradeAdapter$ViewHolder;

    goto/16 :goto_0

    .line 107
    :cond_2
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/UpgradeAdapter;->holder:Lcom/cnlaunch/x431pro/activity/upgrade/adapter/UpgradeAdapter$ViewHolder;

    iget-object v2, v2, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/UpgradeAdapter$ViewHolder;->tv_upgradeversion_item:Landroid/widget/TextView;

    invoke-virtual {v2, v5, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 108
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/UpgradeAdapter;->holder:Lcom/cnlaunch/x431pro/activity/upgrade/adapter/UpgradeAdapter$ViewHolder;

    iget-object v2, v2, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/UpgradeAdapter$ViewHolder;->tv_upgradeversion_item:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 114
    :cond_3
    const/4 v2, 0x1

    goto :goto_2
.end method

.method public setList(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;>;"
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/UpgradeAdapter;->list:Ljava/util/List;

    .line 59
    return-void
.end method
