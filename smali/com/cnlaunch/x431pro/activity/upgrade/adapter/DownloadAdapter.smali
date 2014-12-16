.class public Lcom/cnlaunch/x431pro/activity/upgrade/adapter/DownloadAdapter;
.super Landroid/widget/BaseAdapter;
.source "DownloadAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cnlaunch/x431pro/activity/upgrade/adapter/DownloadAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private fragment:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsRoot:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)V
    .locals 1
    .parameter "context"
    .parameter "mfragment"

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/DownloadAdapter;->mIsRoot:Z

    .line 44
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/DownloadAdapter;->mContext:Landroid/content/Context;

    .line 45
    iput-object p2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/DownloadAdapter;->fragment:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    .line 46
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/DownloadAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/DownloadAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 48
    invoke-static {}, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/DownloadAdapter;->isRoot()Z

    move-result v0

    iput-boolean v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/DownloadAdapter;->mIsRoot:Z

    .line 49
    return-void
.end method

.method static synthetic access$0(Lcom/cnlaunch/x431pro/activity/upgrade/adapter/DownloadAdapter;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/DownloadAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static isRoot()Z
    .locals 7

    .prologue
    .line 56
    const/4 v1, 0x0

    .line 59
    .local v1, is:Z
    :try_start_0
    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "/system/xbin/per-up"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 60
    const/4 v1, 0x0

    .line 64
    :goto_0
    const-string/jumbo v2, "DownloadAdapter"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "isRoot = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/cnlaunch/framework/utils/NLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :goto_1
    return v1

    .line 62
    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    .line 65
    :catch_0
    move-exception v0

    .line 66
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/DownloadAdapter;->list:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/DownloadAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 92
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
    .line 97
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/DownloadAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 102
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
    .line 80
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/DownloadAdapter;->list:Ljava/util/List;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v4, 0x0

    const v9, 0x7f0203ab

    const v8, 0x7f0203a9

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 107
    invoke-virtual {p0, p1}, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/DownloadAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;

    .line 108
    .local v0, bean:Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;
    const/4 v1, 0x0

    .line 110
    .local v1, holder:Lcom/cnlaunch/x431pro/activity/upgrade/adapter/DownloadAdapter$ViewHolder;
    if-nez p2, :cond_2

    .line 111
    new-instance v1, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/DownloadAdapter$ViewHolder;

    .end local v1           #holder:Lcom/cnlaunch/x431pro/activity/upgrade/adapter/DownloadAdapter$ViewHolder;
    invoke-direct {v1, p0}, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/DownloadAdapter$ViewHolder;-><init>(Lcom/cnlaunch/x431pro/activity/upgrade/adapter/DownloadAdapter;)V

    .line 112
    .restart local v1       #holder:Lcom/cnlaunch/x431pro/activity/upgrade/adapter/DownloadAdapter$ViewHolder;
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/DownloadAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f0301af

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 113
    const v2, 0x7f0c04df

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/DownloadAdapter$ViewHolder;->tv_name_item:Landroid/widget/TextView;

    .line 114
    const v2, 0x7f0c04e0

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/DownloadAdapter$ViewHolder;->tv_version_item:Landroid/widget/TextView;

    .line 115
    const v2, 0x7f0c04e1

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, v1, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/DownloadAdapter$ViewHolder;->pb_progress_item:Landroid/widget/ProgressBar;

    .line 116
    const v2, 0x7f0c04e2

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/DownloadAdapter$ViewHolder;->tv_state_item:Landroid/widget/TextView;

    .line 117
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 122
    :goto_0
    iget-object v2, v1, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/DownloadAdapter$ViewHolder;->tv_name_item:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->getSoftName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    iget-object v2, v1, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/DownloadAdapter$ViewHolder;->tv_version_item:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->getVersionNo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    iget-object v2, v1, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/DownloadAdapter$ViewHolder;->pb_progress_item:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->getProgress()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 126
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->getType()I

    move-result v2

    if-ne v7, v2, :cond_3

    const/4 v2, 0x2

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->getState()I

    move-result v3

    if-ne v2, v3, :cond_3

    iget-boolean v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/DownloadAdapter;->mIsRoot:Z

    if-nez v2, :cond_3

    .line 127
    const-string/jumbo v2, "DownloadAdapter"

    new-array v3, v7, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "getView, position2: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", name:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 128
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->getSoftName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    .line 127
    invoke-static {v2, v3}, Lcom/cnlaunch/framework/utils/NLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 129
    iget-object v2, v1, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/DownloadAdapter$ViewHolder;->tv_state_item:Landroid/widget/TextView;

    const v3, 0x7f0205e1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 130
    iget-object v2, v1, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/DownloadAdapter$ViewHolder;->tv_state_item:Landroid/widget/TextView;

    const/16 v3, 0xff

    invoke-static {v3, v6, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 131
    iget-object v2, v1, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/DownloadAdapter$ViewHolder;->tv_state_item:Landroid/widget/TextView;

    new-instance v3, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/DownloadAdapter$1;

    invoke-direct {v3, p0, v0}, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/DownloadAdapter$1;-><init>(Lcom/cnlaunch/x431pro/activity/upgrade/adapter/DownloadAdapter;Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    :goto_1
    const/4 v2, 0x3

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->getState()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 148
    const/4 v2, 0x5

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->getState()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 149
    const/4 v2, 0x7

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->getState()I

    move-result v3

    if-ne v2, v3, :cond_4

    .line 150
    :cond_0
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/DownloadAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 151
    iget-object v3, v1, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/DownloadAdapter$ViewHolder;->pb_progress_item:Landroid/widget/ProgressBar;

    invoke-virtual {v3}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 150
    if-eq v2, v3, :cond_1

    .line 152
    iget-object v2, v1, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/DownloadAdapter$ViewHolder;->pb_progress_item:Landroid/widget/ProgressBar;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/DownloadAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 153
    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 152
    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 165
    :cond_1
    :goto_2
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->getState()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 207
    :goto_3
    return-object p2

    .line 119
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #holder:Lcom/cnlaunch/x431pro/activity/upgrade/adapter/DownloadAdapter$ViewHolder;
    check-cast v1, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/DownloadAdapter$ViewHolder;

    .restart local v1       #holder:Lcom/cnlaunch/x431pro/activity/upgrade/adapter/DownloadAdapter$ViewHolder;
    goto/16 :goto_0

    .line 142
    :cond_3
    iget-object v2, v1, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/DownloadAdapter$ViewHolder;->tv_state_item:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 143
    iget-object v2, v1, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/DownloadAdapter$ViewHolder;->tv_state_item:Landroid/widget/TextView;

    invoke-static {v6, v6, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 144
    iget-object v2, v1, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/DownloadAdapter$ViewHolder;->tv_state_item:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 157
    :cond_4
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/DownloadAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 158
    iget-object v3, v1, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/DownloadAdapter$ViewHolder;->pb_progress_item:Landroid/widget/ProgressBar;

    invoke-virtual {v3}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 157
    if-eq v2, v3, :cond_1

    .line 159
    iget-object v2, v1, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/DownloadAdapter$ViewHolder;->pb_progress_item:Landroid/widget/ProgressBar;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/DownloadAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 160
    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 159
    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 167
    :pswitch_0
    iget-object v2, v1, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/DownloadAdapter$ViewHolder;->tv_state_item:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/DownloadAdapter;->mContext:Landroid/content/Context;

    const v4, 0x7f070581

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 171
    :pswitch_1
    iget-object v2, v1, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/DownloadAdapter$ViewHolder;->tv_state_item:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/DownloadAdapter;->mContext:Landroid/content/Context;

    const v4, 0x7f070582

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 176
    :pswitch_2
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->getType()I

    move-result v2

    if-ne v7, v2, :cond_5

    iget-boolean v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/DownloadAdapter;->mIsRoot:Z

    if-nez v2, :cond_5

    .line 177
    iget-object v2, v1, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/DownloadAdapter$ViewHolder;->tv_state_item:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/DownloadAdapter;->mContext:Landroid/content/Context;

    const v4, 0x7f070587

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 180
    :cond_5
    iget-object v2, v1, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/DownloadAdapter$ViewHolder;->tv_state_item:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/DownloadAdapter;->mContext:Landroid/content/Context;

    const v4, 0x7f070583

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 185
    :pswitch_3
    iget-object v2, v1, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/DownloadAdapter$ViewHolder;->tv_state_item:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/DownloadAdapter;->mContext:Landroid/content/Context;

    const v4, 0x7f070584

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 189
    :pswitch_4
    iget-object v2, v1, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/DownloadAdapter$ViewHolder;->tv_state_item:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/DownloadAdapter;->mContext:Landroid/content/Context;

    const v4, 0x7f070585

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 193
    :pswitch_5
    iget-object v2, v1, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/DownloadAdapter$ViewHolder;->tv_state_item:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/DownloadAdapter;->mContext:Landroid/content/Context;

    const v4, 0x7f070586

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 197
    :pswitch_6
    iget-object v2, v1, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/DownloadAdapter$ViewHolder;->tv_state_item:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/DownloadAdapter;->mContext:Landroid/content/Context;

    const v4, 0x7f070588

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 200
    :pswitch_7
    iget-object v2, v1, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/DownloadAdapter$ViewHolder;->tv_state_item:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/DownloadAdapter;->mContext:Landroid/content/Context;

    const v4, 0x7f070589

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 165
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
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
    .line 84
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;>;"
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/DownloadAdapter;->list:Ljava/util/List;

    .line 85
    return-void
.end method
