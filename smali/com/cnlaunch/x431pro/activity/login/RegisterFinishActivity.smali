.class public Lcom/cnlaunch/x431pro/activity/login/RegisterFinishActivity;
.super Lcom/cnlaunch/x431pro/activity/BaseActivity;
.source "RegisterFinishActivity.java"


# instance fields
.field bt_laterUpdate:Landroid/widget/Button;

.field bt_toUpdate:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/BaseActivity;-><init>()V

    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 28
    const v0, 0x7f0c02e7

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/login/RegisterFinishActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegisterFinishActivity;->bt_toUpdate:Landroid/widget/Button;

    .line 29
    const v0, 0x7f0c02e8

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/login/RegisterFinishActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegisterFinishActivity;->bt_laterUpdate:Landroid/widget/Button;

    .line 30
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegisterFinishActivity;->bt_toUpdate:Landroid/widget/Button;

    new-instance v1, Lcom/cnlaunch/x431pro/activity/login/RegisterFinishActivity$1;

    invoke-direct {v1, p0}, Lcom/cnlaunch/x431pro/activity/login/RegisterFinishActivity$1;-><init>(Lcom/cnlaunch/x431pro/activity/login/RegisterFinishActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegisterFinishActivity;->bt_laterUpdate:Landroid/widget/Button;

    new-instance v1, Lcom/cnlaunch/x431pro/activity/login/RegisterFinishActivity$2;

    invoke-direct {v1, p0}, Lcom/cnlaunch/x431pro/activity/login/RegisterFinishActivity$2;-><init>(Lcom/cnlaunch/x431pro/activity/login/RegisterFinishActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    return-void
.end method


# virtual methods
.method public doInBackground(I)Ljava/lang/Object;
    .locals 1
    .parameter "requestCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/framework/network/http/HttpException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/BaseActivity;->doInBackground(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 21
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    const v0, 0x7f0300f4

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/login/RegisterFinishActivity;->setContentView(I)V

    .line 23
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/login/RegisterFinishActivity;->setHeadVisibility(I)V

    .line 24
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/login/RegisterFinishActivity;->initView()V

    .line 25
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 48
    invoke-super {p0}, Lcom/cnlaunch/x431pro/activity/BaseActivity;->onDestroy()V

    .line 49
    return-void
.end method

.method public onFailure(IILjava/lang/Object;)V
    .locals 0
    .parameter "requestCode"
    .parameter "state"
    .parameter "result"

    .prologue
    .line 66
    invoke-super {p0, p1, p2, p3}, Lcom/cnlaunch/x431pro/activity/BaseActivity;->onFailure(IILjava/lang/Object;)V

    .line 67
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 70
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 71
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/login/RegisterFinishActivity;->finish()V

    .line 72
    const/4 v0, 0x1

    .line 74
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/cnlaunch/x431pro/activity/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onSuccess(ILjava/lang/Object;)V
    .locals 0
    .parameter "requestCode"
    .parameter "result"

    .prologue
    .line 60
    invoke-super {p0, p1, p2}, Lcom/cnlaunch/x431pro/activity/BaseActivity;->onSuccess(ILjava/lang/Object;)V

    .line 61
    return-void
.end method
