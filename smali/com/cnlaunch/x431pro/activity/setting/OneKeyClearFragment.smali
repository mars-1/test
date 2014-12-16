.class public Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment;
.super Lcom/cnlaunch/x431pro/activity/BaseFragment;
.source "OneKeyClearFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment$SortRuleCollator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/cnlaunch/x431pro/activity/BaseFragment;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field private final REQ_CLEARFILE_CODE:I

.field private final REQ_GETCARICON_CODE:I

.field private final REQ_UpdateCARICON_CODE:I

.field private allAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CarIconAdapter;

.field private allList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/x431pro/utils/db/CarIcon;",
            ">;"
        }
    .end annotation
.end field

.field private carIconUtils:Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;

.field private currentSerial:Ljava/lang/String;

.field private gridview:Landroid/widget/GridView;

.field private lastestVerisonNum:Ljava/lang/String;

.field private lstLastestNum:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private pathUtils:Lcom/cnlaunch/x431pro/utils/PathUtils;

.field private preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

.field private radio_clear:Landroid/widget/Button;

.field private serialNo_Prefix:Ljava/lang/String;

.field private serialNumberDao:Lcom/cnlaunch/x431pro/utils/db/SerialNumberDao;

.field private tv_lastest_num:Landroid/widget/TextView;

.field private tv_serialNo:Landroid/widget/TextView;

.field private userSerialNumberList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/x431pro/utils/db/SerialNumber;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/BaseFragment;-><init>()V

    .line 43
    const/16 v0, 0x271a

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment;->REQ_GETCARICON_CODE:I

    .line 44
    const/16 v0, 0x271b

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment;->REQ_UpdateCARICON_CODE:I

    .line 45
    const/16 v0, 0x271c

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment;->REQ_CLEARFILE_CODE:I

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment;->lstLastestNum:Ljava/util/List;

    .line 41
    return-void
.end method

