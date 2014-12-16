.class public Lcom/cnlaunch/x431pro/activity/golo/GoloActivity;
.super Lcom/cnlaunch/x431pro/activity/BaseActivity;
.source "GoloActivity.java"

# interfaces
.implements Lcom/cnlaunch/x431pro/activity/golo/listenter/onGoloDataListenter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cnlaunch/x431pro/activity/golo/GoloActivity$GetPubidThread;
    }
.end annotation


# static fields
.field private static final REQUEST_PUBID:I = 0x0

.field private static final TAG:Ljava/lang/String; = "GoloActivity"


# instance fields
.field private attentionInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cnlaunch/x431pro/module/golo/model/GoloAttentionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private bindInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;",
            ">;"
        }
    .end annotation
.end field

.field private golo_pub_id:Ljava/lang/String;

.field private golo_pub_name:Ljava/lang/String;

.field mHandler:Landroid/os/Handler;

.field private orderInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;",
            ">;"
        }
    .end annotation
.end field

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/BaseActivity;-><init>()V

    .line 49
    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloActivity;->attentionInfoList:Ljava/util/ArrayList;

    .line 51
    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloActivity;->bindInfoList:Ljava/util/ArrayList;

    .line 53
    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloActivity;->orderInfoList:Ljava/util/ArrayList;

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloActivity;->type:I

    .line 194
    new-instance v0, Lcom/cnlaunch/x431pro/activity/golo/GoloActivity$1;

    invoke-direct {v0, p0}, Lcom/cnlaunch/x431pro/activity/golo/GoloActivity$1;-><init>(Lcom/cnlaunch/x431pro/activity/golo/GoloActivity;)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloActivity;->mHandler:Landroid/os/Handler;

    .line 45
    return-void
.end method

