.class public Lcom/cnlaunch/x431pro/activity/upgrade/adapter/ExpiredAdapter;
.super Lcom/cnlaunch/x431pro/activity/upgrade/adapter/UpgradeAdapter;
.source "ExpiredAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cnlaunch/x431pro/activity/upgrade/adapter/ExpiredAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private holder:Lcom/cnlaunch/x431pro/activity/upgrade/adapter/ExpiredAdapter$ViewHolder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;)V
    .locals 0
    .parameter "context"
    .parameter "fragment"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/UpgradeAdapter;-><init>(Landroid/content/Context;Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;)V

    .line 32
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 46
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/ExpiredAdapter;->list:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;

    .line 48
    .local v0, bean:Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;
    if-nez p2, :cond_1

    .line 49
    new-instance v2, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/ExpiredAdapter$ViewHolder;

    invoke-direct {v2, p0}, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/ExpiredAdapter$ViewHolder;-><init>(Lcom/cnlaunch/x431pro/activity/upgrade/adapter/ExpiredAdapter;)V

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/ExpiredAdapter;->holder:Lcom/cnlaunch/x431pro/activity/upgrade/adapter/ExpiredAdapter$ViewHolder;

    .line 50
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/ExpiredAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f030054

    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 51
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/ExpiredAdapter;->holder:Lcom/cnlaunch/x431pro/activity/upgrade/adapter/ExpiredAdapter$ViewHolder;

    const v2, 0x7f0d010d

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, v4, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/ExpiredAdapter$ViewHolder;->cbox_item:Landroid/widget/CheckBox;

    .line 52
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/ExpiredAdapter;->holder:Lcom/cnlaunch/x431pro/activity/upgrade/adapter/ExpiredAdapter$ViewHolder;

    const v2, 0x7f0d010e

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v4, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/ExpiredAdapter$ViewHolder;->tv_carname_item:Landroid/widget/TextView;

    .line 53
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/ExpiredAdapter;->holder:Lcom/cnlaunch/x431pro/activity/upgrade/adapter/ExpiredAdapter$ViewHolder;

    const v2, 0x7f0d010f

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v4, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/ExpiredAdapter$ViewHolder;->tv_curversion_item:Landroid/widget/TextView;

    .line 54
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/ExpiredAdapter;->holder:Lcom/cnlaunch/x431pro/activity/upgrade/adapter/ExpiredAdapter$ViewHolder;

    const v2, 0x7f0d0110

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v4, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/ExpiredAdapter$ViewHolder;->tv_upgradeversion_item:Landroid/widget/TextView;

    .line 55
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/ExpiredAdapter;->holder:Lcom/cnlaunch/x431pro/activity/upgrade/adapter/ExpiredAdapter$ViewHolder;

    const v2, 0x7f0d0111

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v4, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/ExpiredAdapter$ViewHolder;->tv_expired_item:Landroid/widget/TextView;

    .line 56
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/ExpiredAdapter;->holder:Lcom/cnlaunch/x431pro/activity/upgrade/adapter/ExpiredAdapter$ViewHolder;

    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 61
    :goto_0
    const/4 v2, 0x3

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->getType()I

    move-result v4

    if-ne v2, v4, :cond_2

    .line 62
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/ExpiredAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f020170

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 63
    .local v1, drawable:Landroid/graphics/drawable/Drawable;
    const/16 v2, 0x13

    const/16 v4, 0xb

    invoke-virtual {v1, v3, v3, v2, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 64
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/ExpiredAdapter;->holder:Lcom/cnlaunch/x431pro/activity/upgrade/adapter/ExpiredAdapter$ViewHolder;

    iget-object v2, v2, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/ExpiredAdapter$ViewHolder;->tv_upgradeversion_item:Landroid/widget/TextView;

    invoke-virtual {v2, v5, v5, v1, v5}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 65
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/ExpiredAdapter;->holder:Lcom/cnlaunch/x431pro/activity/upgrade/adapter/ExpiredAdapter$ViewHolder;

    iget-object v2, v2, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/ExpiredAdapter$ViewHolder;->tv_upgradeversion_item:Landroid/widget/TextView;

    new-instance v4, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/ExpiredAdapter$1;

    invoke-direct {v4, p0, v0, p1}, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/ExpiredAdapter$1;-><init>(Lcom/cnlaunch/x431pro/activity/upgrade/adapter/ExpiredAdapter;Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;I)V

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    .end local v1           #drawable:Landroid/graphics/drawable/Drawable;
    :goto_1
    if-eqz v0, :cond_0

    .line 78
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/ExpiredAdapter;->holder:Lcom/cnlaunch/x431pro/activity/upgrade/adapter/ExpiredAdapter$ViewHolder;

    iget-object v2, v2, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/ExpiredAdapter$ViewHolder;->tv_carname_item:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->getSoftName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/ExpiredAdapter;->holder:Lcom/cnlaunch/x431pro/activity/upgrade/adapter/ExpiredAdapter$ViewHolder;

    iget-object v2, v2, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/ExpiredAdapter$ViewHolder;->tv_curversion_item:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->getMaxOldVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/ExpiredAdapter;->holder:Lcom/cnlaunch/x431pro/activity/upgrade/adapter/ExpiredAdapter$ViewHolder;

    iget-object v2, v2, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/ExpiredAdapter$ViewHolder;->tv_upgradeversion_item:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->getVersionNo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/ExpiredAdapter;->holder:Lcom/cnlaunch/x431pro/activity/upgrade/adapter/ExpiredAdapter$ViewHolder;

    iget-object v4, v2, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/ExpiredAdapter$ViewHolder;->cbox_item:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->isMust()Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v3

    :goto_2
    invoke-virtual {v4, v2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 82
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/ExpiredAdapter;->holder:Lcom/cnlaunch/x431pro/activity/upgrade/adapter/ExpiredAdapter$ViewHolder;

    iget-object v2, v2, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/ExpiredAdapter$ViewHolder;->cbox_item:Landroid/widget/CheckBox;

    invoke-virtual {v2, v5}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 83
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/ExpiredAdapter;->holder:Lcom/cnlaunch/x431pro/activity/upgrade/adapter/ExpiredAdapter$ViewHolder;

    iget-object v2, v2, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/ExpiredAdapter$ViewHolder;->cbox_item:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->isChecked()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 84
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/ExpiredAdapter;->holder:Lcom/cnlaunch/x431pro/activity/upgrade/adapter/ExpiredAdapter$ViewHolder;

    iget-object v2, v2, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/ExpiredAdapter$ViewHolder;->cbox_item:Landroid/widget/CheckBox;

    new-instance v3, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/ExpiredAdapter$2;

    invoke-direct {v3, p0, v0}, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/ExpiredAdapter$2;-><init>(Lcom/cnlaunch/x431pro/activity/upgrade/adapter/ExpiredAdapter;Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;)V

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 91
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->getExpired()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->getRemarks()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 92
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/ExpiredAdapter;->holder:Lcom/cnlaunch/x431pro/activity/upgrade/adapter/ExpiredAdapter$ViewHolder;

    iget-object v2, v2, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/ExpiredAdapter$ViewHolder;->tv_expired_item:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->getRemarks()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    :cond_0
    :goto_3
    return-object p2

    .line 58
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/ExpiredAdapter$ViewHolder;

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/ExpiredAdapter;->holder:Lcom/cnlaunch/x431pro/activity/upgrade/adapter/ExpiredAdapter$ViewHolder;

    goto/16 :goto_0

    .line 73
    :cond_2
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/ExpiredAdapter;->holder:Lcom/cnlaunch/x431pro/activity/upgrade/adapter/ExpiredAdapter$ViewHolder;

    iget-object v2, v2, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/ExpiredAdapter$ViewHolder;->tv_upgradeversion_item:Landroid/widget/TextView;

    invoke-virtual {v2, v5, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 74
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/ExpiredAdapter;->holder:Lcom/cnlaunch/x431pro/activity/upgrade/adapter/ExpiredAdapter$ViewHolder;

    iget-object v2, v2, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/ExpiredAdapter$ViewHolder;->tv_upgradeversion_item:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 81
    :cond_3
    const/4 v2, 0x1

    goto :goto_2

    .line 95
    :cond_4
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/ExpiredAdapter;->holder:Lcom/cnlaunch/x431pro/activity/upgrade/adapter/ExpiredAdapter$ViewHolder;

    iget-object v2, v2, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/ExpiredAdapter$ViewHolder;->tv_expired_item:Landroid/widget/TextView;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3
.end method
