.class public Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CarIconAdapter;
.super Landroid/widget/BaseAdapter;
.source "CarIconAdapter.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "DefaultLocale"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CarIconAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final tag:Ljava/lang/String;


# instance fields
.field private holder:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CarIconAdapter$ViewHolder;

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/x431pro/utils/db/CarIcon;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CarIconAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CarIconAdapter;->tag:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    .line 47
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CarIconAdapter;->mContext:Landroid/content/Context;

    .line 49
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CarIconAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CarIconAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 50
    new-instance v0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    new-instance v1, Lcom/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer;

    const/16 v2, 0x64

    invoke-direct {v1, v2}, Lcom/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->displayer(Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheInMemory(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheOnDisc(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CarIconAdapter;->options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 51
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CarIconAdapter;->list:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CarIconAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 72
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
    .line 77
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CarIconAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 82
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
            "Lcom/cnlaunch/x431pro/utils/db/CarIcon;",
            ">;"
        }
    .end annotation

    .prologue
    .line 60
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CarIconAdapter;->list:Ljava/util/List;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 87
    if-nez p2, :cond_0

    .line 88
    new-instance v5, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CarIconAdapter$ViewHolder;

    invoke-direct {v5, p0}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CarIconAdapter$ViewHolder;-><init>(Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CarIconAdapter;)V

    iput-object v5, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CarIconAdapter;->holder:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CarIconAdapter$ViewHolder;

    .line 89
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CarIconAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f030040

    invoke-virtual {v5, v6, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 90
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CarIconAdapter;->holder:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CarIconAdapter$ViewHolder;

    const v5, 0x7f0d00e9

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, v6, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CarIconAdapter$ViewHolder;->car_logo:Landroid/widget/ImageView;

    .line 91
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CarIconAdapter;->holder:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CarIconAdapter$ViewHolder;

    const v5, 0x7f0d00ea

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v6, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CarIconAdapter$ViewHolder;->car_name_zh:Landroid/widget/TextView;

    .line 92
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CarIconAdapter;->holder:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CarIconAdapter$ViewHolder;

    const v5, 0x7f0d00e8

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v6, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CarIconAdapter$ViewHolder;->car_name:Landroid/widget/TextView;

    .line 93
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CarIconAdapter;->holder:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CarIconAdapter$ViewHolder;

    invoke-virtual {p2, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 98
    :goto_0
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CarIconAdapter;->list:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/x431pro/utils/db/CarIcon;

    .line 100
    .local v0, bean:Lcom/cnlaunch/x431pro/utils/db/CarIcon;
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CarIconAdapter;->holder:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CarIconAdapter$ViewHolder;

    iget-object v5, v5, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CarIconAdapter$ViewHolder;->car_name:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CarIconAdapter;->holder:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CarIconAdapter$ViewHolder;

    iget-object v5, v5, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CarIconAdapter$ViewHolder;->car_name_zh:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->getName_zh()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    invoke-static {}, Lcom/cnlaunch/framework/utils/lang/LangManager;->getLanguage()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "zh"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 104
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CarIconAdapter;->holder:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CarIconAdapter$ViewHolder;

    iget-object v5, v5, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CarIconAdapter$ViewHolder;->car_name:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 105
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CarIconAdapter;->holder:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CarIconAdapter$ViewHolder;

    iget-object v5, v5, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CarIconAdapter$ViewHolder;->car_logo:Landroid/widget/ImageView;

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 106
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CarIconAdapter;->holder:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CarIconAdapter$ViewHolder;

    iget-object v5, v5, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CarIconAdapter$ViewHolder;->car_name_zh:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 108
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CarIconAdapter;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v5

    const-string/jumbo v6, "serialNo"

    invoke-virtual {v5, v6}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 109
    .local v3, serialNo:Ljava/lang/String;
    const/4 v4, 0x0

    .line 111
    .local v4, uri:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->getIcon()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 112
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "file://"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/cnlaunch/x431pro/utils/PathUtils;->getVehiclesPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->getAreaId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->getSoftPackageId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 113
    const-string/jumbo v6, "ICONCN.PNG"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 112
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 114
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v5

    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CarIconAdapter;->holder:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CarIconAdapter$ViewHolder;

    iget-object v6, v6, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CarIconAdapter$ViewHolder;->car_logo:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CarIconAdapter;->options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v5, v4, v6, v7}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 126
    .end local v3           #serialNo:Ljava/lang/String;
    .end local v4           #uri:Ljava/lang/String;
    :goto_1
    return-object p2

    .line 95
    .end local v0           #bean:Lcom/cnlaunch/x431pro/utils/db/CarIcon;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CarIconAdapter$ViewHolder;

    iput-object v5, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CarIconAdapter;->holder:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CarIconAdapter$ViewHolder;

    goto/16 :goto_0

    .line 116
    .restart local v0       #bean:Lcom/cnlaunch/x431pro/utils/db/CarIcon;
    .restart local v3       #serialNo:Ljava/lang/String;
    .restart local v4       #uri:Ljava/lang/String;
    :cond_1
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CarIconAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->getIcon()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "drawable"

    iget-object v8, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CarIconAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 118
    .local v2, logoId:I
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "drawable://"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 119
    .local v1, imageUri:Ljava/lang/String;
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v5

    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CarIconAdapter;->holder:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CarIconAdapter$ViewHolder;

    iget-object v6, v6, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CarIconAdapter$ViewHolder;->car_logo:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CarIconAdapter;->options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v5, v1, v6, v7}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    goto :goto_1

    .line 122
    .end local v1           #imageUri:Ljava/lang/String;
    .end local v2           #logoId:I
    .end local v3           #serialNo:Ljava/lang/String;
    .end local v4           #uri:Ljava/lang/String;
    :cond_2
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CarIconAdapter;->holder:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CarIconAdapter$ViewHolder;

    iget-object v5, v5, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CarIconAdapter$ViewHolder;->car_name:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 123
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CarIconAdapter;->holder:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CarIconAdapter$ViewHolder;

    iget-object v5, v5, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CarIconAdapter$ViewHolder;->car_logo:Landroid/widget/ImageView;

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 124
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CarIconAdapter;->holder:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CarIconAdapter$ViewHolder;

    iget-object v5, v5, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CarIconAdapter$ViewHolder;->car_name_zh:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method public setList(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/x431pro/utils/db/CarIcon;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 64
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/utils/db/CarIcon;>;"
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CarIconAdapter;->list:Ljava/util/List;

    .line 65
    return-void
.end method
