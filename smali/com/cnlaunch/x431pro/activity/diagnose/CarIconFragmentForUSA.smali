.class public Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;
.super Lcom/cnlaunch/x431pro/activity/BaseFragment;
.source "CarIconFragmentForUSA.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/cnlaunch/x431pro/activity/BaseFragment;",
        "Landroid/widget/AdapterView$OnItemLongClickListener;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/support/v4/view/ViewPager$OnPageChangeListener;",
        "Landroid/widget/RadioGroup$OnCheckedChangeListener;",
        "Landroid/view/View$OnFocusChangeListener;"
    }
.end annotation


# instance fields
.field private final REQ_GETCARICON_CODE:I

.field private final REQ_UpdateCARICON_CODE:I

.field private allAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CarIconAdapter;

.field private allGridView:Landroid/widget/GridView;

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

.field private allRadioButton:Landroid/widget/RadioButton;

.field private asiaAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CarIconAdapter;

.field private asiaGridView:Landroid/widget/GridView;

.field private asiaList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/x431pro/utils/db/CarIcon;",
            ">;"
        }
    .end annotation
.end field

.field private asiaRadioButton:Landroid/widget/RadioButton;

.field private currentSerial:Ljava/lang/String;

.field private euroAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CarIconAdapter;

.field private euroGridView:Landroid/widget/GridView;

.field private euroList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/x431pro/utils/db/CarIcon;",
            ">;"
        }
    .end annotation
.end field

.field private euroRadioButton:Landroid/widget/RadioButton;

.field private mAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ViewPagerAdapter;

.field private mRTUHelper:Lcom/cnlaunch/x431pro/common/RTUHelper;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private pageViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private usaAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CarIconAdapter;

.field private usaGridView:Landroid/widget/GridView;

.field private usaList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/x431pro/utils/db/CarIcon;",
            ">;"
        }
    .end annotation
.end field

.field private usaRadioButton:Landroid/widget/RadioButton;