.method static synthetic access$0(Lcom/cnlaunch/x431pro/activity/golo/GoloActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 216
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/golo/GoloActivity;->dismissProgressDialog()V

    return-void
.end method

.method static synthetic access$1(Lcom/cnlaunch/x431pro/activity/golo/GoloActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloActivity;->golo_pub_id:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/cnlaunch/x431pro/activity/golo/GoloActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloActivity;->golo_pub_name:Ljava/lang/String;

    return-object v0
.end method

.method private checkNetWork()Z
    .locals 2

    .prologue
    .line 225
    invoke-static {p0}, Lcom/cnlaunch/x431pro/utils/CommonUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    const/4 v0, 0x1

    .line 230
    :goto_0
    return v0

    .line 228
    :cond_0
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/golo/GoloActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0706c6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 230
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private dismissProgressDialog()V
    .locals 0

    .prologue
    .line 217
    invoke-static {p0}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->dismiss(Landroid/content/Context;)V

    .line 218
    return-void
.end method

.method private showProgressDialog()V
    .locals 0

    .prologue
    .line 221
    invoke-static {p0}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->show(Landroid/content/Context;)V

    .line 222
    return-void
.end method


# virtual methods
.method public getAttentionList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cnlaunch/x431pro/module/golo/model/GoloAttentionInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 93
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloActivity;->attentionInfoList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getBindList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 98
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloActivity;->bindInfoList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getListType()I
    .locals 1

    .prologue
    .line 235
    iget v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloActivity;->type:I

    return v0
.end method

.method public getOrderList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 103
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloActivity;->orderInfoList:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 60
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    const v3, 0x7f0300d2

    invoke-virtual {p0, v3}, Lcom/cnlaunch/x431pro/activity/golo/GoloActivity;->setContentView(I)V

    .line 63
    if-nez p1, :cond_1

    .line 64
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 65
    .local v0, bundle:Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/golo/GoloActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 66
    .local v1, intent:Landroid/content/Intent;
    const/4 v2, 0x0

    .line 67
    .local v2, type:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 68
    const-string/jumbo v3, "Customer_type"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 70
    :cond_0
    const-string/jumbo v3, "Customer_type"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const-class v3, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v0}, Lcom/cnlaunch/x431pro/activity/golo/GoloActivity;->addFragment(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 74
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #type:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 108
    invoke-super {p0}, Lcom/cnlaunch/x431pro/activity/BaseActivity;->onDestroy()V

    .line 109
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 246
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/BaseActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 247
    invoke-static {}, Lcom/cnlaunch/x431pro/activity/golo/listenter/IntentChangeSubject;->getInstance()Lcom/cnlaunch/x431pro/activity/golo/listenter/IntentChangeSubject;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cnlaunch/x431pro/activity/golo/listenter/IntentChangeSubject;->notifyObservers(Ljava/lang/Object;)V

    .line 248
    return-void
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 114
    invoke-super {p0}, Lcom/cnlaunch/x431pro/activity/BaseActivity;->onPause()V

    .line 115
    const-string/jumbo v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/activity/golo/GoloActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 116
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/golo/GoloActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 117
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/golo/GoloActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 120
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 125
    invoke-super {p0}, Lcom/cnlaunch/x431pro/activity/BaseActivity;->onResume()V

    .line 126
    invoke-static {p0}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v2

    const-string/jumbo v3, "golo_replace_flag"

    invoke-virtual {v2, v3, v5}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;Z)Z

    move-result v0

    .line 127
    .local v0, golo_replace_flag:Z
    if-eqz v0, :cond_0

    .line 128
    invoke-static {p0}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v2

    const-string/jumbo v3, "USER_PUBLIC_ID"

    const-string/jumbo v4, ""

    invoke-virtual {v2, v3, v4}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloActivity;->golo_pub_id:Ljava/lang/String;

    .line 129
    invoke-static {p0}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v2

    const-string/jumbo v3, "USER_PUBLIC_NAME"

    const-string/jumbo v4, ""

    invoke-virtual {v2, v3, v4}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloActivity;->golo_pub_name:Ljava/lang/String;

    .line 131
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/golo/GoloActivity;->checkNetWork()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 132
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/golo/GoloActivity;->showProgressDialog()V

    .line 133
    new-instance v1, Lcom/cnlaunch/x431pro/activity/golo/GoloActivity$GetPubidThread;

    const-string/jumbo v2, "getPubid"

    invoke-direct {v1, p0, v2}, Lcom/cnlaunch/x431pro/activity/golo/GoloActivity$GetPubidThread;-><init>(Lcom/cnlaunch/x431pro/activity/golo/GoloActivity;Ljava/lang/String;)V

    .line 134
    .local v1, thread:Lcom/cnlaunch/x431pro/activity/golo/GoloActivity$GetPubidThread;
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/activity/golo/GoloActivity$GetPubidThread;->start()V

    .line 137
    .end local v1           #thread:Lcom/cnlaunch/x431pro/activity/golo/GoloActivity$GetPubidThread;
    :cond_0
    invoke-static {p0}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v2

    const-string/jumbo v3, "golo_replace_flag"

    invoke-virtual {v2, v3, v5}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Z)V

    .line 138
    return-void
.end method

.method public setAttentionList(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cnlaunch/x431pro/module/golo/model/GoloAttentionInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 78
    .local p1, info:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cnlaunch/x431pro/module/golo/model/GoloAttentionInfo;>;"
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloActivity;->attentionInfoList:Ljava/util/ArrayList;

    .line 79
    return-void
.end method

.method public setBindList(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 83
    .local p1, info:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;>;"
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloActivity;->bindInfoList:Ljava/util/ArrayList;

    .line 84
    return-void
.end method

.method public setListType(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 241
    iput p1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloActivity;->type:I

    .line 242
    return-void
.end method

.method public setOrderList(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 88
    .local p1, info:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;>;"
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloActivity;->orderInfoList:Ljava/util/ArrayList;

    .line 89
    return-void
.end method
