.class public Lcom/cnlaunch/newgolo/activity/MessageActivity;
.super Lcom/cnlaunch/golo3/message/BaseActivity;
.source "MessageActivity.java"


# static fields
.field public static final ROOMID_1:Ljava/lang/String; = "1079500"

.field public static final TAG:Ljava/lang/String; = "MessageActivity"


# instance fields
.field private currentChatRoom:Lcom/cnlaunch/newgolo/model/ChatRoom;

.field private headerView:Landroid/widget/LinearLayout;

.field public mContext:Landroid/content/Context;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private prefix:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/cnlaunch/golo3/message/BaseActivity;-><init>()V

    .line 128
    new-instance v0, Lcom/cnlaunch/newgolo/activity/MessageActivity$1;

    invoke-direct {v0, p0}, Lcom/cnlaunch/newgolo/activity/MessageActivity$1;-><init>(Lcom/cnlaunch/newgolo/activity/MessageActivity;)V

    iput-object v0, p0, Lcom/cnlaunch/newgolo/activity/MessageActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 21
    return-void
.end method

.method private initView()V
    .locals 3

    .prologue
    .line 72
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/cnlaunch/newgolo/activity/MessageActivity;->setRightBtnVisible(Z)V

    .line 73
    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/MessageActivity;->currentChatRoom:Lcom/cnlaunch/newgolo/model/ChatRoom;

    invoke-virtual {v1}, Lcom/cnlaunch/newgolo/model/ChatRoom;->getId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "666666"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 74
    sget v1, Lcom/cnlaunch/golo3/message/R$string;->cheyunteam_name:I

    invoke-virtual {p0, v1}, Lcom/cnlaunch/newgolo/activity/MessageActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/cnlaunch/newgolo/activity/MessageActivity;->setTitel(Ljava/lang/String;)V

    .line 82
    :goto_0
    return-void

    .line 76
    :cond_0
    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/MessageActivity;->currentChatRoom:Lcom/cnlaunch/newgolo/model/ChatRoom;

    invoke-virtual {v1}, Lcom/cnlaunch/newgolo/model/ChatRoom;->getName()Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, name:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "null"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 78
    :cond_1
    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/MessageActivity;->currentChatRoom:Lcom/cnlaunch/newgolo/model/ChatRoom;

    invoke-virtual {v1}, Lcom/cnlaunch/newgolo/model/ChatRoom;->getId()Ljava/lang/String;

    move-result-object v0

    .line 80
    :cond_2
    invoke-virtual {p0, v0}, Lcom/cnlaunch/newgolo/activity/MessageActivity;->setTitel(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private registerBroadcastReceiver()V
    .locals 2

    .prologue
    .line 123
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 124
    .local v0, filter:Landroid/content/IntentFilter;
    const-string/jumbo v1, "login_cancle"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 125
    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/MessageActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/cnlaunch/newgolo/activity/MessageActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 126
    return-void
.end method


# virtual methods
.method public leftNavClick()V
    .locals 0

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/cnlaunch/newgolo/activity/MessageActivity;->finish()V

    .line 115
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    .line 39
    invoke-super {p0, p1}, Lcom/cnlaunch/golo3/message/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-static {}, Lcom/cnlaunch/newgolo/utils/ScreenManager;->getInstance()Lcom/cnlaunch/newgolo/utils/ScreenManager;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/cnlaunch/newgolo/utils/ScreenManager;->push(Landroid/app/Activity;)V

    .line 41
    sget v5, Lcom/cnlaunch/golo3/message/R$layout;->activity_chatmessage:I

    invoke-virtual {p0, v5}, Lcom/cnlaunch/newgolo/activity/MessageActivity;->addContentView(I)V

    .line 42
    iput-object p0, p0, Lcom/cnlaunch/newgolo/activity/MessageActivity;->mContext:Landroid/content/Context;

    .line 43
    invoke-virtual {p0}, Lcom/cnlaunch/newgolo/activity/MessageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 44
    .local v3, intent:Landroid/content/Intent;
    const-string/jumbo v5, "chatroom"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/cnlaunch/newgolo/model/ChatRoom;

    iput-object v5, p0, Lcom/cnlaunch/newgolo/activity/MessageActivity;->currentChatRoom:Lcom/cnlaunch/newgolo/model/ChatRoom;

    .line 45
    iget-object v5, p0, Lcom/cnlaunch/newgolo/activity/MessageActivity;->currentChatRoom:Lcom/cnlaunch/newgolo/model/ChatRoom;

    if-nez v5, :cond_0

    .line 46
    sget v5, Lcom/cnlaunch/golo3/message/R$string;->start_room_error:I

    const/4 v6, 0x1

    invoke-static {p0, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 69
    :goto_0
    return-void

    .line 49
    :cond_0
    const-string/jumbo v5, "prefix"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/cnlaunch/newgolo/activity/MessageActivity;->prefix:Ljava/lang/String;

    .line 50
    iget-object v5, p0, Lcom/cnlaunch/newgolo/activity/MessageActivity;->prefix:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 53
    iget-object v5, p0, Lcom/cnlaunch/newgolo/activity/MessageActivity;->prefix:Ljava/lang/String;

    const-string/jumbo v6, "98384"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/cnlaunch/newgolo/activity/MessageActivity;->prefix:Ljava/lang/String;

    const-string/jumbo v6, "98394"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 54
    :cond_1
    sget v5, Lcom/cnlaunch/golo3/message/R$id;->header_view:I

    invoke-virtual {p0, v5}, Lcom/cnlaunch/newgolo/activity/MessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/cnlaunch/newgolo/activity/MessageActivity;->headerView:Landroid/widget/LinearLayout;

    .line 55
    iget-object v5, p0, Lcom/cnlaunch/newgolo/activity/MessageActivity;->headerView:Landroid/widget/LinearLayout;

    sget v6, Lcom/cnlaunch/golo3/message/R$drawable;->top_bg_scanpad:I

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 58
    :cond_2
    invoke-direct {p0}, Lcom/cnlaunch/newgolo/activity/MessageActivity;->initView()V

    .line 59
    invoke-virtual {p0}, Lcom/cnlaunch/newgolo/activity/MessageActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 60
    .local v1, fm:Landroid/app/FragmentManager;
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 61
    .local v2, ft:Landroid/app/FragmentTransaction;
    new-instance v4, Lcom/cnlaunch/newgolo/fragment/MessageFragment;

    invoke-direct {v4}, Lcom/cnlaunch/newgolo/fragment/MessageFragment;-><init>()V

    .line 62
    .local v4, msgFragment:Lcom/cnlaunch/newgolo/fragment/MessageFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 63
    .local v0, args:Landroid/os/Bundle;
    const-string/jumbo v5, "chatroom"

    iget-object v6, p0, Lcom/cnlaunch/newgolo/activity/MessageActivity;->currentChatRoom:Lcom/cnlaunch/newgolo/model/ChatRoom;

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 64
    invoke-virtual {v4, v0}, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->setArguments(Landroid/os/Bundle;)V

    .line 65
    sget v5, Lcom/cnlaunch/golo3/message/R$id;->msg_fragment:I

    invoke-virtual {v2, v5, v4}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 66
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    .line 67
    const-string/jumbo v5, "MessageActivity"

    const-string/jumbo v6, "onCreat"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    invoke-direct {p0}, Lcom/cnlaunch/newgolo/activity/MessageActivity;->registerBroadcastReceiver()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 101
    const-string/jumbo v0, "MessageActivity"

    const-string/jumbo v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-static {}, Lcom/cnlaunch/newgolo/utils/ScreenManager;->getInstance()Lcom/cnlaunch/newgolo/utils/ScreenManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/cnlaunch/newgolo/utils/ScreenManager;->pop(Landroid/app/Activity;)V

    .line 103
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/MessageActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/cnlaunch/newgolo/activity/MessageActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 104
    invoke-super {p0}, Lcom/cnlaunch/golo3/message/BaseActivity;->onDestroy()V

    .line 105
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 96
    invoke-super {p0}, Lcom/cnlaunch/golo3/message/BaseActivity;->onPause()V

    .line 97
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 91
    invoke-super {p0}, Lcom/cnlaunch/golo3/message/BaseActivity;->onResume()V

    .line 92
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 86
    invoke-super {p0}, Lcom/cnlaunch/golo3/message/BaseActivity;->onStart()V

    .line 87
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 109
    invoke-super {p0}, Lcom/cnlaunch/golo3/message/BaseActivity;->onStop()V

    .line 110
    return-void
.end method

.method public rightNavClick()V
    .locals 0

    .prologue
    .line 120
    return-void
.end method