.field private viewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/BaseFragment;-><init>()V

    .line 66
    const/16 v0, 0x271a

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->REQ_GETCARICON_CODE:I

    .line 67
    const/16 v0, 0x271b

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->REQ_UpdateCARICON_CODE:I

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->mRTUHelper:Lcom/cnlaunch/x431pro/common/RTUHelper;

    .line 134
    new-instance v0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA$1;

    invoke-direct {v0, p0}, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA$1;-><init>(Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 64
    return-void
.end method

.method private clickToDiag(Landroid/widget/AdapterView;I)V
    .locals 6
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
    .line 407
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p2}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/x431pro/utils/db/CarIcon;

    .line 408
    .local v1, carIcon:Lcom/cnlaunch/x431pro/utils/db/CarIcon;
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->getIsDownload()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 409
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 410
    .local v0, bundle:Landroid/os/Bundle;
    const-string/jumbo v3, "versionlist"

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->getVersionlist()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    const-string/jumbo v3, "carname"

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    const-string/jumbo v3, "carname_zh"

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v4}, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->getZhShowName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    const-string/jumbo v3, "softpackageid"

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->getSoftPackageId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    new-instance v2, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;

    invoke-direct {v2}, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;-><init>()V

    .line 415
    .local v2, selectSoftVerSionFragment:Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;
    invoke-virtual {v2, v0}, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->setArguments(Landroid/os/Bundle;)V

    .line 416
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    const v4, 0x7f0c0052

    invoke-virtual {v3, v4, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentTransaction;->commit()I

    .line 417
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->tv_title:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 418
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->radioGroup_head:Landroid/widget/RadioGroup;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/RadioGroup;->setVisibility(I)V

    .line 422
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v2           #selectSoftVerSionFragment:Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;
    :goto_0
    return-void

    .line 420
    :cond_0
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->getActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "\u672a\u4e0b\u8f7d"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private clickToDiagFactoryPattern(Landroid/widget/AdapterView;I)V
    .locals 6
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
    .line 425
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p2}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/x431pro/utils/db/CarIcon;

    .line 426
    .local v1, carIcon:Lcom/cnlaunch/x431pro/utils/db/CarIcon;
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->getIsDownload()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 427
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->getSoftPackageId()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "demo"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->getSoftPackageId()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "eobd2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 428
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 429
    .local v0, bundle:Landroid/os/Bundle;
    const-string/jumbo v3, "versionlist"

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->getVersionlist()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    const-string/jumbo v3, "carname"

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    const-string/jumbo v3, "carname_zh"

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v4}, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->getZhShowName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    const-string/jumbo v3, "softpackageid"

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->getSoftPackageId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    new-instance v2, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;

    invoke-direct {v2}, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;-><init>()V

    .line 434
    .local v2, selectSoftVerSionFragment:Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;
    invoke-virtual {v2, v0}, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->setArguments(Landroid/os/Bundle;)V

    .line 435
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    const v4, 0x7f0c0052

    invoke-virtual {v3, v4, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentTransaction;->commit()I

    .line 436
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->tv_title:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 437
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->radioGroup_head:Landroid/widget/RadioGroup;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/RadioGroup;->setVisibility(I)V

    .line 444
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v2           #selectSoftVerSionFragment:Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;
    :goto_0
    return-void

    .line 439
    :cond_1
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0706f8

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cnlaunch/framework/utils/NToast;->longToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 442
    :cond_2
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->getActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "\u672a\u4e0b\u8f7d"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initRTUHelper()V
    .locals 2

    .prologue
    .line 511
    new-instance v0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA$3;

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA$3;-><init>(Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->mRTUHelper:Lcom/cnlaunch/x431pro/common/RTUHelper;

    .line 517
    return-void
.end method

.method private initViews()V
    .locals 9

    .prologue
    const v8, 0x7f0c0296

    const/4 v7, 0x1

    const/4 v6, 0x0

    const v4, 0x7f0300ba

    const/4 v5, 0x0

    .line 178
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->allRadioButton:Landroid/widget/RadioButton;

    .line 179
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0c0290

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->usaRadioButton:Landroid/widget/RadioButton;

    .line 180
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0c0291

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->euroRadioButton:Landroid/widget/RadioButton;

    .line 181
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0c0292

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->asiaRadioButton:Landroid/widget/RadioButton;

    .line 182
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->allRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v2, p0}, Landroid/widget/RadioButton;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 183
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->usaRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v2, p0}, Landroid/widget/RadioButton;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 184
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->euroRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v2, p0}, Landroid/widget/RadioButton;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 185
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->asiaRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v2, p0}, Landroid/widget/RadioButton;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 187
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->tv_title:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 188
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->radioGroup_head:Landroid/widget/RadioGroup;

    invoke-virtual {v2, v5}, Landroid/widget/RadioGroup;->setVisibility(I)V

    .line 189
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->radioGroup_head:Landroid/widget/RadioGroup;

    invoke-virtual {v2, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 191
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0c00eb

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/ViewPager;

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->viewPager:Landroid/support/v4/view/ViewPager;

    .line 193
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 194
    .local v0, inflater:Landroid/view/LayoutInflater;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->pageViews:Ljava/util/ArrayList;

    .line 195
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->pageViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->pageViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->pageViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->pageViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    new-instance v2, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ViewPagerAdapter;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->pageViews:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ViewPagerAdapter;-><init>(Ljava/util/ArrayList;)V

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->mAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ViewPagerAdapter;

    .line 201
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->viewPager:Landroid/support/v4/view/ViewPager;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->mAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ViewPagerAdapter;

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 202
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 203
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->radioGroup_head:Landroid/widget/RadioGroup;

    invoke-virtual {v2, v8}, Landroid/widget/RadioGroup;->check(I)V

    .line 205
    new-instance v2, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CarIconAdapter;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CarIconAdapter;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->asiaAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CarIconAdapter;

    .line 206
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->pageViews:Ljava/util/ArrayList;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/GridView;

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->asiaGridView:Landroid/widget/GridView;

    .line 208
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->asiaGridView:Landroid/widget/GridView;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->asiaGridView:Landroid/widget/GridView;

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->asiaAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CarIconAdapter;

    invoke-virtual {p0, v3, v4}, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->showAsAnimator(Landroid/widget/GridView;Landroid/widget/BaseAdapter;)Landroid/widget/BaseAdapter;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 209
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->asiaGridView:Landroid/widget/GridView;

    invoke-virtual {v2, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 210
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->asiaGridView:Landroid/widget/GridView;

    invoke-virtual {v2, p0}, Landroid/widget/GridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 212
    new-instance v2, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CarIconAdapter;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CarIconAdapter;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->euroAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CarIconAdapter;

    .line 213
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->pageViews:Ljava/util/ArrayList;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/GridView;

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->euroGridView:Landroid/widget/GridView;

    .line 215
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->euroGridView:Landroid/widget/GridView;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->euroGridView:Landroid/widget/GridView;

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->euroAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CarIconAdapter;

    invoke-virtual {p0, v3, v4}, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->showAsAnimator(Landroid/widget/GridView;Landroid/widget/BaseAdapter;)Landroid/widget/BaseAdapter;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 216
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->euroGridView:Landroid/widget/GridView;

    invoke-virtual {v2, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 217
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->euroGridView:Landroid/widget/GridView;

    invoke-virtual {v2, p0}, Landroid/widget/GridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 219
    new-instance v2, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CarIconAdapter;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CarIconAdapter;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->usaAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CarIconAdapter;

    .line 220
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->pageViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/GridView;

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->usaGridView:Landroid/widget/GridView;

    .line 222
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->usaGridView:Landroid/widget/GridView;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->usaGridView:Landroid/widget/GridView;

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->usaAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CarIconAdapter;

    invoke-virtual {p0, v3, v4}, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->showAsAnimator(Landroid/widget/GridView;Landroid/widget/BaseAdapter;)Landroid/widget/BaseAdapter;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 223
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->usaGridView:Landroid/widget/GridView;

    invoke-virtual {v2, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 224
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->usaGridView:Landroid/widget/GridView;

    invoke-virtual {v2, p0}, Landroid/widget/GridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 226
    new-instance v2, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CarIconAdapter;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CarIconAdapter;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->allAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CarIconAdapter;

    .line 227
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->pageViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/GridView;

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->allGridView:Landroid/widget/GridView;

    .line 229
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->allGridView:Landroid/widget/GridView;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->allGridView:Landroid/widget/GridView;

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->allAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CarIconAdapter;

    invoke-virtual {p0, v3, v4}, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->showAsAnimator(Landroid/widget/GridView;Landroid/widget/BaseAdapter;)Landroid/widget/BaseAdapter;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 230
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->allGridView:Landroid/widget/GridView;

    invoke-virtual {v2, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 231
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->allGridView:Landroid/widget/GridView;

    invoke-virtual {v2, p0}, Landroid/widget/GridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 233
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v2

    const-string/jumbo v3, "need_refresh"

    invoke-virtual {v2, v3, v7}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;Z)Z

    move-result v1

    .line 234
    .local v1, isNeedRefresh:Z
    if-eqz v1, :cond_0

    .line 236
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v2

    const-string/jumbo v3, "need_refresh"

    invoke-virtual {v2, v3, v5}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Z)V

    .line 237
    const/16 v2, 0x271b

    invoke-virtual {p0, v2, v5}, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->request(IZ)V

    .line 238
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f070557

    invoke-virtual {p0, v3}, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->show(Landroid/content/Context;Ljava/lang/String;)V

    .line 244
    :goto_0
    return-void

    .line 241
    :cond_0
    const/16 v2, 0x271a

    invoke-virtual {p0, v2, v5}, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->request(IZ)V

    goto :goto_0
.end method

.method private registerBroadcastReceiver()V
    .locals 3

    .prologue
    .line 129
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 130
    .local v0, filter:Landroid/content/IntentFilter;
    const-string/jumbo v1, "softs_updated"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 132
    return-void
.end method

.method private setRadioChecked(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 353
    packed-switch p1, :pswitch_data_0

    .line 368
    :goto_0
    return-void

    .line 355
    :pswitch_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->radioGroup_head:Landroid/widget/RadioGroup;

    const v1, 0x7f0c0296

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0

    .line 358
    :pswitch_1
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->radioGroup_head:Landroid/widget/RadioGroup;

    const v1, 0x7f0c0290

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0

    .line 361
    :pswitch_2
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->radioGroup_head:Landroid/widget/RadioGroup;

    const v1, 0x7f0c0291

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0

    .line 364
    :pswitch_3
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->radioGroup_head:Landroid/widget/RadioGroup;

    const v1, 0x7f0c0292

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0

    .line 353
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public doInBackground(I)Ljava/lang/Object;
    .locals 6
    .parameter "requestCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/framework/network/http/HttpException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 254
    packed-switch p1, :pswitch_data_0

    .line 288
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->doInBackground(I)Ljava/lang/Object;

    move-result-object v2

    :goto_0
    return-object v2

    .line 257
    :pswitch_0
    :try_start_0
    new-instance v1, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;-><init>(Landroid/content/Context;)V

    .line 259
    .local v1, utils:Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;->getAllCarList()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->allList:Ljava/util/List;

    .line 260
    sget-object v2, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;->ASIA:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;->getAreaCarList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->asiaList:Ljava/util/List;

    .line 261
    sget-object v2, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;->EUROPE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;->getAreaCarList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->euroList:Ljava/util/List;

    .line 262
    sget-object v2, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;->USA:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;->getAreaCarList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->usaList:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 267
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0

    .line 263
    .end local v1           #utils:Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;
    :catch_0
    move-exception v0

    .line 264
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 265
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0

    .line 270
    .end local v0           #e:Ljava/lang/Exception;
    :pswitch_1
    :try_start_1
    new-instance v1, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;-><init>(Landroid/content/Context;)V

    .line 272
    .restart local v1       #utils:Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;->isNeedInit()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 273
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;->initCarIcon()Z

    .line 275
    :cond_0
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v2

    const-string/jumbo v3, "serialNo"

    invoke-virtual {v2, v3}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->currentSerial:Ljava/lang/String;

    .line 276
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->currentSerial:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;->update(Ljava/lang/String;)V

    .line 278
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;->getAllCarList()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->allList:Ljava/util/List;

    .line 279
    sget-object v2, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;->ASIA:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;->getAreaCarList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->asiaList:Ljava/util/List;

    .line 280
    sget-object v2, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;->EUROPE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;->getAreaCarList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->euroList:Ljava/util/List;

    .line 281
    sget-object v2, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;->USA:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;->getAreaCarList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->usaList:Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 286
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0

    .line 282
    .end local v1           #utils:Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;
    :catch_1
    move-exception v0

    .line 283
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 284
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto/16 :goto_0

    .line 254
    :pswitch_data_0
    .packed-switch 0x271a
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 97
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 98
    invoke-static {}, Lcom/cnlaunch/x431pro/utils/Tools;->isUSAProject()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 99
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->initRTUHelper()V

    .line 100
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->mRTUHelper:Lcom/cnlaunch/x431pro/common/RTUHelper;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/common/RTUHelper;->readTryData()V

    .line 101
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->mRTUHelper:Lcom/cnlaunch/x431pro/common/RTUHelper;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/common/RTUHelper;->tryFlagRemind()V

    .line 103
    :cond_0
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v1

    const-string/jumbo v2, "serialNo"

    invoke-virtual {v1, v2}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->currentSerial:Ljava/lang/String;

    .line 105
    :try_start_0
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->initViews()V

    .line 106
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->registerBroadcastReceiver()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    :goto_0
    return-void

    .line 107
    :catch_0
    move-exception v0

    .line 108
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 5
    .parameter "arg0"
    .parameter "checkid"

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 455
    invoke-virtual {p1}, Landroid/widget/RadioGroup;->addStatesFromChildren()Z

    .line 456
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    .line 457
    .local v0, index:I
    packed-switch p2, :pswitch_data_0

    .line 481
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 459
    :pswitch_1
    if-eqz v0, :cond_0

    .line 460
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->viewPager:Landroid/support/v4/view/ViewPager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    .line 464
    :pswitch_2
    if-eq v0, v2, :cond_0

    .line 465
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    .line 470
    :pswitch_3
    if-eq v0, v3, :cond_0

    .line 471
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v3}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    .line 476
    :pswitch_4
    if-eq v0, v4, :cond_0

    .line 477
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v4}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    .line 457
    nop

    :pswitch_data_0
    .packed-switch 0x7f0c0290
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 323
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 326
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 485
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 486
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->initViews()V

    .line 487
    return-void
.end method

.method public onCreateFragmentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 125
    const v0, 0x7f030041

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    .line 168
    invoke-super {p0}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->onDestroy()V

    .line 170
    :try_start_0
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    :goto_0
    return-void

    .line 171
    :catch_0
    move-exception v0

    .line 172
    .local v0, e:Ljava/lang/Exception;
    const-string/jumbo v1, "Sanda"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Error:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 491
    invoke-super {p0}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->onDestroyView()V

    .line 493
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->tv_title:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 494
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->radioGroup_head:Landroid/widget/RadioGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setVisibility(I)V

    .line 495
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->dismiss(Landroid/content/Context;)V

    .line 496
    return-void
.end method

.method public onFailure(IILjava/lang/Object;)V
    .locals 0
    .parameter "requestCode"
    .parameter "state"
    .parameter "result"

    .prologue
    .line 315
    invoke-super {p0, p1, p2, p3}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->onFailure(IILjava/lang/Object;)V

    .line 319
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 521
    if-eqz p2, :cond_0

    .line 522
    invoke-virtual {p1}, Landroid/view/View;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 523
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    .line 526
    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
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
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const-wide/16 v3, 0x0

    .line 372
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v0

    const-string/jumbo v1, "tryFlag"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/cnlaunch/x431pro/common/Constants;->FactoryPattern:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v0

    const-string/jumbo v1, "tryFlagStartTime"

    invoke-virtual {v0, v1, v3, v4}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v0, v0, v3

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v0

    const-string/jumbo v1, "tryFlagStartTime"

    invoke-virtual {v0, v1, v3, v4}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;J)J

    move-result-wide v0

    const-wide v2, 0x90321000L

    add-long/2addr v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 398
    :cond_0
    sget-boolean v0, Lcom/cnlaunch/x431pro/common/Constants;->FactoryPattern:Z

    if-eqz v0, :cond_2

    .line 399
    invoke-direct {p0, p1, p3}, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->clickToDiagFactoryPattern(Landroid/widget/AdapterView;I)V

    .line 404
    :cond_1
    :goto_0
    return-void

    .line 401
    :cond_2
    invoke-direct {p0, p1, p3}, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->clickToDiag(Landroid/widget/AdapterView;I)V

    goto :goto_0
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 4
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
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 448
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/x431pro/utils/db/CarIcon;

    .line 449
    .local v0, carIcon:Lcom/cnlaunch/x431pro/utils/db/CarIcon;
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {}, Lcom/cnlaunch/framework/utils/lang/LangManager;->getLanguage()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "zh"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->getZhShowName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    const/16 v3, 0x11

    invoke-static {v2, v1, v3}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 450
    const/4 v1, 0x1

    return v1

    .line 449
    :cond_0
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 331
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 336
    return-void
.end method

.method public onPageSelected(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 342
    if-nez p1, :cond_0

    .line 343
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->getSlidingMenu()Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;->setTouchModeAbove(I)V

    .line 349
    :goto_0
    invoke-direct {p0, p1}, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->setRadioChecked(I)V

    .line 350
    return-void

    .line 345
    :cond_0
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->getSlidingMenu()Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;->setTouchModeAbove(I)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 146
    invoke-super {p0}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->onResume()V

    .line 147
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->viewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v3, :cond_0

    .line 148
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    .line 149
    .local v2, positon:I
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->viewPager:Landroid/support/v4/view/ViewPager;

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->mAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ViewPagerAdapter;

    invoke-virtual {v3, v4}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 150
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 153
    .end local v2           #positon:I
    :cond_0
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v3

    const-string/jumbo v4, "serialNo"

    invoke-virtual {v3, v4}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 154
    .local v1, nowSerinal:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v3

    const-string/jumbo v4, "need_refresh"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;Z)Z

    move-result v0

    .line 155
    .local v0, isNeedRefresh:Z
    if-nez v0, :cond_1

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->currentSerial:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 156
    :cond_1
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v3

    const-string/jumbo v4, "need_refresh"

    invoke-virtual {v3, v4, v6}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Z)V

    .line 157
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v3

    const-string/jumbo v4, "serialNo"

    invoke-virtual {v3, v4}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->currentSerial:Ljava/lang/String;

    .line 158
    const/16 v3, 0x271b

    invoke-virtual {p0, v3, v6}, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->request(IZ)V

    .line 159
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f070557

    invoke-virtual {p0, v4}, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->show(Landroid/content/Context;Ljava/lang/String;)V

    .line 161
    :cond_2
    invoke-static {}, Lcom/cnlaunch/x431pro/utils/Tools;->isUSAProject()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 162
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->mRTUHelper:Lcom/cnlaunch/x431pro/common/RTUHelper;

    invoke-virtual {v3}, Lcom/cnlaunch/x431pro/common/RTUHelper;->readTryData()V

    .line 164
    :cond_3
    return-void