.method static synthetic access$0(Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment;->lstLastestNum:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1(Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment;->tv_lastest_num:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment;->lastestVerisonNum:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$3(Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4(Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment;->lastestVerisonNum:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5(Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment;->tv_serialNo:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$6(Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 383
    invoke-direct {p0, p1}, Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment;->setSN(Ljava/lang/String;)V

    return-void
.end method

.method private clearSoftFiles()V
    .locals 11

    .prologue
    .line 253
    iget-object v8, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment;->allList:Ljava/util/List;

    if-nez v8, :cond_1

    .line 278
    :cond_0
    :goto_0
    return-void

    .line 255
    :cond_1
    const/4 v0, 0x0

    .line 256
    .local v0, bclearFile:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget-object v8, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment;->allList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-lt v2, v8, :cond_2

    .line 275
    if-eqz v0, :cond_0

    .line 276
    iget-object v8, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v8

    const-string/jumbo v9, "need_refresh"

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Z)V

    goto :goto_0

    .line 257
    :cond_2
    iget-object v8, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment;->allList:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/cnlaunch/x431pro/utils/db/CarIcon;

    invoke-virtual {v8}, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->getSoftPackageId()Ljava/lang/String;

    move-result-object v6

    .line 258
    .local v6, packageid:Ljava/lang/String;
    iget-object v8, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment;->carIconUtils:Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;

    iget-object v9, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment;->currentSerial:Ljava/lang/String;

    invoke-virtual {v8, v9, v6}, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;->getMatchedVersionListByLanguage(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 259
    .local v4, matchedVersionSet:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/utils/db/CarVersion;>;"
    if-eqz v4, :cond_0

    .line 261
    iget-object v8, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment;->lastestVerisonNum:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 263
    .local v5, num:I
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    .line 264
    .local v7, versionSize:I
    if-le v7, v5, :cond_3

    .line 266
    new-instance v8, Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment$SortRuleCollator;

    invoke-direct {v8, p0}, Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment$SortRuleCollator;-><init>(Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment;)V

    invoke-static {v4, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 267
    move v3, v5

    .local v3, j:I
    :goto_2
    if-lt v3, v7, :cond_4

    .line 272
    const/4 v0, 0x1

    .line 256
    .end local v3           #j:I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 268
    .restart local v3       #j:I
    :cond_4
    iget-object v9, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment;->pathUtils:Lcom/cnlaunch/x431pro/utils/PathUtils;

    iget-object v10, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment;->currentSerial:Ljava/lang/String;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/cnlaunch/x431pro/utils/db/CarVersion;

    invoke-virtual {v8}, Lcom/cnlaunch/x431pro/utils/db/CarVersion;->getVersionNo()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v10, v6, v8}, Lcom/cnlaunch/x431pro/utils/PathUtils;->getVersionPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 269
    .local v1, filePath:Ljava/lang/String;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/utils/file/FileUtils;->deleteDirectory(Ljava/lang/String;)V

    .line 270
    iget-object v9, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment;->carIconUtils:Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;

    iget-object v10, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment;->currentSerial:Ljava/lang/String;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/cnlaunch/x431pro/utils/db/CarVersion;

    invoke-virtual {v8}, Lcom/cnlaunch/x431pro/utils/db/CarVersion;->getVersionNo()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v10, v6, v8}, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;->removeTheCarVersion(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method

.method private clickToDiag(Landroid/widget/AdapterView;I)V
    .locals 5
    .parameter
    .parameter "position"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;I)V"
        }
    .end annotation

    .prologue
    .line 141
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p2}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/x431pro/utils/db/CarIcon;

    .line 142
    .local v1, carIcon:Lcom/cnlaunch/x431pro/utils/db/CarIcon;
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->getIsDownload()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 143
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 144
    .local v0, bundle:Landroid/os/Bundle;
    const-string/jumbo v2, "versionlist"

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->getVersionlist()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const-string/jumbo v2, "carname"

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    const-string/jumbo v2, "carname_zh"

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->getName_zh()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const-string/jumbo v2, "softpackageid"

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->getSoftPackageId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    const-string/jumbo v2, "serialNo"

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment;->currentSerial:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    const-class v2, Lcom/cnlaunch/x431pro/activity/setting/ClearDiagSingleCarVersionFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment;->replaceFragment(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 155
    .end local v0           #bundle:Landroid/os/Bundle;
    :goto_0
    return-void

    .line 153
    :cond_0
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "\u672a\u4e0b\u8f7d"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initData()V
    .locals 3

    .prologue
    .line 82
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment;->lstLastestNum:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 83
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment;->lstLastestNum:Ljava/util/List;

    const-string/jumbo v1, "1"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment;->lstLastestNum:Ljava/util/List;

    const-string/jumbo v1, "2"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment;->lstLastestNum:Ljava/util/List;

    const-string/jumbo v1, "3"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment;->lstLastestNum:Ljava/util/List;

    const-string/jumbo v1, "4"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment;->lstLastestNum:Ljava/util/List;

    const-string/jumbo v1, "5"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/x431pro/common/Constants;->LASTEST_VERSION_NUMBER:Ljava/lang/String;

    const-string/jumbo v2, "2"

    invoke-virtual {v0, v1, v2}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment;->lastestVerisonNum:Ljava/lang/String;

    .line 89
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment;->currentSerial:Ljava/lang/String;

    invoke-static {v0}, Lcom/cnlaunch/x431pro/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v0

    const-string/jumbo v1, "serialNo"

    invoke-virtual {v0, v1}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment;->currentSerial:Ljava/lang/String;

    .line 91
    :cond_0
    return-void
.end method

.method private initViews()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 100
    const v1, 0x7f07074d

    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment;->setTitle(I)V

    .line 101
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020521

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment;->setLeftImage(Landroid/graphics/drawable/Drawable;)V

    .line 103
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0d03bf

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment;->radio_clear:Landroid/widget/Button;

    .line 104
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment;->radio_clear:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0d03bd

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment;->gridview:Landroid/widget/GridView;

    .line 107
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0d03bc

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment;->tv_serialNo:Landroid/widget/TextView;

    .line 108
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment;->tv_serialNo:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment;->currentSerial:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0d03be

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment;->tv_lastest_num:Landroid/widget/TextView;

    .line 111
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment;->tv_lastest_num:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment;->tv_lastest_num:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment;->lastestVerisonNum:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment;->allAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CarIconAdapter;

    if-nez v1, :cond_0

    .line 114
    new-instance v1, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CarIconAdapter;

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CarIconAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment;->allAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CarIconAdapter;

    .line 115
    :cond_0
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment;->gridview:Landroid/widget/GridView;

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment;->allAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CarIconAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 116
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment;->gridview:Landroid/widget/GridView;

    invoke-virtual {v1, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 118
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment;->updateSNList()V

    .line 119
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment;->userSerialNumberList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    .line 120
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020170

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 121
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    const/16 v1, 0x13

    const/16 v2, 0xb

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 122
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment;->tv_serialNo:Landroid/widget/TextView;

    invoke-virtual {v1, v3, v3, v0, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 123
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment;->tv_serialNo:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    :goto_0
    return-void

    .line 126
    :cond_1
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment;->tv_serialNo:Landroid/widget/TextView;

    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 127
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment;->tv_serialNo:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private setSN(Ljava/lang/String;)V
    .locals 2
    .parameter "sn"

    .prologue
    .line 384
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment;->currentSerial:Ljava/lang/String;

    .line 386
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment;->tv_serialNo:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment;->currentSerial:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 387
    return-void
.end method

.method private updateSNList()V
    .locals 5

    .prologue
    .line 357
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment;->serialNumberDao:Lcom/cnlaunch/x431pro/utils/db/SerialNumberDao;

    if-nez v2, :cond_0

    .line 358
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/cnlaunch/x431pro/utils/db/base/DBManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/x431pro/utils/db/base/DBManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/utils/db/base/DBManager;->getDaoSession()Lcom/cnlaunch/x431pro/utils/db/base/DaoSession;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/utils/db/base/DaoSession;->getSerialNumberDao()Lcom/cnlaunch/x431pro/utils/db/SerialNumberDao;

    move-result-object v2

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment;->serialNumberDao:Lcom/cnlaunch/x431pro/utils/db/SerialNumberDao;

    .line 360
    :cond_0
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    if-nez v2, :cond_1

    .line 361
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v2

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    .line 364
    :cond_1
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    const-string/jumbo v3, "serialNo_Prefix"

    invoke-virtual {v2, v3}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment;->serialNo_Prefix:Ljava/lang/String;

    .line 365
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment;->serialNumberDao:Lcom/cnlaunch/x431pro/utils/db/SerialNumberDao;

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/utils/db/SerialNumberDao;->loadAll()Ljava/util/List;

    move-result-object v0

    .line 367
    .local v0, allSerialNumberListTemp:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/utils/db/SerialNumber;>;"
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment;->userSerialNumberList:Ljava/util/List;

    if-nez v2, :cond_3

    .line 368
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment;->userSerialNumberList:Ljava/util/List;

    .line 372
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_4

    .line 377
    return-void

    .line 370
    :cond_3
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment;->userSerialNumberList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    goto :goto_0

    .line 372
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/x431pro/utils/db/SerialNumber;

    .line 373
    .local v1, sn:Lcom/cnlaunch/x431pro/utils/db/SerialNumber;
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/utils/db/SerialNumber;->getSerialNo()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment;->serialNo_Prefix:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 374
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment;->userSerialNumberList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method


# virtual methods
.method public doInBackground(I)Ljava/lang/Object;
    .locals 5
    .parameter "requestCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/framework/network/http/HttpException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 158
    packed-switch p1, :pswitch_data_0

    .line 193
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->doInBackground(I)Ljava/lang/Object;

    move-result-object v2

    :goto_0
    return-object v2

    .line 161
    :pswitch_0
    :try_start_0
    new-instance v1, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;-><init>(Landroid/content/Context;)V

    .line 163
    .local v1, utils:Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;->getAllCarList()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment;->allList:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0

    .line 164
    .end local v1           #utils:Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;
    :catch_0
    move-exception v0

    .line 165
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 166
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0

    .line 171
    .end local v0           #e:Ljava/lang/Exception;
    :pswitch_1
    :try_start_1
    new-instance v1, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;-><init>(Landroid/content/Context;)V

    .line 173
    .restart local v1       #utils:Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;->isNeedInit()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 174
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;->initCarIcon()Z

    .line 177
    :cond_0
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment;->currentSerial:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;->update(Ljava/lang/String;)V

    .line 178
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;->getAllCarList()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment;->allList:Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 183
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0

    .line 179
    .end local v1           #utils:Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;
    :catch_1
    move-exception v0

    .line 180
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 181
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0

    .line 186
    .end local v0           #e:Ljava/lang/Exception;
    :pswitch_2
    :try_start_2
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment;->clearSoftFiles()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 191
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0

    .line 187
    :catch_2
    move-exception v0

    .line 188
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 189
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0

    .line 158
    nop

    :pswitch_data_0
    .packed-switch 0x271a
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 70
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 71
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment;->initData()V

    .line 72
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment;->initViews()V

    .line 73
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9
    .parameter "v"

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 283
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 354
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 285
    :pswitch_1
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment;->allList:Ljava/util/List;

    if-eqz v5, :cond_0

    .line 287
    const v5, 0x7f070750

    invoke-virtual {p0, v5}, Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment;->lastestVerisonNum:Ljava/lang/String;

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 288
    .local v1, noticeStr:Ljava/lang/String;
    new-instance v5, Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment$1;

    invoke-direct {v5, p0}, Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment$1;-><init>(Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment;)V

    .line 298
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const v7, 0x7f0704fa

    invoke-virtual {p0, v7}, Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7, v1, v8}, Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment$1;->showDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 302
    .end local v1           #noticeStr:Ljava/lang/String;
    :pswitch_2
    new-instance v3, Lcom/cnlaunch/x431pro/widget/dialog/SpinnerPopupWindow;

    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment;->mContext:Landroid/content/Context;

    invoke-direct {v3, v5}, Lcom/cnlaunch/x431pro/widget/dialog/SpinnerPopupWindow;-><init>(Landroid/content/Context;)V

    .line 303
    .local v3, spinnerNum:Lcom/cnlaunch/x431pro/widget/dialog/SpinnerPopupWindow;
    new-instance v5, Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment$2;

    invoke-direct {v5, p0}, Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment$2;-><init>(Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment;)V

    invoke-virtual {v3, v5}, Lcom/cnlaunch/x431pro/widget/dialog/SpinnerPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 320
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment;->tv_lastest_num:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment;->lstLastestNum:Ljava/util/List;

    invoke-virtual {v3, v5, v6}, Lcom/cnlaunch/x431pro/widget/dialog/SpinnerPopupWindow;->show(Landroid/view/View;Ljava/util/List;)V

    goto :goto_0

    .line 323
    .end local v3           #spinnerNum:Lcom/cnlaunch/x431pro/widget/dialog/SpinnerPopupWindow;
    :pswitch_3
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment;->userSerialNumberList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lt v5, v6, :cond_0

    .line 326
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 327
    .local v4, spinnerlist:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment;->userSerialNumberList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 330
    new-instance v2, Lcom/cnlaunch/x431pro/widget/dialog/SpinnerPopupWindow;

    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5}, Lcom/cnlaunch/x431pro/widget/dialog/SpinnerPopupWindow;-><init>(Landroid/content/Context;)V

    .line 331
    .local v2, spinner:Lcom/cnlaunch/x431pro/widget/dialog/SpinnerPopupWindow;
    new-instance v5, Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment$3;

    invoke-direct {v5, p0, v4}, Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment$3;-><init>(Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment;Ljava/util/List;)V

    invoke-virtual {v2, v5}, Lcom/cnlaunch/x431pro/widget/dialog/SpinnerPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 349
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment;->tv_serialNo:Landroid/widget/TextView;

    invoke-virtual {v2, v5, v4}, Lcom/cnlaunch/x431pro/widget/dialog/SpinnerPopupWindow;->show(Landroid/view/View;Ljava/util/List;)V

    goto :goto_0

    .line 327
    .end local v2           #spinner:Lcom/cnlaunch/x431pro/widget/dialog/SpinnerPopupWindow;
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/x431pro/utils/db/SerialNumber;

    .line 328
    .local v0, bean:Lcom/cnlaunch/x431pro/utils/db/SerialNumber;
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/utils/db/SerialNumber;->getSerialNo()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 283
    :pswitch_data_0
    .packed-switch 0x7f0d03bc
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 94
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 95
    new-instance v0, Lcom/cnlaunch/x431pro/utils/PathUtils;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/cnlaunch/x431pro/utils/PathUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment;->pathUtils:Lcom/cnlaunch/x431pro/utils/PathUtils;

    .line 96
    new-instance v0, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment;->carIconUtils:Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;

    .line 97
    return-void
.end method

.method public onCreateFragmentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 78
    const v0, 0x7f030155

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onFailure(IILjava/lang/Object;)V
    .locals 0
    .parameter "requestCode"
    .parameter "state"
    .parameter "result"

    .prologue
    .line 214
    invoke-super {p0, p1, p2, p3}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->onFailure(IILjava/lang/Object;)V

    .line 218
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
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
    .line 136
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-direct {p0, p1, p3}, Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment;->clickToDiag(Landroid/widget/AdapterView;I)V

    .line 138
    return-void
.end method

.method public onResume()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 221
    invoke-super {p0}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->onResume()V

    .line 222
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v5

    const-string/jumbo v6, "serialNo"

    invoke-virtual {v5, v6}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 223
    .local v2, sn:Ljava/lang/String;
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment;->currentSerial:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v1, v3

    .line 224
    .local v1, isNeedRefresh:Z
    :goto_0
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v5

    const-string/jumbo v6, "need_refresh"

    invoke-virtual {v5, v6, v4}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;Z)Z

    move-result v0

    .line 225
    .local v0, brf:Z
    if-nez v1, :cond_0

    if-eqz v0, :cond_3

    .line 228
    :cond_0
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment;->tv_serialNo:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment;->currentSerial:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 229
    const/16 v5, 0x271b

    invoke-virtual {p0, v5, v3}, Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment;->request(IZ)V

    .line 230
    if-eqz v1, :cond_2

    .line 231
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v3

    const-string/jumbo v5, "need_refresh"

    invoke-virtual {v3, v5, v4}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Z)V

    .line 235
    :goto_1
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f070555

    invoke-virtual {p0, v4}, Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->show(Landroid/content/Context;Ljava/lang/String;)V

    .line 240
    :goto_2
    return-void

    .end local v0           #brf:Z
    .end local v1           #isNeedRefresh:Z
    :cond_1
    move v1, v4

    .line 223
    goto :goto_0

    .line 233
    .restart local v0       #brf:Z
    .restart local v1       #isNeedRefresh:Z
    :cond_2
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v4

    const-string/jumbo v5, "need_refresh"

    invoke-virtual {v4, v5, v3}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Z)V

    goto :goto_1

    .line 237
    :cond_3
    const/16 v4, 0x271a

    invoke-virtual {p0, v4, v3}, Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment;->request(IZ)V

    goto :goto_2
.end method

.method public onSuccess(ILjava/lang/Object;)V
    .locals 2
    .parameter "requestCode"
    .parameter "result"

    .prologue
    .line 198
    packed-switch p1, :pswitch_data_0

    .line 210
    :goto_0
    return-void

    .line 201
    :pswitch_0
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->dismiss(Landroid/content/Context;)V

    .line 203
    :pswitch_1
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment;->allAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CarIconAdapter;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment;->allList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CarIconAdapter;->setList(Ljava/util/List;)V

    .line 204
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment;->allAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CarIconAdapter;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CarIconAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 207
    :pswitch_2
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->dismiss(Landroid/content/Context;)V

    goto :goto_0

    .line 198
    :pswitch_data_0
    .packed-switch 0x271a
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
