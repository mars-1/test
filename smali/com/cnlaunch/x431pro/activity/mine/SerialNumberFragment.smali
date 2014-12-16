.class public Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;
.super Lcom/cnlaunch/x431pro/activity/BaseFragment;
.source "SerialNumberFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/cnlaunch/x431pro/activity/BaseFragment;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field private final REQ_GET_REGISTTIME_CODE:I

.field private allSerialNumberList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/x431pro/utils/db/SerialNumber;",
            ">;"
        }
    .end annotation
.end field

.field private allSerialNumberListTemp:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/x431pro/utils/db/SerialNumber;",
            ">;"
        }
    .end annotation
.end field

.field private beforeChangedSerialNo:Ljava/lang/String;

.field private clickSerialNo:Ljava/lang/String;

.field private connectorAction:Lcom/cnlaunch/x431pro/module/mine/action/ConnectorAction;

.field private itemClickView:Landroid/view/View;

.field private login_state:Ljava/lang/String;

.field private lv_local_serial_number:Landroid/widget/ListView;

.field private lv_user_serial_number:Landroid/widget/ListView;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private otherAdapter:Lcom/cnlaunch/x431pro/activity/mine/adapter/SerialNoAdapter;

.field private otherSerialNumberList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/x431pro/utils/db/SerialNumber;",
            ">;"
        }
    .end annotation
.end field

.field private popdialog:Lcom/cnlaunch/x431pro/widget/dialog/ConnectorInfoPopupWindow;

.field private preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

.field private serialNo_Prefix:Ljava/lang/String;

.field private serialNumberDao:Lcom/cnlaunch/x431pro/utils/db/SerialNumberDao;

.field private serialPositionEntity:Lcom/cnlaunch/x431pro/utils/db/SerialNumber;

.field private tv_local_serial_number:Landroid/widget/TextView;

.field private tv_user_serial_number:Landroid/widget/TextView;