.end method

.method public onSuccess(ILjava/lang/Object;)V
    .locals 2
    .parameter "requestCode"
    .parameter "result"

    .prologue
    .line 293
    packed-switch p1, :pswitch_data_0

    .line 311
    :goto_0
    return-void

    .line 296
    :pswitch_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->allAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CarIconAdapter;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->allList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CarIconAdapter;->setList(Ljava/util/List;)V

    .line 297
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->allAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CarIconAdapter;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CarIconAdapter;->notifyDataSetChanged()V

    .line 299
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->asiaAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CarIconAdapter;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->asiaList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CarIconAdapter;->setList(Ljava/util/List;)V

    .line 300
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->asiaAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CarIconAdapter;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CarIconAdapter;->notifyDataSetChanged()V

    .line 302
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->euroAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CarIconAdapter;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->euroList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CarIconAdapter;->setList(Ljava/util/List;)V

    .line 303
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->euroAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CarIconAdapter;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CarIconAdapter;->notifyDataSetChanged()V

    .line 305
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->usaAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CarIconAdapter;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->usaList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CarIconAdapter;->setList(Ljava/util/List;)V

    .line 306
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->usaAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CarIconAdapter;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CarIconAdapter;->notifyDataSetChanged()V

    .line 308
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->dismiss(Landroid/content/Context;)V

    goto :goto_0

    .line 293
    :pswitch_data_0
    .packed-switch 0x271a
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .parameter "view"
    .parameter "savedInstanceState"

    .prologue
    .line 114
    new-instance v0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA$2;

    invoke-direct {v0, p0}, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA$2;-><init>(Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 120
    invoke-super {p0, p1, p2}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 121
    return-void
.end method

.method public setGridviewsColumns(I)V
    .locals 3
    .parameter "numColumns"

    .prologue
    .line 247
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->pageViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 250
    return-void

    .line 247
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 248
    .local v0, v:Landroid/view/View;
    check-cast v0, Landroid/widget/GridView;

    .end local v0           #v:Landroid/view/View;
    invoke-virtual {v0, p1}, Landroid/widget/GridView;->setNumColumns(I)V

    goto :goto_0
.end method

.method public showAsAnimator(Landroid/widget/GridView;Landroid/widget/BaseAdapter;)Landroid/widget/BaseAdapter;
    .locals 7
    .parameter "gridView"
    .parameter "mAdapter"

    .prologue
    const-wide/16 v2, 0x64

    .line 499
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v1

    const-string/jumbo v4, "is_swing_logo"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;Z)Z

    move-result v6

    .line 500
    .local v6, isSwing:Z
    if-eqz v6, :cond_0

    .line 501
    new-instance v0, Lcom/cnlaunch/x431pro/widget/swingAdapter/SwingBottomInAnimationAdapter;

    move-object v1, p2

    move-wide v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/cnlaunch/x431pro/widget/swingAdapter/SwingBottomInAnimationAdapter;-><init>(Landroid/widget/BaseAdapter;JJ)V

    .line 502
    .local v0, swingBottomInAnimationAdapter:Lcom/cnlaunch/x431pro/widget/swingAdapter/SwingBottomInAnimationAdapter;
    invoke-virtual {v0, p1}, Lcom/cnlaunch/x431pro/widget/swingAdapter/SwingBottomInAnimationAdapter;->setAbsListView(Landroid/widget/AbsListView;)V

    .line 505
    .end local v0           #swingBottomInAnimationAdapter:Lcom/cnlaunch/x431pro/widget/swingAdapter/SwingBottomInAnimationAdapter;
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p2

    goto :goto_0
.end method
