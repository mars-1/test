.class public Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;
.super Lcom/cnlaunch/x431pro/activity/BaseFragment;
.source "CarIconFragmentForUSA.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;
.implements Landroid/view/View$OnFocusChangeListener;


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
    .line 63
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/BaseFragment;-><init>()V

    .line 65
    const/16 v0, 0x271a

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->REQ_GETCARICON_CODE:I

    .line 66
    const/16 v0, 0x271b

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->REQ_UpdateCARICON_CODE:I

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->mRTUHelper:Lcom/cnlaunch/x431pro/common/RTUHelper;

    .line 133
    new-instance v0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA$1;

    invoke-direct {v0, p0}, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA$1;-><init>(Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 63
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
    .line 406
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p2}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/x431pro/utils/db/CarIcon;

    .line 407
    .local v1, carIcon:Lcom/cnlaunch/x431pro/utils/db/CarIcon;
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->getIsDownload()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 408
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 409
    .local v0, bundle:Landroid/os/Bundle;
    const-string/jumbo v3, "versionlist"

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->getVersionlist()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    const-string/jumbo v3, "carname"

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    const-string/jumbo v3, "carname_zh"

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->getName_zh()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    const-string/jumbo v3, "softpackageid"

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->getSoftPackageId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    new-instance v2, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;

    invoke-direct {v2}, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;-><init>()V

    .line 414
    .local v2, selectSoftVerSionFragment:Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;
    invoke-virtual {v2, v0}, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->setArguments(Landroid/os/Bundle;)V

    .line 415
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    const v4, 0x7f0d0052

    invoke-virtual {v3, v4, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentTransaction;->commit()I

    .line 416
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->tv_title:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 417
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->radioGroup_head:Landroid/widget/RadioGroup;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/RadioGroup;->setVisibility(I)V

    .line 421
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v2           #selectSoftVerSionFragment:Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;
    :goto_0
    return-void

    .line 419
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
    .line 424
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p2}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/x431pro/utils/db/CarIcon;

    .line 425
    .local v1, carIcon:Lcom/cnlaunch/x431pro/utils/db/CarIcon;
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->getIsDownload()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 426
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

    .line 427
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 428
    .local v0, bundle:Landroid/os/Bundle;
    const-string/jumbo v3, "versionlist"

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->getVersionlist()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    const-string/jumbo v3, "carname"

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    const-string/jumbo v3, "carname_zh"

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->getName_zh()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    const-string/jumbo v3, "softpackageid"

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->getSoftPackageId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    new-instance v2, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;

    invoke-direct {v2}, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;-><init>()V

    .line 433
    .local v2, selectSoftVerSionFragment:Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;
    invoke-virtual {v2, v0}, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->setArguments(Landroid/os/Bundle;)V

    .line 434
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    const v4, 0x7f0d0052

    invoke-virtual {v3, v4, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentTransaction;->commit()I

    .line 435
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->tv_title:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 436
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->radioGroup_head:Landroid/widget/RadioGroup;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/RadioGroup;->setVisibility(I)V

    .line 443
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v2           #selectSoftVerSionFragment:Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;
    :goto_0
    return-void

    .line 438
    :cond_1
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0706f6

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cnlaunch/framework/utils/NToast;->longToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 441
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
    .line 510
    new-instance v0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA$3;

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA$3;-><init>(Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->mRTUHelper:Lcom/cnlaunch/x431pro/common/RTUHelper;

    .line 516
    return-void
.end method

.method private initViews()V
    .locals 9

    .prologue
    const v8, 0x7f0d0292

    const/4 v7, 0x1

    const/4 v6, 0x0

    const v4, 0x7f0300ba

    const/4 v5, 0x0

    .line 177
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->allRadioButton:Landroid/widget/RadioButton;

    .line 178
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0d028c

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->usaRadioButton:Landroid/widget/RadioButton;

    .line 179
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0d028d

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->euroRadioButton:Landroid/widget/RadioButton;

    .line 180
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0d028e

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->asiaRadioButton:Landroid/widget/RadioButton;

    .line 181
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->allRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v2, p0}, Landroid/widget/RadioButton;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 182
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->usaRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v2, p0}, Landroid/widget/RadioButton;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 183
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->euroRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v2, p0}, Landroid/widget/RadioButton;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 184
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->asiaRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v2, p0}, Landroid/widget/RadioButton;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 186
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->tv_title:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 187
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->radioGroup_head:Landroid/widget/RadioGroup;

    invoke-virtual {v2, v5}, Landroid/widget/RadioGroup;->setVisibility(I)V

    .line 188
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->radioGroup_head:Landroid/widget/RadioGroup;

    invoke-virtual {v2, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 190
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0d00eb

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/ViewPager;

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->viewPager:Landroid/support/v4/view/ViewPager;

    .line 192
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 193
    .local v0, inflater:Landroid/view/LayoutInflater;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->pageViews:Ljava/util/ArrayList;

    .line 194
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->pageViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

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

    .line 199
    new-instance v2, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ViewPagerAdapter;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->pageViews:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ViewPagerAdapter;-><init>(Ljava/util/ArrayList;)V

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->mAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ViewPagerAdapter;

    .line 200
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->viewPager:Landroid/support/v4/view/ViewPager;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->mAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ViewPagerAdapter;

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 201
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 202
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->radioGroup_head:Landroid/widget/RadioGroup;

    invoke-virtual {v2, v8}, Landroid/widget/RadioGroup;->check(I)V

    .line 204
    new-instance v2, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CarIconAdapter;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CarIconAdapter;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->asiaAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CarIconAdapter;

    .line 205
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->pageViews:Ljava/util/ArrayList;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/GridView;

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->asiaGridView:Landroid/widget/GridView;

    .line 207
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->asiaGridView:Landroid/widget/GridView;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->asiaGridView:Landroid/widget/GridView;

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->asiaAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CarIconAdapter;

    invoke-virtual {p0, v3, v4}, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->showAsAnimator(Landroid/widget/GridView;Landroid/widget/BaseAdapter;)Landroid/widget/BaseAdapter;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 208
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->asiaGridView:Landroid/widget/GridView;

    invoke-virtual {v2, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 209
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->asiaGridView:Landroid/widget/GridView;

    invoke-virtual {v2, p0}, Landroid/widget/GridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 211
    new-instance v2, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CarIconAdapter;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CarIconAdapter;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->euroAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CarIconAdapter;

    .line 212
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->pageViews:Ljava/util/ArrayList;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/GridView;

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->euroGridView:Landroid/widget/GridView;

    .line 214
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->euroGridView:Landroid/widget/GridView;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->euroGridView:Landroid/widget/GridView;

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->euroAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CarIconAdapter;

    invoke-virtual {p0, v3, v4}, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->showAsAnimator(Landroid/widget/GridView;Landroid/widget/BaseAdapter;)Landroid/widget/BaseAdapter;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 215
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->euroGridView:Landroid/widget/GridView;

    invoke-virtual {v2, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 216
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->euroGridView:Landroid/widget/GridView;

    invoke-virtual {v2, p0}, Landroid/widget/GridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 218
    new-instance v2, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CarIconAdapter;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CarIconAdapter;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->usaAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CarIconAdapter;

    .line 219
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->pageViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/GridView;

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->usaGridView:Landroid/widget/GridView;

    .line 221
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->usaGridView:Landroid/widget/GridView;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->usaGridView:Landroid/widget/GridView;

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->usaAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CarIconAdapter;

    invoke-virtual {p0, v3, v4}, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->showAsAnimator(Landroid/widget/GridView;Landroid/widget/BaseAdapter;)Landroid/widget/BaseAdapter;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 222
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->usaGridView:Landroid/widget/GridView;

    invoke-virtual {v2, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 223
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->usaGridView:Landroid/widget/GridView;

    invoke-virtual {v2, p0}, Landroid/widget/GridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 225
    new-instance v2, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CarIconAdapter;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CarIconAdapter;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->allAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CarIconAdapter;

    .line 226
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->pageViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/GridView;

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->allGridView:Landroid/widget/GridView;

    .line 228
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->allGridView:Landroid/widget/GridView;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->allGridView:Landroid/widget/GridView;

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->allAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CarIconAdapter;

    invoke-virtual {p0, v3, v4}, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->showAsAnimator(Landroid/widget/GridView;Landroid/widget/BaseAdapter;)Landroid/widget/BaseAdapter;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 229
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->allGridView:Landroid/widget/GridView;

    invoke-virtual {v2, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 230
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->allGridView:Landroid/widget/GridView;

    invoke-virtual {v2, p0}, Landroid/widget/GridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 232
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v2

    const-string/jumbo v3, "need_refresh"

    invoke-virtual {v2, v3, v7}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;Z)Z

    move-result v1

    .line 233
    .local v1, isNeedRefresh:Z
    if-eqz v1, :cond_0

    .line 235
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v2

    const-string/jumbo v3, "need_refresh"

    invoke-virtual {v2, v3, v5}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Z)V

    .line 236
    const/16 v2, 0x271b

    invoke-virtual {p0, v2, v5}, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->request(IZ)V

    .line 237
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f070555

    invoke-virtual {p0, v3}, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->show(Landroid/content/Context;Ljava/lang/String;)V

    .line 243
    :goto_0
    return-void

    .line 240
    :cond_0
    const/16 v2, 0x271a

    invoke-virtual {p0, v2, v5}, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->request(IZ)V

    goto :goto_0
.end method

.method private registerBroadcastReceiver()V
    .locals 3

    .prologue
    .line 128
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 129
    .local v0, filter:Landroid/content/IntentFilter;
    const-string/jumbo v1, "softs_updated"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 131
    return-void
.end method

.method private setRadioChecked(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 352
    packed-switch p1, :pswitch_data_0

    .line 367
    :goto_0
    return-void

    .line 354
    :pswitch_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->radioGroup_head:Landroid/widget/RadioGroup;

    const v1, 0x7f0d0292

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0

    .line 357
    :pswitch_1
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->radioGroup_head:Landroid/widget/RadioGroup;

    const v1, 0x7f0d028c

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0

    .line 360
    :pswitch_2
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->radioGroup_head:Landroid/widget/RadioGroup;

    const v1, 0x7f0d028d

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0

    .line 363
    :pswitch_3
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->radioGroup_head:Landroid/widget/RadioGroup;

    const v1, 0x7f0d028e

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0

    .line 352
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

    .line 253
    packed-switch p1, :pswitch_data_0

    .line 287
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->doInBackground(I)Ljava/lang/Object;

    move-result-object v2

    :goto_0
    return-object v2

    .line 256
    :pswitch_0
    :try_start_0
    new-instance v1, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;-><init>(Landroid/content/Context;)V

    .line 258
    .local v1, utils:Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;->getAllCarList()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->allList:Ljava/util/List;

    .line 259
    sget-object v2, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;->ASIA:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;->getAreaCarList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->asiaList:Ljava/util/List;

    .line 260
    sget-object v2, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;->EUROPE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;->getAreaCarList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->euroList:Ljava/util/List;

    .line 261
    sget-object v2, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;->USA:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;->getAreaCarList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->usaList:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0

    .line 262
    .end local v1           #utils:Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;
    :catch_0
    move-exception v0

    .line 263
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 264
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0

    .line 269
    .end local v0           #e:Ljava/lang/Exception;
    :pswitch_1
    :try_start_1
    new-instance v1, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;-><init>(Landroid/content/Context;)V

    .line 271
    .restart local v1       #utils:Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;->isNeedInit()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 272
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;->initCarIcon()Z

    .line 274
    :cond_0
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v2

    const-string/jumbo v3, "serialNo"

    invoke-virtual {v2, v3}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->currentSerial:Ljava/lang/String;

    .line 275
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->currentSerial:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;->update(Ljava/lang/String;)V

    .line 277
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;->getAllCarList()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->allList:Ljava/util/List;

    .line 278
    sget-object v2, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;->ASIA:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;->getAreaCarList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->asiaList:Ljava/util/List;

    .line 279
    sget-object v2, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;->EUROPE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;->getAreaCarList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->euroList:Ljava/util/List;

    .line 280
    sget-object v2, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;->USA:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;->getAreaCarList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->usaList:Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 285
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0

    .line 281
    .end local v1           #utils:Lcom/cnlaunch/x431pro/utils/icon/CarIconUtils;
    :catch_1
    move-exception v0

    .line 282
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 283
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto/16 :goto_0

    .line 253
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
    .line 96
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 97
    invoke-static {}, Lcom/cnlaunch/x431pro/utils/Tools;->isUSAProject()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 98
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->initRTUHelper()V

    .line 99
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->mRTUHelper:Lcom/cnlaunch/x431pro/common/RTUHelper;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/common/RTUHelper;->readTryData()V

    .line 100
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->mRTUHelper:Lcom/cnlaunch/x431pro/common/RTUHelper;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/common/RTUHelper;->tryFlagRemind()V

    .line 102
    :cond_0
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v1

    const-string/jumbo v2, "serialNo"

    invoke-virtual {v1, v2}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->currentSerial:Ljava/lang/String;

    .line 104
    :try_start_0
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->initViews()V

    .line 105
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->registerBroadcastReceiver()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :goto_0
    return-void

    .line 106
    :catch_0
    move-exception v0

    .line 107
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

    .line 454
    invoke-virtual {p1}, Landroid/widget/RadioGroup;->addStatesFromChildren()Z

    .line 455
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    .line 456
    .local v0, index:I
    packed-switch p2, :pswitch_data_0

    .line 480
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 458
    :pswitch_1
    if-eqz v0, :cond_0

    .line 459
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->viewPager:Landroid/support/v4/view/ViewPager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    .line 463
    :pswitch_2
    if-eq v0, v2, :cond_0

    .line 464
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    .line 469
    :pswitch_3
    if-eq v0, v3, :cond_0

    .line 470
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v3}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    .line 475
    :pswitch_4
    if-eq v0, v4, :cond_0

    .line 476
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v4}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    .line 456
    nop

    :pswitch_data_0
    .packed-switch 0x7f0d028c
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
    .line 322
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 325
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 484
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 485
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->initViews()V

    .line 486
    return-void
.end method

.method public onCreateFragmentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 124
    const v0, 0x7f030041

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    .line 167
    invoke-super {p0}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->onDestroy()V

    .line 169
    :try_start_0
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    :goto_0
    return-void

    .line 170
    :catch_0
    move-exception v0

    .line 171
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
    .line 490
    invoke-super {p0}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->onDestroyView()V

    .line 492
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->tv_title:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 493
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->radioGroup_head:Landroid/widget/RadioGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setVisibility(I)V

    .line 494
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->dismiss(Landroid/content/Context;)V

    .line 495
    return-void
.end method

.method public onFailure(IILjava/lang/Object;)V
    .locals 0
    .parameter "requestCode"
    .parameter "state"
    .parameter "result"

    .prologue
    .line 314
    invoke-super {p0, p1, p2, p3}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->onFailure(IILjava/lang/Object;)V

    .line 318
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 520
    if-eqz p2, :cond_0

    .line 521
    invoke-virtual {p1}, Landroid/view/View;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 522
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    .line 525
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

    .line 371
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

    .line 372
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

    .line 397
    :cond_0
    sget-boolean v0, Lcom/cnlaunch/x431pro/common/Constants;->FactoryPattern:Z

    if-eqz v0, :cond_2

    .line 398
    invoke-direct {p0, p1, p3}, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->clickToDiagFactoryPattern(Landroid/widget/AdapterView;I)V

    .line 403
    :cond_1
    :goto_0
    return-void

    .line 400
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
    .line 447
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/x431pro/utils/db/CarIcon;

    .line 448
    .local v0, carIcon:Lcom/cnlaunch/x431pro/utils/db/CarIcon;
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {}, Lcom/cnlaunch/framework/utils/lang/LangManager;->getLanguage()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "zh"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->getName_zh()Ljava/lang/String;

    move-result-object v1

    :goto_0
    const/16 v3, 0x11

    invoke-static {v2, v1, v3}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 449
    const/4 v1, 0x1

    return v1

    .line 448
    :cond_0
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/utils/db/CarIcon;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 330
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 335
    return-void
.end method

.method public onPageSelected(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 341
    if-nez p1, :cond_0

    .line 342
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->getSlidingMenu()Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;->setTouchModeAbove(I)V

    .line 348
    :goto_0
    invoke-direct {p0, p1}, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->setRadioChecked(I)V

    .line 349
    return-void

    .line 344
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

    .line 145
    invoke-super {p0}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->onResume()V

    .line 146
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->viewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v3, :cond_0

    .line 147
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    .line 148
    .local v2, positon:I
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->viewPager:Landroid/support/v4/view/ViewPager;

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->mAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ViewPagerAdapter;

    invoke-virtual {v3, v4}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 149
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 152
    .end local v2           #positon:I
    :cond_0
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v3

    const-string/jumbo v4, "serialNo"

    invoke-virtual {v3, v4}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 153
    .local v1, nowSerinal:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v3

    const-string/jumbo v4, "need_refresh"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;Z)Z

    move-result v0

    .line 154
    .local v0, isNeedRefresh:Z
    if-nez v0, :cond_1

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->currentSerial:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 155
    :cond_1
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v3

    const-string/jumbo v4, "need_refresh"

    invoke-virtual {v3, v4, v6}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Z)V

    .line 156
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v3

    const-string/jumbo v4, "serialNo"

    invoke-virtual {v3, v4}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->currentSerial:Ljava/lang/String;

    .line 157
    const/16 v3, 0x271b

    invoke-virtual {p0, v3, v6}, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->request(IZ)V

    .line 158
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f070555

    invoke-virtual {p0, v4}, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->show(Landroid/content/Context;Ljava/lang/String;)V

    .line 160
    :cond_2
    invoke-static {}, Lcom/cnlaunch/x431pro/utils/Tools;->isUSAProject()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 161
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->mRTUHelper:Lcom/cnlaunch/x431pro/common/RTUHelper;

    invoke-virtual {v3}, Lcom/cnlaunch/x431pro/common/RTUHelper;->readTryData()V

    .line 163
    :cond_3
    return-void
.end method

.method public onSuccess(ILjava/lang/Object;)V
    .locals 2
    .parameter "requestCode"
    .parameter "result"

    .prologue
    .line 292
    packed-switch p1, :pswitch_data_0

    .line 310
    :goto_0
    return-void

    .line 295
    :pswitch_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->allAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CarIconAdapter;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->allList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CarIconAdapter;->setList(Ljava/util/List;)V

    .line 296
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->allAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CarIconAdapter;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CarIconAdapter;->notifyDataSetChanged()V

    .line 298
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->asiaAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CarIconAdapter;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->asiaList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CarIconAdapter;->setList(Ljava/util/List;)V

    .line 299
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->asiaAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CarIconAdapter;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CarIconAdapter;->notifyDataSetChanged()V

    .line 301
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->euroAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CarIconAdapter;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->euroList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CarIconAdapter;->setList(Ljava/util/List;)V

    .line 302
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->euroAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CarIconAdapter;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CarIconAdapter;->notifyDataSetChanged()V

    .line 304
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->usaAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CarIconAdapter;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->usaList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CarIconAdapter;->setList(Ljava/util/List;)V

    .line 305
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->usaAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CarIconAdapter;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CarIconAdapter;->notifyDataSetChanged()V

    .line 307
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->dismiss(Landroid/content/Context;)V

    goto :goto_0

    .line 292
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
    .line 113
    new-instance v0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA$2;

    invoke-direct {v0, p0}, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA$2;-><init>(Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 119
    invoke-super {p0, p1, p2}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 120
    return-void
.end method

.method public setGridviewsColumns(I)V
    .locals 3
    .parameter "numColumns"

    .prologue
    .line 246
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->pageViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 249
    return-void

    .line 246
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 247
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

    .line 498
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v1

    const-string/jumbo v4, "is_swing_logo"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;Z)Z

    move-result v6

    .line 499
    .local v6, isSwing:Z
    if-eqz v6, :cond_0

    .line 500
    new-instance v0, Lcom/cnlaunch/x431pro/widget/swingAdapter/SwingBottomInAnimationAdapter;

    move-object v1, p2

    move-wide v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/cnlaunch/x431pro/widget/swingAdapter/SwingBottomInAnimationAdapter;-><init>(Landroid/widget/BaseAdapter;JJ)V

    .line 501
    .local v0, swingBottomInAnimationAdapter:Lcom/cnlaunch/x431pro/widget/swingAdapter/SwingBottomInAnimationAdapter;
    invoke-virtual {v0, p1}, Lcom/cnlaunch/x431pro/widget/swingAdapter/SwingBottomInAnimationAdapter;->setAbsListView(Landroid/widget/AbsListView;)V

    .line 504
    .end local v0           #swingBottomInAnimationAdapter:Lcom/cnlaunch/x431pro/widget/swingAdapter/SwingBottomInAnimationAdapter;
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p2

    goto :goto_0
.end method
