.class public Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;
.super Lcom/cnlaunch/x431pro/activity/BaseFragment;
.source "ClearDiagSingleCarVersionFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/cnlaunch/x431pro/activity/diagnose/listenter/OnDelectDataListenter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/cnlaunch/x431pro/activity/BaseFragment;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Lcom/cnlaunch/x431pro/activity/diagnose/listenter/OnDelectDataListenter;"
    }
.end annotation


# instance fields
.field private final REQUEST_INITEXT:I

.field private carIconUtils:Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;

.field private carName:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private doubleClickFlag:Ljava/lang/String;

.field private firstClickTime:J

.field private mAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SelectCarVerAdapter;

.field private mHandler:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field private mListView:Landroid/widget/ListView;

.field private packageid:Ljava/lang/String;

.field private pathUtils:Lcom/cnlaunch/x431pro/utils/PathUtils;

.field private serialNo:Ljava/lang/String;

.field private tvINIText:Landroid/widget/TextView;

.field private tvINITitle:Landroid/widget/TextView;

.field private verlist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cnlaunch/x431pro/module/diagnose/model/CarVersionInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/BaseFragment;-><init>()V

    .line 49
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;->doubleClickFlag:Ljava/lang/String;

    .line 50
    const/16 v0, 0x2717

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;->REQUEST_INITEXT:I

    .line 55
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;->firstClickTime:J

    .line 216
    new-instance v0, Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment$1;

    invoke-direct {v0, p0}, Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment$1;-><init>(Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;->mHandler:Landroid/os/Handler;

    .line 41
    return-void
.end method

.method static synthetic access$0(Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;)Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SelectCarVerAdapter;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;->mAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SelectCarVerAdapter;

    return-object v0
.end method

.method static synthetic access$1(Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;->verlist:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2(Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;->tvINITitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3(Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;->tvINIText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$4(Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;)Lcom/cnlaunch/x431pro/utils/PathUtils;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;->pathUtils:Lcom/cnlaunch/x431pro/utils/PathUtils;

    return-object v0
.end method

.method static synthetic access$5(Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;->serialNo:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6(Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;->packageid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7(Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;)Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;->carIconUtils:Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;

    return-object v0
.end method

.method static synthetic access$8(Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 216
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private getINIText()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 231
    const/4 v3, 0x0

    .line 233
    .local v3, iniStr:Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    .line 235
    .local v5, lan:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;->verlist:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lt v2, v6, :cond_0

    .line 259
    return-void

    .line 236
    :cond_0
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;->pathUtils:Lcom/cnlaunch/x431pro/utils/PathUtils;

    iget-object v8, p0, Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;->serialNo:Ljava/lang/String;

    iget-object v9, p0, Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;->packageid:Ljava/lang/String;

    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;->verlist:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/cnlaunch/x431pro/module/diagnose/model/CarVersionInfo;

    invoke-virtual {v6}, Lcom/cnlaunch/x431pro/module/diagnose/model/CarVersionInfo;->getVersion()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v8, v9, v6}, Lcom/cnlaunch/x431pro/utils/PathUtils;->getVersionPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 237
    .local v1, filePath:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "INI_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 238
    .local v0, file:Ljava/lang/String;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/utils/file/FileUtils;->isFileExits(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 240
    invoke-static {v5}, Lcom/cnlaunch/x431pro/utils/conversion/LanChaset;->getChaset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/cnlaunch/x431pro/utils/file/FileUtils;->readFileAddNewLine(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 249
    :goto_1
    const/4 v4, 0x0

    .line 250
    .local v4, items:[Ljava/lang/String;
    const-string/jumbo v6, "\n"

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 251
    array-length v6, v4

    const/4 v7, 0x1

    if-le v6, v7, :cond_3

    .line 252
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;->verlist:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/cnlaunch/x431pro/module/diagnose/model/CarVersionInfo;

    aget-object v7, v4, v10

    invoke-virtual {v6, v7}, Lcom/cnlaunch/x431pro/module/diagnose/model/CarVersionInfo;->setIniTitle(Ljava/lang/String;)V

    .line 253
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;->verlist:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/cnlaunch/x431pro/module/diagnose/model/CarVersionInfo;

    aget-object v7, v4, v10

    const-string/jumbo v8, "    "

    invoke-virtual {v3, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/cnlaunch/x431pro/module/diagnose/model/CarVersionInfo;->setIniText(Ljava/lang/String;)V

    .line 235
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 242
    .end local v4           #items:[Ljava/lang/String;
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "INI_EN"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 243
    invoke-static {v0}, Lcom/cnlaunch/x431pro/utils/file/FileUtils;->isFileExits(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 244
    const-string/jumbo v6, "GB2312"

    invoke-static {v0, v6}, Lcom/cnlaunch/x431pro/utils/file/FileUtils;->readFileAddNewLine(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 246
    :cond_2
    const-string/jumbo v3, " "

    goto :goto_1

    .line 255
    .restart local v4       #items:[Ljava/lang/String;
    :cond_3
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;->verlist:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/cnlaunch/x431pro/module/diagnose/model/CarVersionInfo;

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Lcom/cnlaunch/x431pro/module/diagnose/model/CarVersionInfo;->setIniTitle(Ljava/lang/String;)V

    .line 256
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;->verlist:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/cnlaunch/x431pro/module/diagnose/model/CarVersionInfo;

    invoke-virtual {v6, v3}, Lcom/cnlaunch/x431pro/module/diagnose/model/CarVersionInfo;->setIniText(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private getVerList(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/x431pro/utils/db/CarVersion;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cnlaunch/x431pro/module/diagnose/model/CarVersionInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 145
    .local p1, versionSet:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/utils/db/CarVersion;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 146
    :cond_0
    const/4 v2, 0x0

    .line 157
    :cond_1
    return-object v2

    .line 148
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 149
    .local v2, infoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cnlaunch/x431pro/module/diagnose/model/CarVersionInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/x431pro/utils/db/CarVersion;

    .line 150
    .local v0, bean:Lcom/cnlaunch/x431pro/utils/db/CarVersion;
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/utils/db/CarVersion;->getSoftPackageId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/cnlaunch/x431pro/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 151
    new-instance v1, Lcom/cnlaunch/x431pro/module/diagnose/model/CarVersionInfo;

    invoke-direct {v1}, Lcom/cnlaunch/x431pro/module/diagnose/model/CarVersionInfo;-><init>()V

    .line 152
    .local v1, info:Lcom/cnlaunch/x431pro/module/diagnose/model/CarVersionInfo;
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/utils/db/CarVersion;->getVersionNo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/cnlaunch/x431pro/module/diagnose/model/CarVersionInfo;->setVersion(Ljava/lang/String;)V

    .line 153
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/utils/db/CarVersion;->getLanguageList()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/cnlaunch/x431pro/module/diagnose/model/CarVersionInfo;->setLanguage(Ljava/lang/String;)V

    .line 154
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private initView()V
    .locals 5

    .prologue
    .line 128
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;->carIconUtils:Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;->serialNo:Ljava/lang/String;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;->packageid:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;->getMatchedVersionListByLanguage(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 129
    .local v0, matchedVersionSet:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/utils/db/CarVersion;>;"
    invoke-direct {p0, v0}, Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;->getVerList(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;->verlist:Ljava/util/ArrayList;

    .line 130
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0d01d0

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;->mListView:Landroid/widget/ListView;

    .line 131
    new-instance v1, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SelectCarVerAdapter;

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;->verlist:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;->carName:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4, p0}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SelectCarVerAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;Lcom/cnlaunch/x431pro/activity/diagnose/listenter/OnDelectDataListenter;)V

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;->mAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SelectCarVerAdapter;

    .line 132
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;->mAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SelectCarVerAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 133
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 135
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0d01d2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;->tvINIText:Landroid/widget/TextView;

    .line 136
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0d01d1

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;->tvINITitle:Landroid/widget/TextView;

    .line 137
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;->tvINIText:Landroid/widget/TextView;

    new-instance v2, Landroid/text/method/ScrollingMovementMethod;

    invoke-direct {v2}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 138
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0d003b

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 139
    return-void
.end method


# virtual methods
.method public delSoftByPosition(I)V
    .locals 6
    .parameter "position"

    .prologue
    const/4 v5, 0x0

    .line 164
    const v1, 0x7f0704fd

    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "["

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;->carName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, " - "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;->verlist:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/x431pro/module/diagnose/model/CarVersionInfo;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/diagnose/model/CarVersionInfo;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "]"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 165
    .local v0, noticeStr:Ljava/lang/String;
    new-instance v1, Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment$2;

    invoke-direct {v1, p0, p1}, Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment$2;-><init>(Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;I)V

    .line 184
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0704fa

    invoke-virtual {p0, v3}, Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0, v5}, Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment$2;->showDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 185
    return-void
.end method

.method public doInBackground(I)Ljava/lang/Object;
    .locals 1
    .parameter "requestCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/framework/network/http/HttpException;
        }
    .end annotation

    .prologue
    .line 189
    packed-switch p1, :pswitch_data_0

    .line 198
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->doInBackground(I)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    .line 191
    :pswitch_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;->verlist:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 192
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 194
    :cond_0
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;->getINIText()V

    .line 195
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 189
    nop

    :pswitch_data_0
    .packed-switch 0x2717
        :pswitch_0
    .end packed-switch
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 93
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 94
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;->context:Landroid/content/Context;

    .line 95
    new-instance v0, Lcom/cnlaunch/x431pro/utils/PathUtils;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/cnlaunch/x431pro/utils/PathUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;->pathUtils:Lcom/cnlaunch/x431pro/utils/PathUtils;

    .line 96
    new-instance v0, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;->carIconUtils:Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;

    .line 98
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;->initView()V

    .line 99
    const/16 v0, 0x2717

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;->request(IZ)V

    .line 100
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 101
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 3
    .parameter "activity"

    .prologue
    .line 59
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->onAttach(Landroid/app/Activity;)V

    .line 60
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 61
    .local v0, bundle:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 62
    invoke-static {}, Lcom/cnlaunch/framework/utils/lang/LangManager;->getLanguage()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "zh"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 63
    const-string/jumbo v1, "carname_zh"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;->carName:Ljava/lang/String;

    .line 67
    :goto_0
    const-string/jumbo v1, "softpackageid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;->packageid:Ljava/lang/String;

    .line 68
    const-string/jumbo v1, "serialNo"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;->serialNo:Ljava/lang/String;

    .line 70
    :cond_0
    return-void

    .line 65
    :cond_1
    const-string/jumbo v1, "carname"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;->carName:Ljava/lang/String;

    goto :goto_0
.end method

.method public onCreateFragmentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 105
    const v0, 0x7f03007a

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 0

    .prologue
    .line 88
    invoke-super {p0}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->onDestroyView()V

    .line 89
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 110
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;->verlist:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;->verlist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 111
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;->doubleClickFlag:Ljava/lang/String;

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;->verlist:Ljava/util/ArrayList;

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cnlaunch/x431pro/module/diagnose/model/CarVersionInfo;

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/module/diagnose/model/CarVersionInfo;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 112
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 113
    .local v0, secondClickTime:J
    iget-wide v2, p0, Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;->firstClickTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x7d0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 115
    const-string/jumbo v2, ""

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;->doubleClickFlag:Ljava/lang/String;

    .line 116
    iput-wide v0, p0, Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;->firstClickTime:J

    .line 125
    .end local v0           #secondClickTime:J
    :cond_0
    :goto_0
    return-void

    .line 119
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;->firstClickTime:J

    .line 120
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;->verlist:Ljava/util/ArrayList;

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cnlaunch/x431pro/module/diagnose/model/CarVersionInfo;

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/module/diagnose/model/CarVersionInfo;->getVersion()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;->doubleClickFlag:Ljava/lang/String;

    .line 121
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;->mAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SelectCarVerAdapter;

    invoke-virtual {v2, p3}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SelectCarVerAdapter;->setItemIsActive(I)V

    .line 122
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public onSuccess(ILjava/lang/Object;)V
    .locals 2
    .parameter "requestCode"
    .parameter "result"

    .prologue
    .line 204
    packed-switch p1, :pswitch_data_0

    .line 211
    invoke-super {p0, p1, p2}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->onSuccess(ILjava/lang/Object;)V

    .line 213
    .end local p2
    :cond_0
    :goto_0
    return-void

    .line 206
    .restart local p2
    :pswitch_0
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 204
    :pswitch_data_0
    .packed-switch 0x2717
        :pswitch_0
    .end packed-switch
.end method

.method public setBundle(Landroid/os/Bundle;)V
    .locals 2
    .parameter "bundle"

    .prologue
    .line 74
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->setBundle(Landroid/os/Bundle;)V

    .line 75
    if-eqz p1, :cond_0

    .line 76
    invoke-static {}, Lcom/cnlaunch/framework/utils/lang/LangManager;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "zh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    const-string/jumbo v0, "carname_zh"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;->carName:Ljava/lang/String;

    .line 81
    :goto_0
    const-string/jumbo v0, "softpackageid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;->packageid:Ljava/lang/String;

    .line 82
    const-string/jumbo v0, "serialNo"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;->serialNo:Ljava/lang/String;

    .line 84
    :cond_0
    return-void

    .line 79
    :cond_1
    const-string/jumbo v0, "carname"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;->carName:Ljava/lang/String;

    goto :goto_0
.end method
