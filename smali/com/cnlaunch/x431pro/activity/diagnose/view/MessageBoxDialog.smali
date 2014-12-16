.class public Lcom/cnlaunch/x431pro/activity/diagnose/view/MessageBoxDialog;
.super Ljava/lang/Object;
.source "MessageBoxDialog.java"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mService:Landroid/os/Messenger;

.field private messageDialog:Landroid/app/ProgressDialog;

.field private processDialog:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/MessageBoxDialog;->processDialog:Landroid/app/ProgressDialog;

    .line 29
    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/MessageBoxDialog;->messageDialog:Landroid/app/ProgressDialog;

    .line 31
    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/MessageBoxDialog;->mService:Landroid/os/Messenger;

    .line 121
    new-instance v0, Lcom/cnlaunch/x431pro/activity/diagnose/view/MessageBoxDialog$1;

    invoke-direct {v0, p0}, Lcom/cnlaunch/x431pro/activity/diagnose/view/MessageBoxDialog$1;-><init>(Lcom/cnlaunch/x431pro/activity/diagnose/view/MessageBoxDialog;)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/MessageBoxDialog;->mHandler:Landroid/os/Handler;

    .line 24
    return-void
.end method

.method static synthetic access$0(Lcom/cnlaunch/x431pro/activity/diagnose/view/MessageBoxDialog;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/MessageBoxDialog;->processDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1(Lcom/cnlaunch/x431pro/activity/diagnose/view/MessageBoxDialog;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/MessageBoxDialog;->messageDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$2(Lcom/cnlaunch/x431pro/activity/diagnose/view/MessageBoxDialog;)Landroid/os/Messenger;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/MessageBoxDialog;->mService:Landroid/os/Messenger;

    return-object v0
.end method

.method private getMessageDialog(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Messenger;)Landroid/app/ProgressDialog;
    .locals 6
    .parameter "mContext"
    .parameter "data"
    .parameter "service"

    .prologue
    .line 66
    iput-object p3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/MessageBoxDialog;->mService:Landroid/os/Messenger;

    .line 67
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/MessageBoxDialog;->messageDialog:Landroid/app/ProgressDialog;

    if-nez v3, :cond_0

    .line 68
    new-instance v3, Landroid/app/ProgressDialog;

    const v4, 0x7f0800ba

    invoke-direct {v3, p1, v4}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/MessageBoxDialog;->messageDialog:Landroid/app/ProgressDialog;

    .line 70
    const-string/jumbo v3, "layout_inflater"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 69
    check-cast v0, Landroid/view/LayoutInflater;

    .line 71
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v3, 0x7f030168

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 72
    .local v1, layout:Landroid/view/View;
    const v3, 0x7f0c006e

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 73
    .local v2, titleView:Landroid/widget/TextView;
    const-string/jumbo v3, "MessageTitle"

    const-string/jumbo v4, ""

    invoke-virtual {p2, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/MessageBoxDialog;->messageDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3, v1}, Landroid/app/ProgressDialog;->setCustomTitle(Landroid/view/View;)V

    .line 75
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/MessageBoxDialog;->messageDialog:Landroid/app/ProgressDialog;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 76
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/MessageBoxDialog;->messageDialog:Landroid/app/ProgressDialog;

    const/high16 v4, 0x104

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/cnlaunch/x431pro/activity/diagnose/view/MessageBoxDialog$3;

    invoke-direct {v5, p0}, Lcom/cnlaunch/x431pro/activity/diagnose/view/MessageBoxDialog$3;-><init>(Lcom/cnlaunch/x431pro/activity/diagnose/view/MessageBoxDialog;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/ProgressDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 86
    if-eqz p2, :cond_0

    .line 87
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/MessageBoxDialog;->messageDialog:Landroid/app/ProgressDialog;

    const-string/jumbo v4, "MessageContent"

    const-string/jumbo v5, ""

    invoke-virtual {p2, v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/MessageBoxDialog;->messageDialog:Landroid/app/ProgressDialog;

    const-string/jumbo v4, "MessageTitle"

    const-string/jumbo v5, ""

    invoke-virtual {p2, v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 91
    .end local v0           #inflater:Landroid/view/LayoutInflater;
    .end local v1           #layout:Landroid/view/View;
    .end local v2           #titleView:Landroid/widget/TextView;
    :cond_0
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/MessageBoxDialog;->messageDialog:Landroid/app/ProgressDialog;

    return-object v3
.end method

.method private getProgerssDialog(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Messenger;)Landroid/app/ProgressDialog;
    .locals 7
    .parameter "mContext"
    .parameter "data"
    .parameter "service"

    .prologue
    const/4 v6, 0x0

    .line 34
    iput-object p3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/MessageBoxDialog;->mService:Landroid/os/Messenger;

    .line 35
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/MessageBoxDialog;->processDialog:Landroid/app/ProgressDialog;

    if-nez v3, :cond_1

    .line 36
    new-instance v3, Landroid/app/ProgressDialog;

    const v4, 0x7f0800ba

    invoke-direct {v3, p1, v4}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/MessageBoxDialog;->processDialog:Landroid/app/ProgressDialog;

    .line 38
    const-string/jumbo v3, "layout_inflater"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 37
    check-cast v0, Landroid/view/LayoutInflater;

    .line 39
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v3, 0x7f030168

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 40
    .local v1, layout:Landroid/view/View;
    const v3, 0x7f0c006e

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 41
    .local v2, titleView:Landroid/widget/TextView;
    const-string/jumbo v3, "MessageTitle"

    const-string/jumbo v4, ""

    invoke-virtual {p2, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/MessageBoxDialog;->processDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3, v1}, Landroid/app/ProgressDialog;->setCustomTitle(Landroid/view/View;)V

    .line 43
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/MessageBoxDialog;->processDialog:Landroid/app/ProgressDialog;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 44
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/MessageBoxDialog;->processDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3, v6}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 45
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/MessageBoxDialog;->processDialog:Landroid/app/ProgressDialog;

    const/high16 v4, 0x104

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/cnlaunch/x431pro/activity/diagnose/view/MessageBoxDialog$2;

    invoke-direct {v5, p0}, Lcom/cnlaunch/x431pro/activity/diagnose/view/MessageBoxDialog$2;-><init>(Lcom/cnlaunch/x431pro/activity/diagnose/view/MessageBoxDialog;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/ProgressDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 55
    if-eqz p2, :cond_0

    .line 56
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/MessageBoxDialog;->processDialog:Landroid/app/ProgressDialog;

    const-string/jumbo v4, "MessageContent"

    const-string/jumbo v5, ""

    invoke-virtual {p2, v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 57
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/MessageBoxDialog;->processDialog:Landroid/app/ProgressDialog;

    const-string/jumbo v4, "MessageTitle"

    const-string/jumbo v5, ""

    invoke-virtual {p2, v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 59
    :cond_0
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/MessageBoxDialog;->processDialog:Landroid/app/ProgressDialog;

    const/16 v4, 0x64

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 60
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/MessageBoxDialog;->processDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3, v6}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 62
    .end local v0           #inflater:Landroid/view/LayoutInflater;
    .end local v1           #layout:Landroid/view/View;
    .end local v2           #titleView:Landroid/widget/TextView;
    :cond_1
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/MessageBoxDialog;->processDialog:Landroid/app/ProgressDialog;

    return-object v3
.end method


# virtual methods
.method public closeDialog()V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/MessageBoxDialog;->messageDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/MessageBoxDialog;->messageDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/MessageBoxDialog;->messageDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/MessageBoxDialog;->processDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/MessageBoxDialog;->processDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 117
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/MessageBoxDialog;->processDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 119
    :cond_1
    return-void
.end method

.method public showMessageDialog(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Messenger;)V
    .locals 2
    .parameter "mContext"
    .parameter "data"
    .parameter "mService"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/MessageBoxDialog;->messageDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/MessageBoxDialog;->messageDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/MessageBoxDialog;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 110
    :goto_0
    return-void

    .line 107
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/cnlaunch/x431pro/activity/diagnose/view/MessageBoxDialog;->getMessageDialog(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Messenger;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/MessageBoxDialog;->messageDialog:Landroid/app/ProgressDialog;

    .line 108
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/MessageBoxDialog;->messageDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    goto :goto_0
.end method

.method public showProgressDialog(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Messenger;)V
    .locals 2
    .parameter "mContext"
    .parameter "data"
    .parameter "mService"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/MessageBoxDialog;->processDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/MessageBoxDialog;->processDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/MessageBoxDialog;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 101
    :goto_0
    return-void

    .line 98
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/cnlaunch/x431pro/activity/diagnose/view/MessageBoxDialog;->getProgerssDialog(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Messenger;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/MessageBoxDialog;->processDialog:Landroid/app/ProgressDialog;

    .line 99
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/MessageBoxDialog;->processDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    goto :goto_0
.end method
