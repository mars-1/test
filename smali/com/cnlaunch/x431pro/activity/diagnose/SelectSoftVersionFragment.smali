.class public Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;
.super Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDiagnoseFragment;
.source "SelectSoftVersionFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/cnlaunch/x431pro/activity/diagnose/listenter/OnDelectDataListenter;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDiagnoseFragment;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Lcom/cnlaunch/x431pro/activity/diagnose/listenter/OnDelectDataListenter;"
    }
.end annotation


# static fields
.field private static final RESETBTN:I = 0x123

.field private static final RESETTIME:I = 0x111

.field private static final tag:Ljava/lang/String;


# instance fields
.field private final REQUEST_INITEXT:I

.field private btnBluetooth:Landroid/widget/Button;

.field private btnSure:Landroid/widget/Button;

.field private carIconUtils:Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;

.field private carName:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private doubleClickFlag:Ljava/lang/String;

.field private firstClickTime:J

.field private mAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SelectCarVerAdapter;

.field private mHandler:Landroid/os/Handler;

.field private mListView:Landroid/widget/ListView;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private packageid:Ljava/lang/String;

.field private pathUtils:Lcom/cnlaunch/x431pro/utils/PathUtils;

.field private serialNo:Ljava/lang/String;

.field private strList:Ljava/lang/String;