.field private userAdapter:Lcom/cnlaunch/x431pro/activity/mine/adapter/SerialNoAdapter;

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
    .line 60
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/BaseFragment;-><init>()V

    .line 63
    const/16 v0, 0x89b

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;->REQ_GET_REGISTTIME_CODE:I

    .line 329
    new-instance v0, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment$1;

    invoke-direct {v0, p0}, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment$1;-><init>(Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 60
    return-void
.end method

.method static synthetic access$0(Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;)Lcom/cnlaunch/framework/common/PreferencesManager;
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    return-object v0
.end method

.method static synthetic access$1(Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;->clickSerialNo:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 369
    invoke-direct {p0, p1}, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;->rtuCheck(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3(Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;->clickSerialNo:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$4(Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;)Lcom/cnlaunch/x431pro/utils/db/SerialNumberDao;
    .locals 1
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;->serialNumberDao:Lcom/cnlaunch/x431pro/utils/db/SerialNumberDao;

    return-object v0
.end method

.method static synthetic access$5(Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;)Lcom/cnlaunch/x431pro/widget/dialog/ConnectorInfoPopupWindow;
    .locals 1
    .parameter

    .prologue
    .line 76
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;->popdialog:Lcom/cnlaunch/x431pro/widget/dialog/ConnectorInfoPopupWindow;

    return-object v0
.end method

.method static synthetic access$6(Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;->initViews()V

    return-void
.end method

.method private changeData(Ljava/util/List;I)V
    .locals 6
    .parameter
    .parameter "clickPosition"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/x431pro/utils/db/SerialNumber;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p1, serialNumberList:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/utils/db/SerialNumber;>;"
    const/4 v5, 0x1

    .line 184
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cnlaunch/x431pro/utils/db/SerialNumber;

    invoke-virtual {v3}, Lcom/cnlaunch/x431pro/utils/db/SerialNumber;->getSerialNo()Ljava/lang/String;

    move-result-object v1

    .line 185
    .local v1, serialNumber:Ljava/lang/String;
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    const-string/jumbo v4, "serialNo"

    invoke-virtual {v3, v4, v1}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;->serialNumberDao:Lcom/cnlaunch/x431pro/utils/db/SerialNumberDao;

    invoke-virtual {v3}, Lcom/cnlaunch/x431pro/utils/db/SerialNumberDao;->loadAll()Ljava/util/List;

    move-result-object v0

    .line 187
    .local v0, serialNosInTable:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/utils/db/SerialNumber;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 194
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;->serialNumberDao:Lcom/cnlaunch/x431pro/utils/db/SerialNumberDao;

    invoke-virtual {v3, v0}, Lcom/cnlaunch/x431pro/utils/db/SerialNumberDao;->updateInTx(Ljava/lang/Iterable;)V

    .line 195
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    const-string/jumbo v4, "serialNo"

    invoke-virtual {v3, v4}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 196
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    const-string/jumbo v4, "need_refresh"

    invoke-virtual {v3, v4, v5}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Z)V

    .line 197
    invoke-direct {p0, v1}, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;->rtuCheck(Ljava/lang/String;)V

    .line 199
    :cond_0
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;->refreshUI()V

    .line 200
    return-void

    .line 187
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cnlaunch/x431pro/utils/db/SerialNumber;

    .line 188
    .local v2, sn:Lcom/cnlaunch/x431pro/utils/db/SerialNumber;
    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/utils/db/SerialNumber;->getSerialNo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 189
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/cnlaunch/x431pro/utils/db/SerialNumber;->setIsDefault(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 191
    :cond_2
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/cnlaunch/x431pro/utils/db/SerialNumber;->setIsDefault(Ljava/lang/Boolean;)V

    goto :goto_0
.end method

.method private initData()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 134
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v1

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    .line 135
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    const-string/jumbo v2, "serialNo_Prefix"

    invoke-virtual {v1, v2}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;->serialNo_Prefix:Ljava/lang/String;

    .line 136
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    const-string/jumbo v2, "serialNo"

    invoke-virtual {v1, v2}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;->beforeChangedSerialNo:Ljava/lang/String;

    .line 137
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    const-string/jumbo v2, "login_state"

    const-string/jumbo v3, "0"

    invoke-virtual {v1, v2, v3}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;->login_state:Ljava/lang/String;

    .line 138
    new-instance v1, Lcom/cnlaunch/x431pro/module/mine/action/ConnectorAction;

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/cnlaunch/x431pro/module/mine/action/ConnectorAction;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;->connectorAction:Lcom/cnlaunch/x431pro/module/mine/action/ConnectorAction;

    .line 139
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/cnlaunch/x431pro/utils/db/base/DBManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/x431pro/utils/db/base/DBManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/utils/db/base/DBManager;->getDaoSession()Lcom/cnlaunch/x431pro/utils/db/base/DaoSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/utils/db/base/DaoSession;->getSerialNumberDao()Lcom/cnlaunch/x431pro/utils/db/SerialNumberDao;

    move-result-object v1

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;->serialNumberDao:Lcom/cnlaunch/x431pro/utils/db/SerialNumberDao;

    .line 140
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;->serialNumberDao:Lcom/cnlaunch/x431pro/utils/db/SerialNumberDao;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/utils/db/SerialNumberDao;->loadAll()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;->allSerialNumberListTemp:Ljava/util/List;

    .line 141
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;->allSerialNumberList:Ljava/util/List;

    .line 142
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;->allSerialNumberListTemp:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_5

    .line 147
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;->userSerialNumberList:Ljava/util/List;

    .line 148
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;->otherSerialNumberList:Ljava/util/List;

    .line 149
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;->allSerialNumberList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_6

    .line 160
    new-instance v1, Lcom/cnlaunch/x431pro/activity/mine/adapter/SerialNoAdapter;

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;->userSerialNumberList:Ljava/util/List;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v3, p0}, Lcom/cnlaunch/x431pro/activity/mine/adapter/SerialNoAdapter;-><init>(Ljava/util/List;Landroid/content/Context;Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;)V

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;->userAdapter:Lcom/cnlaunch/x431pro/activity/mine/adapter/SerialNoAdapter;

    .line 161
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;->lv_user_serial_number:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;->userAdapter:Lcom/cnlaunch/x431pro/activity/mine/adapter/SerialNoAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 163
    new-instance v1, Lcom/cnlaunch/x431pro/activity/mine/adapter/SerialNoAdapter;

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;->otherSerialNumberList:Ljava/util/List;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v3, p0}, Lcom/cnlaunch/x431pro/activity/mine/adapter/SerialNoAdapter;-><init>(Ljava/util/List;Landroid/content/Context;Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;)V

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;->otherAdapter:Lcom/cnlaunch/x431pro/activity/mine/adapter/SerialNoAdapter;

    .line 164
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;->lv_local_serial_number:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;->otherAdapter:Lcom/cnlaunch/x431pro/activity/mine/adapter/SerialNoAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 166
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;->allSerialNumberList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 167
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;->tv_local_serial_number:Landroid/widget/TextView;

    const v2, 0x7f0706d8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 169
    :cond_2
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;->login_state:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;->login_state:Ljava/lang/String;

    const-string/jumbo v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 171
    :cond_3
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;->tv_user_serial_number:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 172
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;->tv_local_serial_number:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 173
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;->tv_local_serial_number:Landroid/widget/TextView;

    const v2, 0x7f0705bf

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 181
    :cond_4
    :goto_2
    return-void

    .line 142
    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/x431pro/utils/db/SerialNumber;

    .line 143
    .local v0, sn:Lcom/cnlaunch/x431pro/utils/db/SerialNumber;
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/utils/db/SerialNumber;->getSerialNo()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;->serialNo_Prefix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 144
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;->allSerialNumberList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 149
    .end local v0           #sn:Lcom/cnlaunch/x431pro/utils/db/SerialNumber;
    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/x431pro/utils/db/SerialNumber;

    .line 150
    .restart local v0       #sn:Lcom/cnlaunch/x431pro/utils/db/SerialNumber;
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/utils/db/SerialNumber;->getIsMine()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 151
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/utils/db/SerialNumber;->getSerialNo()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;->serialNo_Prefix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 152
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;->userSerialNumberList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 155
    :cond_7
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/utils/db/SerialNumber;->getSerialNo()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;->serialNo_Prefix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 156
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;->otherSerialNumberList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 174
    .end local v0           #sn:Lcom/cnlaunch/x431pro/utils/db/SerialNumber;
    :cond_8
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;->login_state:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;->login_state:Ljava/lang/String;

    const-string/jumbo v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 175
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;->tv_user_serial_number:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 176
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;->tv_user_serial_number:Landroid/widget/TextView;

    const v2, 0x7f0705c0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 178
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;->tv_local_serial_number:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 179
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;->tv_local_serial_number:Landroid/widget/TextView;

    const v2, 0x7f0705c1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2
.end method

.method private initViews()V
    .locals 2

    .prologue
    .line 118
    const v0, 0x7f0705bc

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;->setTitle(I)V

    .line 119
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020525

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;->setLeftImage(Landroid/graphics/drawable/Drawable;)V

    .line 120
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;->registerBoradcastReceiver()V

    .line 122
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c0393

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;->lv_user_serial_number:Landroid/widget/ListView;

    .line 123
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;->lv_user_serial_number:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 124
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c0396

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;->lv_local_serial_number:Landroid/widget/ListView;

    .line 125
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;->lv_local_serial_number:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 126
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c0391

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;->tv_user_serial_number:Landroid/widget/TextView;

    .line 127
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c0394

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;->tv_local_serial_number:Landroid/widget/TextView;

    .line 129
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;->initData()V

    .line 130
    return-void
.end method

.method private refreshUI()V
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;->userAdapter:Lcom/cnlaunch/x431pro/activity/mine/adapter/SerialNoAdapter;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/activity/mine/adapter/SerialNoAdapter;->notifyDataSetChanged()V

    .line 203
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;->otherAdapter:Lcom/cnlaunch/x431pro/activity/mine/adapter/SerialNoAdapter;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/activity/mine/adapter/SerialNoAdapter;->notifyDataSetChanged()V

    .line 204
    return-void
.end method

.method private rtuCheck(Ljava/lang/String;)V
    .locals 7
    .parameter "serialNo"

    .prologue
    .line 370
    invoke-static {}, Lcom/cnlaunch/x431pro/utils/Tools;->isUSAProject()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 371
    const/4 v1, 0x1

    .line 372
    .local v1, isFirstRun:Z
    new-instance v2, Lcom/cnlaunch/x431pro/module/rtu/ProductInformation;

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4, p1}, Lcom/cnlaunch/x431pro/module/rtu/ProductInformation;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 373
    .local v2, productInformation:Lcom/cnlaunch/x431pro/module/rtu/ProductInformation;
    new-instance v3, Lcom/cnlaunch/x431pro/module/rtu/RegisterAndLoadInfomation;

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, p1}, Lcom/cnlaunch/x431pro/module/rtu/RegisterAndLoadInfomation;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 376
    .local v3, registerAndLoadInfomation:Lcom/cnlaunch/x431pro/module/rtu/RegisterAndLoadInfomation;
    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    .line 377
    invoke-virtual {v3}, Lcom/cnlaunch/x431pro/module/rtu/RegisterAndLoadInfomation;->isRegisted()Z

    move-result v4

    if-nez v4, :cond_2

    .line 378
    invoke-virtual {v3}, Lcom/cnlaunch/x431pro/module/rtu/RegisterAndLoadInfomation;->getUserName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 379
    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/module/rtu/ProductInformation;->isFirstRun()Z

    move-result v1

    .line 384
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v4

    const-string/jumbo v5, "isFirstRun"

    invoke-virtual {v4, v5, v1}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Z)V

    .line 385
    if-eqz v1, :cond_1

    .line 386
    new-instance v0, Landroid/content/Intent;

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;->mContext:Landroid/content/Context;

    const-class v5, Lcom/cnlaunch/x431pro/module/rtu/HomeStartActivity;

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 387
    .local v0, intentHomeStart:Landroid/content/Intent;
    const/high16 v4, 0x400

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 388
    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;->startActivity(Landroid/content/Intent;)V

    .line 394
    .end local v0           #intentHomeStart:Landroid/content/Intent;
    .end local v1           #isFirstRun:Z
    .end local v2           #productInformation:Lcom/cnlaunch/x431pro/module/rtu/ProductInformation;
    .end local v3           #registerAndLoadInfomation:Lcom/cnlaunch/x431pro/module/rtu/RegisterAndLoadInfomation;
    :cond_1
    :goto_1
    return-void

    .line 381
    .restart local v1       #isFirstRun:Z
    .restart local v2       #productInformation:Lcom/cnlaunch/x431pro/module/rtu/ProductInformation;
    .restart local v3       #registerAndLoadInfomation:Lcom/cnlaunch/x431pro/module/rtu/RegisterAndLoadInfomation;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 392
    .end local v1           #isFirstRun:Z
    .end local v2           #productInformation:Lcom/cnlaunch/x431pro/module/rtu/ProductInformation;
    .end local v3           #registerAndLoadInfomation:Lcom/cnlaunch/x431pro/module/rtu/RegisterAndLoadInfomation;
    :cond_3
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v4

    const-string/jumbo v5, "isFirstRun"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Z)V

    goto :goto_1
