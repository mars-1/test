.class Lcom/cnlaunch/x431pro/activity/help/HelpDocManger$HelpMenuHandler;
.super Landroid/os/Handler;
.source "HelpDocManger.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/x431pro/activity/help/HelpDocManger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HelpMenuHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/help/HelpDocManger;


# direct methods
.method private constructor <init>(Lcom/cnlaunch/x431pro/activity/help/HelpDocManger;)V
    .locals 0
    .parameter

    .prologue
    .line 158
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/help/HelpDocManger$HelpMenuHandler;->this$0:Lcom/cnlaunch/x431pro/activity/help/HelpDocManger;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cnlaunch/x431pro/activity/help/HelpDocManger;Lcom/cnlaunch/x431pro/activity/help/HelpDocManger$HelpMenuHandler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 158
    invoke-direct {p0, p1}, Lcom/cnlaunch/x431pro/activity/help/HelpDocManger$HelpMenuHandler;-><init>(Lcom/cnlaunch/x431pro/activity/help/HelpDocManger;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v4, 0x2

    .line 160
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 161
    iget v2, p1, Landroid/os/Message;->what:I

    if-nez v2, :cond_1

    .line 162
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 163
    .local v0, bundle:Landroid/os/Bundle;
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/help/HelpDocManger$HelpMenuHandler;->this$0:Lcom/cnlaunch/x431pro/activity/help/HelpDocManger;

    iget-object v2, v2, Lcom/cnlaunch/x431pro/activity/help/HelpDocManger;->mParentHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 164
    .local v1, message:Landroid/os/Message;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 165
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 176
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #message:Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    .line 166
    :cond_1
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 167
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/help/HelpDocManger$HelpMenuHandler;->this$0:Lcom/cnlaunch/x431pro/activity/help/HelpDocManger;

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/activity/help/HelpDocManger;->setupScanHelpMenu()V

    goto :goto_0

    .line 168
    :cond_2
    iget v2, p1, Landroid/os/Message;->what:I

    if-ne v2, v4, :cond_3

    .line 169
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 170
    .restart local v0       #bundle:Landroid/os/Bundle;
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/help/HelpDocManger$HelpMenuHandler;->this$0:Lcom/cnlaunch/x431pro/activity/help/HelpDocManger;

    iget-object v2, v2, Lcom/cnlaunch/x431pro/activity/help/HelpDocManger;->mParentHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 171
    .restart local v1       #message:Landroid/os/Message;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 172
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 173
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #message:Landroid/os/Message;
    :cond_3
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 174
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/help/HelpDocManger$HelpMenuHandler;->this$0:Lcom/cnlaunch/x431pro/activity/help/HelpDocManger;

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/activity/help/HelpDocManger;->StartReadQ2A()V

    goto :goto_0
.end method