.field private strPrint:Ljava/lang/String;

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
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    const-class v0, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->tag:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDiagnoseFragment;-><init>()V

    .line 78
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->doubleClickFlag:Ljava/lang/String;

    .line 79
    const/16 v0, 0x2717

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->REQUEST_INITEXT:I

    .line 84
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->firstClickTime:J

    .line 302
    new-instance v0, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment$1;

    invoke-direct {v0, p0}, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment$1;-><init>(Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->mHandler:Landroid/os/Handler;

    .line 397
    new-instance v0, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment$2;

    invoke-direct {v0, p0}, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment$2;-><init>(Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 66
    return-void
.end method

.method static synthetic access$0(Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->btnSure:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1(Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->btnBluetooth:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$10(Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 76
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->packageid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$11(Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;)Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;
    .locals 1
    .parameter

    .prologue
    .line 83
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->carIconUtils:Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;

    return-object v0
.end method

.method static synthetic access$2(Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 302
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3(Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;)Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SelectCarVerAdapter;
    .locals 1
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->mAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SelectCarVerAdapter;

    return-object v0
.end method

.method static synthetic access$4(Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->verlist:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$5(Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->tvINITitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$6(Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->tvINIText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$7(Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->strPrint:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$8(Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;)Lcom/cnlaunch/x431pro/utils/PathUtils;
    .locals 1
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->pathUtils:Lcom/cnlaunch/x431pro/utils/PathUtils;

    return-object v0
.end method

.method static synthetic access$9(Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->serialNo:Ljava/lang/String;

    return-object v0
.end method

.method private getINIText()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 331
    const/4 v2, 0x0

    .line 333
    .local v2, iniStr:Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 334
    .local v4, lan:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->verlist:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v1, v5, :cond_0

    .line 374
    return-void

    .line 335
    :cond_0
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->pathUtils:Lcom/cnlaunch/x431pro/utils/PathUtils;

    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->serialNo:Ljava/lang/String;

    iget-object v8, p0, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->packageid:Ljava/lang/String;

    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->verlist:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/cnlaunch/x431pro/module/diagnose/model/CarVersionInfo;

    invoke-virtual {v5}, Lcom/cnlaunch/x431pro/module/diagnose/model/CarVersionInfo;->getVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v7, v8, v5}, Lcom/cnlaunch/x431pro/utils/PathUtils;->getVersionPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 336
    .local v0, filePath:Ljava/lang/String;
    invoke-static {v4, v0}, Lcom/cnlaunch/x431pro/utils/conversion/INIFileBulider;->getLanINIFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 364
    const/4 v3, 0x0

    .line 365
    .local v3, items:[Ljava/lang/String;
    const-string/jumbo v5, "\n"

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 366
    array-length v5, v3

    const/4 v6, 0x1

    if-le v5, v6, :cond_1

    .line 367
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->verlist:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/cnlaunch/x431pro/module/diagnose/model/CarVersionInfo;

    aget-object v6, v3, v9

    invoke-virtual {v5, v6}, Lcom/cnlaunch/x431pro/module/diagnose/model/CarVersionInfo;->setIniTitle(Ljava/lang/String;)V

    .line 368
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->verlist:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/cnlaunch/x431pro/module/diagnose/model/CarVersionInfo;

    aget-object v6, v3, v9

    const-string/jumbo v7, "    "

    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/cnlaunch/x431pro/module/diagnose/model/CarVersionInfo;->setIniText(Ljava/lang/String;)V

    .line 334
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 370
    :cond_1
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->verlist:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/cnlaunch/x431pro/module/diagnose/model/CarVersionInfo;

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Lcom/cnlaunch/x431pro/module/diagnose/model/CarVersionInfo;->setIniTitle(Ljava/lang/String;)V

    .line 371
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->verlist:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/cnlaunch/x431pro/module/diagnose/model/CarVersionInfo;

    invoke-virtual {v5, v2}, Lcom/cnlaunch/x431pro/module/diagnose/model/CarVersionInfo;->setIniText(Ljava/lang/String;)V

    goto :goto_1
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
    .line 208
    .local p1, versionSet:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/utils/db/CarVersion;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 209
    :cond_0
    const/4 v2, 0x0

    .line 220
    :cond_1
    return-object v2

    .line 211
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 212
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

    .line 213
    .local v0, bean:Lcom/cnlaunch/x431pro/utils/db/CarVersion;
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/utils/db/CarVersion;->getSoftPackageId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/cnlaunch/x431pro/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 214
    new-instance v1, Lcom/cnlaunch/x431pro/module/diagnose/model/CarVersionInfo;

    invoke-direct {v1}, Lcom/cnlaunch/x431pro/module/diagnose/model/CarVersionInfo;-><init>()V

    .line 215
    .local v1, info:Lcom/cnlaunch/x431pro/module/diagnose/model/CarVersionInfo;
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/utils/db/CarVersion;->getVersionNo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/cnlaunch/x431pro/module/diagnose/model/CarVersionInfo;->setVersion(Ljava/lang/String;)V

    .line 216
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/utils/db/CarVersion;->getLanguageList()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/cnlaunch/x431pro/module/diagnose/model/CarVersionInfo;->setLanguage(Ljava/lang/String;)V

    .line 217
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private initView()V
    .locals 5

    .prologue
    .line 158
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->carIconUtils:Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->serialNo:Ljava/lang/String;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->packageid:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;->getMatchedVersionListByLanguage(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 159
    .local v0, matchedVersionSet:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/utils/db/CarVersion;>;"
    invoke-direct {p0, v0}, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->getVerList(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->verlist:Ljava/util/ArrayList;

    .line 160
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0d01d0

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->mListView:Landroid/widget/ListView;

    .line 161
    new-instance v1, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SelectCarVerAdapter;

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->verlist:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->carName:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4, p0}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SelectCarVerAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;Lcom/cnlaunch/x431pro/activity/diagnose/listenter/OnDelectDataListenter;)V

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->mAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SelectCarVerAdapter;

    .line 162
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->mAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SelectCarVerAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 163
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 164
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0d004f

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->btnSure:Landroid/widget/Button;

    .line 165
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0d01cf

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->btnBluetooth:Landroid/widget/Button;

    .line 166
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->btnSure:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->btnBluetooth:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0d01d2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->tvINIText:Landroid/widget/TextView;

    .line 169
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0d01d1

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->tvINITitle:Landroid/widget/TextView;

    .line 170
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->tvINIText:Landroid/widget/TextView;

    new-instance v2, Landroid/text/method/ScrollingMovementMethod;

    invoke-direct {v2}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 171
    return-void
.end method

.method private registerBroadcastReceiver()V
    .locals 3

    .prologue
    .line 392
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 393
    .local v0, filter:Landroid/content/IntentFilter;
    const-string/jumbo v1, "DownloadBin_DisConnBluetooth"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 394
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 395
    return-void
.end method

.method private setDiagnoseRuningInfo(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 419
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->getCallBack()Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;->getDiagnoseRunningInfo()Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;

    move-result-object v0

    .line 420
    .local v0, info:Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->carName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->setCarSoftName(Ljava/lang/String;)V

    .line 421
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->serialNo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->setSerialNum(Ljava/lang/String;)V

    .line 422
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->packageid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->setSoftPackageid(Ljava/lang/String;)V

    .line 423
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->verlist:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/x431pro/module/diagnose/model/CarVersionInfo;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/diagnose/model/CarVersionInfo;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->setSoftVersion(Ljava/lang/String;)V

    .line 424
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->setSoftLan(Ljava/lang/String;)V

    .line 425
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->getCallBack()Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;->setDiagnoseRunningInfo(Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;)V

    .line 426
    return-void
.end method

.method private showSelectDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "name"
    .parameter "path"
    .parameter "language"

    .prologue
    const/4 v3, 0x0

    .line 231
    const-string/jumbo v1, "Demo"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 232
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v1

    const-string/jumbo v2, "tryFlag"

    invoke-virtual {v1, v2, v3}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/cnlaunch/x431pro/common/Constants;->FactoryPattern:Z

    if-nez v1, :cond_0

    .line 233
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 234
    .local v0, diagStartTime:Ljava/lang/Long;
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v1

    const-string/jumbo v2, "diagStartTime"

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;J)V

    .line 235
    const/4 v1, 0x1

    sput-boolean v1, Lcom/cnlaunch/x431pro/common/Constants;->StartDiagFlag:Z

    .line 237
    .end local v0           #diagStartTime:Ljava/lang/Long;
    :cond_0
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->getCallBack()Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

    move-result-object v1

    invoke-interface {v1, p2, p3}, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;->launchDiagnose(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    :goto_0
    return-void

    .line 239
    :cond_1
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->getCallBack()Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

    move-result-object v1

    invoke-interface {v1, v3, p2, p3}, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;->connectDrive(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private startCarDiagnose(I)V
    .locals 6
    .parameter "position"

    .prologue
    .line 196
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->pathUtils:Lcom/cnlaunch/x431pro/utils/PathUtils;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->serialNo:Ljava/lang/String;

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->packageid:Ljava/lang/String;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->verlist:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/x431pro/module/diagnose/model/CarVersionInfo;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/diagnose/model/CarVersionInfo;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v4, v1}, Lcom/cnlaunch/x431pro/utils/PathUtils;->getSoftLibPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 198
    .local v0, path:Ljava/lang/String;
    :try_start_0
    invoke-direct {p0, p1}, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->setDiagnoseRuningInfo(I)V

    .line 199
    sget-object v1, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->tag:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "path="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/cnlaunch/framework/utils/NLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 200
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->carName:Ljava/lang/String;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->verlist:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/x431pro/module/diagnose/model/CarVersionInfo;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/diagnose/model/CarVersionInfo;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v2, v0, v1}, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->showSelectDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    :goto_0
    return-void

    .line 201
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public delSoftByPosition(I)V
    .locals 6
    .parameter "position"

    .prologue
    const/4 v5, 0x0

    .line 250
    const v1, 0x7f0704fd

    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "["

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->carName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, " - "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->verlist:Ljava/util/ArrayList;

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

    .line 251
    .local v0, noticeStr:Ljava/lang/String;
    new-instance v1, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment$3;

    invoke-direct {v1, p0, p1}, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment$3;-><init>(Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;I)V

    .line 271
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0704fa

    invoke-virtual {p0, v3}, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0, v5}, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment$3;->showDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 272
    return-void
.end method

.method public deleteTempSo()V
    .locals 5

    .prologue
    .line 381
    const/4 v0, 0x0

    .line 382
    .local v0, dataDir:Ljava/lang/String;
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 384
    .local v2, pm:Landroid/content/pm/PackageManager;
    :try_start_0
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v0, v3, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 388
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "/libs/cnlaunch/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/cnlaunch/diagnosemodule/utils/CopyFile;->delectFile(Ljava/lang/String;)I

    .line 389
    return-void

    .line 385
    :catch_0
    move-exception v1

    .line 386
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public disconnectBluetooth()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 413
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/MainActivity;->setDiagFlag(Z)V

    .line 414
    sput-boolean v0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->driviceConnStatus:Z

    .line 415
    invoke-static {}, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->getInstance()Lcom/cnlaunch/physics/bluetooth/BluetoothManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->stopConnectThread()V

    .line 416
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
    .line 276
    packed-switch p1, :pswitch_data_0

    .line 285
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDiagnoseFragment;->doInBackground(I)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    .line 278
    :pswitch_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->verlist:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 279
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 281
    :cond_0
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->getINIText()V

    .line 282
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 276
    nop

    :pswitch_data_0
    .packed-switch 0x2717
        :pswitch_0
    .end packed-switch
.end method

.method public getMainTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 245
    const v0, 0x7f0704ff

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrintData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->strPrint:Ljava/lang/String;

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 116
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDiagnoseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 117
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->context:Landroid/content/Context;

    .line 118
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->registerBroadcastReceiver()V

    .line 119
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/cnlaunch/x431pro/utils/diagnose/DiagnoseUtils;->deleteTempSo(Landroid/content/Context;)V

    .line 120
    new-instance v0, Lcom/cnlaunch/x431pro/utils/PathUtils;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/cnlaunch/x431pro/utils/PathUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->pathUtils:Lcom/cnlaunch/x431pro/utils/PathUtils;

    .line 121
    new-instance v0, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->carIconUtils:Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;

    .line 122
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v0

    const-string/jumbo v1, "serialNo"

    invoke-virtual {v0, v1}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->serialNo:Ljava/lang/String;

    .line 123
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->initView()V

    .line 124
    const/16 v0, 0x2717

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->request(IZ)V

    .line 126
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->getCallBack()Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;->getDiagnoseRunningInfo()Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->isUploadSaveReport()Z

    move-result v0

    if-nez v0, :cond_0

    .line 127
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->getCallBack()Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;->upLoadSaveReport()V

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 130
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 3
    .parameter "activity"

    .prologue
    .line 91
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDiagnoseFragment;->onAttach(Landroid/app/Activity;)V

    .line 92
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 93
    .local v0, bundle:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 94
    invoke-static {}, Lcom/cnlaunch/framework/utils/lang/LangManager;->getLanguage()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "zh"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 95
    const-string/jumbo v1, "carname_zh"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->carName:Ljava/lang/String;

    .line 99
    :goto_0
    const-string/jumbo v1, "versionlist"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->strList:Ljava/lang/String;

    .line 100
    const-string/jumbo v1, "softpackageid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->packageid:Ljava/lang/String;

    .line 102
    :cond_0
    return-void

    .line 97
    :cond_1
    const-string/jumbo v1, "carname"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->carName:Ljava/lang/String;

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    .line 175
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDiagnoseFragment;->onClick(Landroid/view/View;)V

    .line 176
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 177
    .local v1, id:I
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->mAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SelectCarVerAdapter;

    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SelectCarVerAdapter;->getItemSelect()I

    move-result v3

    .line 178
    .local v3, position:I
    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 193
    :cond_0
    :goto_0
    return-void

    .line 181
    :cond_1
    const v4, 0x7f0d004f

    if-ne v1, v4, :cond_2

    .line 182
    invoke-direct {p0, v3}, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->startCarDiagnose(I)V

    goto :goto_0

    .line 183
    :cond_2
    const v4, 0x7f0d01cf

    if-ne v1, v4, :cond_0

    .line 184
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->pathUtils:Lcom/cnlaunch/x431pro/utils/PathUtils;

    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->serialNo:Ljava/lang/String;

    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->packageid:Ljava/lang/String;

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->verlist:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cnlaunch/x431pro/module/diagnose/model/CarVersionInfo;

    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/module/diagnose/model/CarVersionInfo;->getVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v6, v7, v4}, Lcom/cnlaunch/x431pro/utils/PathUtils;->getSoftLibPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 185
    .local v2, path:Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->setDiagnoseRuningInfo(I)V

    .line 186
    const/4 v4, 0x0

    sput-boolean v4, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->driviceConnStatus:Z

    .line 187
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 188
    .local v0, bluetoothActivityStartIntent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->mContext:Landroid/content/Context;

    const-class v5, Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity;

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 189
    const-string/jumbo v4, "Lib_path"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 190
    const-string/jumbo v5, "Lib_language"

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->verlist:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cnlaunch/x431pro/module/diagnose/model/CarVersionInfo;

    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/module/diagnose/model/CarVersionInfo;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 191
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onCreateFragmentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 134
    const v0, 0x7f03007a

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 430
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 431
    invoke-super {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDiagnoseFragment;->onDestroy()V

    .line 432
    return-void
.end method

.method public onDestroyView()V
    .locals 0

    .prologue
    .line 106
    invoke-super {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDiagnoseFragment;->onDestroyView()V

    .line 107
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
    .line 139
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->verlist:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->verlist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 140
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->doubleClickFlag:Ljava/lang/String;

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->verlist:Ljava/util/ArrayList;

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cnlaunch/x431pro/module/diagnose/model/CarVersionInfo;

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/module/diagnose/model/CarVersionInfo;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 141
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 142
    .local v0, secondClickTime:J
    iget-wide v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->firstClickTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x7d0

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    .line 143
    invoke-direct {p0, p3}, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->startCarDiagnose(I)V

    .line 155
    .end local v0           #secondClickTime:J
    :cond_0
    :goto_0
    return-void

    .line 145
    .restart local v0       #secondClickTime:J
    :cond_1
    const-string/jumbo v2, ""

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->doubleClickFlag:Ljava/lang/String;

    .line 146
    iput-wide v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->firstClickTime:J

    goto :goto_0

    .line 149
    .end local v0           #secondClickTime:J
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->firstClickTime:J

    .line 150
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->verlist:Ljava/util/ArrayList;

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cnlaunch/x431pro/module/diagnose/model/CarVersionInfo;

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/module/diagnose/model/CarVersionInfo;->getVersion()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->doubleClickFlag:Ljava/lang/String;

    .line 151
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->mAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SelectCarVerAdapter;

    invoke-virtual {v2, p3}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SelectCarVerAdapter;->setItemIsActive(I)V

    .line 152
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 225
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->getCallBack()Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;->exitDiagnoseRunning(I)V

    .line 226
    const/4 v0, 0x1

    return v0
.end method

.method public onSuccess(ILjava/lang/Object;)V
    .locals 2
    .parameter "requestCode"
    .parameter "result"

    .prologue
    .line 291
    packed-switch p1, :pswitch_data_0

    .line 298
    invoke-super {p0, p1, p2}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDiagnoseFragment;->onSuccess(ILjava/lang/Object;)V

    .line 300
    .end local p2
    :cond_0
    :goto_0
    return-void

    .line 293
    .restart local p2
    :pswitch_0
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 291
    :pswitch_data_0
    .packed-switch 0x2717
        :pswitch_0
    .end packed-switch
.end method
