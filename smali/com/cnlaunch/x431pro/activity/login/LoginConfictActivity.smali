.class public Lcom/cnlaunch/x431pro/activity/login/LoginConfictActivity;
.super Landroid/app/Activity;
.source "LoginConfictActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "LoginConfictActivity"


# instance fields
.field private cancel_btn:Landroid/widget/Button;

.field private mContext:Landroid/content/Context;

.field private msg_txt:Landroid/widget/TextView;

.field private ok_btn:Landroid/widget/Button;

.field private preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

.field private title_txt:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 38
    const v0, 0x7f0c004f

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/login/LoginConfictActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/LoginConfictActivity;->ok_btn:Landroid/widget/Button;

    .line 39
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/LoginConfictActivity;->ok_btn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    const v0, 0x7f0c0050

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/login/LoginConfictActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/LoginConfictActivity;->cancel_btn:Landroid/widget/Button;

    .line 41
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/LoginConfictActivity;->cancel_btn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    const v0, 0x7f0c02a4

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/login/LoginConfictActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/LoginConfictActivity;->msg_txt:Landroid/widget/TextView;

    .line 43
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/LoginConfictActivity;->msg_txt:Landroid/widget/TextView;

    const v1, 0x7f070695

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 44
    const v0, 0x7f0c004d

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/login/LoginConfictActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/LoginConfictActivity;->title_txt:Landroid/widget/TextView;

    .line 45
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/LoginConfictActivity;->title_txt:Landroid/widget/TextView;

    const v1, 0x7f070694

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 46
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 56
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    .line 60
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 88
    :goto_0
    return-void

    .line 62
    :pswitch_0
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/login/LoginConfictActivity;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    const-string/jumbo v5, "login_username"

    invoke-virtual {v4, v5}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 63
    .local v3, username:Ljava/lang/String;
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/login/LoginConfictActivity;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    const-string/jumbo v5, "login_password"

    invoke-virtual {v4, v5}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 64
    .local v1, password:Ljava/lang/String;
    new-instance v0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/login/LoginConfictActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;-><init>(Landroid/content/Context;)V

    .line 65
    .local v0, lf:Lcom/cnlaunch/x431pro/activity/login/LoginFunction;
    invoke-virtual {v0, v3, v1}, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->Login(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/login/LoginConfictActivity;->finish()V

    goto :goto_0

    .line 69
    .end local v0           #lf:Lcom/cnlaunch/x431pro/activity/login/LoginFunction;
    .end local v1           #password:Ljava/lang/String;
    .end local v3           #username:Ljava/lang/String;
    :pswitch_1
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/login/LoginConfictActivity;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    const-string/jumbo v5, "login_password"

    const-string/jumbo v6, ""

    invoke-virtual {v4, v5, v6}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/login/LoginConfictActivity;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    const-string/jumbo v5, "login_state"

    const-string/jumbo v6, "0"

    invoke-virtual {v4, v5, v6}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/login/LoginConfictActivity;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    const-string/jumbo v5, "if_auto_login"

    const-string/jumbo v6, "0"

    invoke-virtual {v4, v5, v6}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    new-instance v2, Lcom/cnlaunch/x431pro/module/user/model/User;

    invoke-direct {v2}, Lcom/cnlaunch/x431pro/module/user/model/User;-><init>()V

    .line 73
    .local v2, user:Lcom/cnlaunch/x431pro/module/user/model/User;
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/login/LoginConfictActivity;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    invoke-virtual {v4, v2}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/Object;)V

    .line 74
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/login/LoginConfictActivity;->finish()V

    .line 76
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v5, "login_cancle"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lcom/cnlaunch/x431pro/activity/login/LoginConfictActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 60
    :pswitch_data_0
    .packed-switch 0x7f0c004f
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 29
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    const v0, 0x7f030008

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/login/LoginConfictActivity;->setContentView(I)V

    .line 31
    iput-object p0, p0, Lcom/cnlaunch/x431pro/activity/login/LoginConfictActivity;->mContext:Landroid/content/Context;

    .line 32
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/LoginConfictActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/LoginConfictActivity;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    .line 33
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/login/LoginConfictActivity;->initView()V

    .line 34
    const-string/jumbo v0, "LoginConfictActivity"

    const-string/jumbo v1, "LoginConfictActivity oncreat end"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 50
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 51
    return-void
.end method