.end method


# virtual methods
.method public doInBackground(I)Ljava/lang/Object;
    .locals 2
    .parameter "requestCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/framework/network/http/HttpException;
        }
    .end annotation

    .prologue
    .line 229
    packed-switch p1, :pswitch_data_0

    .line 235
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->doInBackground(I)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    return-object v1

    .line 231
    :pswitch_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 232
    .local v0, serialNoList2:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;->serialPositionEntity:Lcom/cnlaunch/x431pro/utils/db/SerialNumber;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/utils/db/SerialNumber;->getSerialNo()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;->connectorAction:Lcom/cnlaunch/x431pro/module/mine/action/ConnectorAction;

    invoke-virtual {v1, v0}, Lcom/cnlaunch/x431pro/module/mine/action/ConnectorAction;->getProductRegisterTime(Ljava/util/List;)Lcom/cnlaunch/x431pro/module/mine/model/ProductsRegDateResponse;

    move-result-object v1

    goto :goto_0

    .line 229
    nop

    :pswitch_data_0
    .packed-switch 0x89b
        :pswitch_0
    .end packed-switch
.end method

.method public getConnectorInfo(Landroid/view/View;Lcom/cnlaunch/x431pro/utils/db/SerialNumber;)V
    .locals 6
    .parameter "view"
    .parameter "entity"

    .prologue
    .line 287
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;->itemClickView:Landroid/view/View;

    .line 288
    new-instance v3, Lcom/cnlaunch/x431pro/widget/dialog/ConnectorInfoPopupWindow;

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/cnlaunch/x431pro/widget/dialog/ConnectorInfoPopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;->popdialog:Lcom/cnlaunch/x431pro/widget/dialog/ConnectorInfoPopupWindow;

    .line 289
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;->popdialog:Lcom/cnlaunch/x431pro/widget/dialog/ConnectorInfoPopupWindow;

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;->itemClickView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/cnlaunch/x431pro/widget/dialog/ConnectorInfoPopupWindow;->setWidth(I)V

    .line 290
    iput-object p2, p0, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;->serialPositionEntity:Lcom/cnlaunch/x431pro/utils/db/SerialNumber;

    .line 291
    invoke-static {}, Lcom/cnlaunch/physics/utils/DeviceUtils;->getInstance()Lcom/cnlaunch/physics/utils/DeviceUtils;

    move-result-object v3

    invoke-virtual {p2}, Lcom/cnlaunch/x431pro/utils/db/SerialNumber;->getSerialNo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/cnlaunch/physics/utils/DeviceUtils;->getActivateTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 292
    .local v2, time:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 293
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    const-string/jumbo v4, "login_state"

    const-string/jumbo v5, "0"

    invoke-virtual {v3, v4, v5}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;->login_state:Ljava/lang/String;

    .line 294
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;->login_state:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;->login_state:Ljava/lang/String;

    const-string/jumbo v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 295
    :cond_0
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;->popdialog:Lcom/cnlaunch/x431pro/widget/dialog/ConnectorInfoPopupWindow;

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;->itemClickView:Landroid/view/View;

    const-string/jumbo v5, ""

    invoke-virtual {v3, v4, v5}, Lcom/cnlaunch/x431pro/widget/dialog/ConnectorInfoPopupWindow;->showAsDropDown(Landroid/view/View;Ljava/lang/String;)V

    .line 303
    :goto_0
    invoke-static {}, Lcom/cnlaunch/physics/utils/DeviceUtils;->getInstance()Lcom/cnlaunch/physics/utils/DeviceUtils;

    move-result-object v3

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;->serialPositionEntity:Lcom/cnlaunch/x431pro/utils/db/SerialNumber;

    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/utils/db/SerialNumber;->getSerialNo()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/cnlaunch/x431pro/utils/PathUtils;->getPackagePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/cnlaunch/physics/utils/DeviceUtils;->getDPUHardwareInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/cnlaunch/physics/entity/DPUHardwareInfo;

    move-result-object v0

    .line 304
    .local v0, dpuHardwareInfo:Lcom/cnlaunch/physics/entity/DPUHardwareInfo;
    invoke-static {}, Lcom/cnlaunch/physics/utils/DeviceUtils;->getInstance()Lcom/cnlaunch/physics/utils/DeviceUtils;

    move-result-object v3

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;->serialPositionEntity:Lcom/cnlaunch/x431pro/utils/db/SerialNumber;

    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/utils/db/SerialNumber;->getSerialNo()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/cnlaunch/x431pro/utils/PathUtils;->getPackagePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/cnlaunch/physics/utils/DeviceUtils;->getDPUSoftInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/cnlaunch/physics/entity/DPUSoftInfo;

    move-result-object v1

    .line 305
    .local v1, dpuSoftInfo:Lcom/cnlaunch/physics/entity/DPUSoftInfo;
    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/cnlaunch/x431pro/utils/db/SerialNumber;->getSerialNo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/cnlaunch/physics/entity/DPUHardwareInfo;->getSerialNo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 306
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;->popdialog:Lcom/cnlaunch/x431pro/widget/dialog/ConnectorInfoPopupWindow;

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;->itemClickView:Landroid/view/View;

    invoke-virtual {v3, v4, v0}, Lcom/cnlaunch/x431pro/widget/dialog/ConnectorInfoPopupWindow;->showAsDropDown(Landroid/view/View;Lcom/cnlaunch/physics/entity/DPUHardwareInfo;)V

    .line 307
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;->popdialog:Lcom/cnlaunch/x431pro/widget/dialog/ConnectorInfoPopupWindow;

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;->itemClickView:Landroid/view/View;

    invoke-virtual {v3, v4, v1}, Lcom/cnlaunch/x431pro/widget/dialog/ConnectorInfoPopupWindow;->showAsDropDown(Landroid/view/View;Lcom/cnlaunch/physics/entity/DPUSoftInfo;)V

    .line 309
    :cond_1
    return-void

    .line 297
    .end local v0           #dpuHardwareInfo:Lcom/cnlaunch/physics/entity/DPUHardwareInfo;
    .end local v1           #dpuSoftInfo:Lcom/cnlaunch/physics/entity/DPUSoftInfo;
    :cond_2
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;->popdialog:Lcom/cnlaunch/x431pro/widget/dialog/ConnectorInfoPopupWindow;

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;->itemClickView:Landroid/view/View;

    const-string/jumbo v5, ""

    invoke-virtual {v3, v4, v5}, Lcom/cnlaunch/x431pro/widget/dialog/ConnectorInfoPopupWindow;->showAsDropDown(Landroid/view/View;Ljava/lang/String;)V

    .line 298
    const/16 v3, 0x89b

    invoke-virtual {p0, v3}, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;->request(I)V

    goto :goto_0

    .line 301
    :cond_3
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;->popdialog:Lcom/cnlaunch/x431pro/widget/dialog/ConnectorInfoPopupWindow;

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;->itemClickView:Landroid/view/View;

    invoke-virtual {v3, v4, v2}, Lcom/cnlaunch/x431pro/widget/dialog/ConnectorInfoPopupWindow;->showAsDropDown(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 94
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 95
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;->initViews()V

    .line 96
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 314
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 315
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;->popdialog:Lcom/cnlaunch/x431pro/widget/dialog/ConnectorInfoPopupWindow;

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;->popdialog:Lcom/cnlaunch/x431pro/widget/dialog/ConnectorInfoPopupWindow;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/widget/dialog/ConnectorInfoPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;->popdialog:Lcom/cnlaunch/x431pro/widget/dialog/ConnectorInfoPopupWindow;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/widget/dialog/ConnectorInfoPopupWindow;->dismiss()V

    .line 320
    :cond_0
    return-void
.end method

.method public onCreateFragmentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 111
    const v0, 0x7f03013f

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
    .line 266
    invoke-super {p0, p1, p2, p3}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->onFailure(IILjava/lang/Object;)V

    .line 273
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .parameter
    .parameter "v"
    .parameter "position"
    .parameter "arg3"
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
    .line 207
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 224
    :goto_0
    :pswitch_0
    return-void

    .line 210
    :pswitch_1
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;->userSerialNumberList:Ljava/util/List;

    invoke-direct {p0, v1, p3}, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;->changeData(Ljava/util/List;I)V

    goto :goto_0

    .line 214
    :pswitch_2
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;->login_state:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;->login_state:Ljava/lang/String;

    const-string/jumbo v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 215
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;->otherSerialNumberList:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/x431pro/utils/db/SerialNumber;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/utils/db/SerialNumber;->getSerialNo()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;->clickSerialNo:Ljava/lang/String;

    .line 216
    new-instance v0, Lcom/cnlaunch/x431pro/widget/dialog/LogoutDialog;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/cnlaunch/x431pro/widget/dialog/LogoutDialog;-><init>(Landroid/content/Context;)V

    .line 217
    .local v0, dialog:Lcom/cnlaunch/x431pro/widget/dialog/LogoutDialog;
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f07068e

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0706e3

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/cnlaunch/x431pro/widget/dialog/LogoutDialog;->showDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 219
    .end local v0           #dialog:Lcom/cnlaunch/x431pro/widget/dialog/LogoutDialog;
    :cond_0
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;->otherSerialNumberList:Ljava/util/List;

    invoke-direct {p0, v1, p3}, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;->changeData(Ljava/util/List;I)V

    goto :goto_0

    .line 207
    nop

    :pswitch_data_0
    .packed-switch 0x7f0c0393
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 277
    invoke-super {p0}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->onResume()V

    .line 278
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;->lv_user_serial_number:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    .line 279
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;->lv_local_serial_number:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    .line 280
    return-void
.end method

.method public onSuccess(ILjava/lang/Object;)V
    .locals 6
    .parameter "requestCode"
    .parameter "result"

    .prologue
    .line 241
    invoke-super {p0, p1, p2}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->onSuccess(ILjava/lang/Object;)V

    .line 242
    packed-switch p1, :pswitch_data_0

    .line 261
    :cond_0
    :goto_0
    return-void

    .line 244
    :pswitch_0
    if-eqz p2, :cond_0

    move-object v0, p2

    .line 247
    check-cast v0, Lcom/cnlaunch/x431pro/module/mine/model/ProductsRegDateResponse;

    .line 248
    .local v0, res:Lcom/cnlaunch/x431pro/module/mine/model/ProductsRegDateResponse;
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/mine/model/ProductsRegDateResponse;->getCode()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;->isSuccess(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 249
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/mine/model/ProductsRegDateResponse;->getProductsRegDateDTOs()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 250
    invoke-static {}, Lcom/cnlaunch/physics/utils/DeviceUtils;->getInstance()Lcom/cnlaunch/physics/utils/DeviceUtils;

    move-result-object v3

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;->serialPositionEntity:Lcom/cnlaunch/x431pro/utils/db/SerialNumber;

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/utils/db/SerialNumber;->getSerialNo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/mine/model/ProductsRegDateResponse;->getProductsRegDateDTOs()Ljava/util/List;

    move-result-object v2

    const/4 v5, 0x0

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cnlaunch/x431pro/module/mine/model/ProductsRegDateDTO;

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/module/mine/model/ProductsRegDateDTO;->getRegDate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lcom/cnlaunch/physics/utils/DeviceUtils;->saveActivateTime(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    invoke-static {}, Lcom/cnlaunch/physics/utils/DeviceUtils;->getInstance()Lcom/cnlaunch/physics/utils/DeviceUtils;

    move-result-object v2

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;->serialPositionEntity:Lcom/cnlaunch/x431pro/utils/db/SerialNumber;

    invoke-virtual {v3}, Lcom/cnlaunch/x431pro/utils/db/SerialNumber;->getSerialNo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/cnlaunch/physics/utils/DeviceUtils;->getActivateTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 252
    .local v1, time:Ljava/lang/String;
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;->popdialog:Lcom/cnlaunch/x431pro/widget/dialog/ConnectorInfoPopupWindow;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;->itemClickView:Landroid/view/View;

    invoke-virtual {v2, v3, v1}, Lcom/cnlaunch/x431pro/widget/dialog/ConnectorInfoPopupWindow;->showAsDropDown(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_0

    .line 242
    :pswitch_data_0
    .packed-switch 0x89b
        :pswitch_0
    .end packed-switch
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .parameter "view"
    .parameter "savedInstanceState"

    .prologue
    .line 100
    new-instance v0, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment$2;

    invoke-direct {v0, p0}, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment$2;-><init>(Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 106
    invoke-super {p0, p1, p2}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 107
    return-void
.end method

.method public registerBoradcastReceiver()V
    .locals 3

    .prologue
    .line 323
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 324
    .local v0, myIntentFilter:Landroid/content/IntentFilter;
    const-string/jumbo v1, "logout"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 325
    const-string/jumbo v1, "login_change_serialno"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 326
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 327
    return-void
.end method
