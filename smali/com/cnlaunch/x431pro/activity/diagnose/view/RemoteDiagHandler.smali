.class public abstract Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler;
.super Landroid/os/Handler;
.source "RemoteDiagHandler.java"


# static fields
.field public static final MSG_CLOSE_DIALOG:I = 0x69

.field public static final MSG_ExitFailConnect:I = 0x64

.field public static final MSG_ExitRemoteDiag:I = 0x67

.field public static final MSG_ExitTip:I = 0x66

.field public static final MSG_LaunchDiagnose:I = 0x65

.field public static final MSG_OVERRECORD:I = 0x6c

.field public static final MSG_RETRY_DIALOG:I = 0x6b

.field public static final MSG_RETRY_DIALOG_TIP:I = 0x6e

.field public static final MSG_SendStart:I = 0x68

.field public static final MSG_StopSocket:I = 0x6d

.field public static final MSG_WAIT_DIALOG:I = 0x6a


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDialog:Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;

.field private statues:I

.field private timer:Ljava/util/Timer;

.field private timerTask:Ljava/util/TimerTask;

.field private waitDialog:Lcom/cnlaunch/x431pro/widget/dialog/WaitDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "mContext"

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 39
    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler;->mDialog:Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;

    .line 40
    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler;->waitDialog:Lcom/cnlaunch/x431pro/widget/dialog/WaitDialog;

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler;->statues:I

    .line 236
    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler;->timer:Ljava/util/Timer;

    .line 237
    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler;->timerTask:Ljava/util/TimerTask;

    .line 60
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler;->mContext:Landroid/content/Context;

    .line 61
    return-void
.end method

.method static synthetic access$0(Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 203
    invoke-direct {p0, p1}, Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler;->waitProgressDialog(I)V

    return-void
.end method

.method private showExitDiag(I)V
    .locals 5
    .parameter "stringID"

    .prologue
    const/4 v4, 0x1

    .line 131
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler;->dimissAllDialog()V

    .line 132
    new-instance v0, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler;->mContext:Landroid/content/Context;

    const v2, 0x7f070544

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;-><init>(Landroid/content/Context;IIZ)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler;->mDialog:Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;

    .line 133
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler;->mDialog:Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;

    const v1, 0x7f07002b

    new-instance v2, Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler$1;

    invoke-direct {v2, p0}, Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler$1;-><init>(Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler;)V

    invoke-virtual {v0, v1, v4, v2}, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;->setAlphaOnClickListener(IZLandroid/view/View$OnClickListener;)V

    .line 140
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler;->mDialog:Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;

    const v1, 0x7f070511

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v4, v2}, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;->setBetaOnClickListener(IZLandroid/view/View$OnClickListener;)V

    .line 141
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler;->mDialog:Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;->show()V

    .line 142
    return-void
.end method

.method private showFailDialog(I)V
    .locals 4
    .parameter "stringID"

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler;->dimissAllDialog()V

    .line 147
    new-instance v0, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler;->mContext:Landroid/content/Context;

    const v2, 0x7f070544

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;-><init>(Landroid/content/Context;IIZ)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler;->mDialog:Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;

    .line 148
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler;->mDialog:Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;

    const v1, 0x7f07002b

    const/4 v2, 0x1

    new-instance v3, Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler$2;

    invoke-direct {v3, p0}, Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler$2;-><init>(Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;->setAlphaOnClickListener(IZLandroid/view/View$OnClickListener;)V

    .line 154
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler;->mDialog:Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;->show()V

    .line 155
    return-void
.end method

.method private showRetryDialog(Z)V
    .locals 6
    .parameter "isWait"

    .prologue
    const/4 v5, 0x1

    .line 171
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler;->dimissAllDialog()V

    .line 172
    new-instance v0, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler;->mContext:Landroid/content/Context;

    const v2, 0x7f070544

    const v3, 0x7f0706fc

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;-><init>(Landroid/content/Context;IIZ)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler;->mDialog:Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;

    .line 173
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler;->mDialog:Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;

    const v1, 0x7f070526

    new-instance v2, Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler$4;

    invoke-direct {v2, p0}, Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler$4;-><init>(Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler;)V

    invoke-virtual {v0, v1, v5, v2}, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;->setAlphaOnClickListener(IZLandroid/view/View$OnClickListener;)V

    .line 179
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler;->mDialog:Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;

    const v1, 0x7f0706fb

    new-instance v2, Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler$5;

    invoke-direct {v2, p0, p1}, Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler$5;-><init>(Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler;Z)V

    invoke-virtual {v0, v1, v5, v2}, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;->setBetaOnClickListener(IZLandroid/view/View$OnClickListener;)V

    .line 187
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler;->mDialog:Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;->show()V

    .line 188
    return-void
.end method

.method private showStopDialog(I)V
    .locals 4
    .parameter "stringID"

    .prologue
    .line 158
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler;->dimissAllDialog()V

    .line 159
    new-instance v0, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler;->mContext:Landroid/content/Context;

    const v2, 0x7f070544

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;-><init>(Landroid/content/Context;IIZ)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler;->mDialog:Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;

    .line 160
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler;->mDialog:Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;

    const v1, 0x7f07002b

    const/4 v2, 0x1

    new-instance v3, Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler$3;

    invoke-direct {v3, p0}, Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler$3;-><init>(Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;->setAlphaOnClickListener(IZLandroid/view/View$OnClickListener;)V

    .line 166
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler;->mDialog:Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;->show()V

    .line 167
    return-void
.end method

.method private waitProgressDialog(I)V
    .locals 4
    .parameter "stringID"

    .prologue
    const/4 v3, 0x0

    .line 204
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler;->waitDialog:Lcom/cnlaunch/x431pro/widget/dialog/WaitDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler;->waitDialog:Lcom/cnlaunch/x431pro/widget/dialog/WaitDialog;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/widget/dialog/WaitDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler;->waitDialog:Lcom/cnlaunch/x431pro/widget/dialog/WaitDialog;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/widget/dialog/WaitDialog;->dismiss()V

    .line 206
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler;->waitDialog:Lcom/cnlaunch/x431pro/widget/dialog/WaitDialog;

    .line 208
    :cond_0
    new-instance v0, Lcom/cnlaunch/x431pro/widget/dialog/WaitDialog;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler;->mContext:Landroid/content/Context;

    const v2, 0x7f0704fc

    invoke-direct {v0, v1, v3, v2, p1}, Lcom/cnlaunch/x431pro/widget/dialog/WaitDialog;-><init>(Landroid/content/Context;ZII)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler;->waitDialog:Lcom/cnlaunch/x431pro/widget/dialog/WaitDialog;

    .line 209
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler;->waitDialog:Lcom/cnlaunch/x431pro/widget/dialog/WaitDialog;

    invoke-virtual {v0, v3}, Lcom/cnlaunch/x431pro/widget/dialog/WaitDialog;->setCanceledOnTouchOutside(Z)V

    .line 210
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler;->waitDialog:Lcom/cnlaunch/x431pro/widget/dialog/WaitDialog;

    invoke-virtual {v0, v3}, Lcom/cnlaunch/x431pro/widget/dialog/WaitDialog;->setCancelable(Z)V

    .line 211
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler;->waitDialog:Lcom/cnlaunch/x431pro/widget/dialog/WaitDialog;

    new-instance v1, Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler$6;

    invoke-direct {v1, p0}, Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler$6;-><init>(Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler;)V

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/widget/dialog/WaitDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 221
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler;->waitDialog:Lcom/cnlaunch/x431pro/widget/dialog/WaitDialog;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/widget/dialog/WaitDialog;->show()V

    .line 222
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler;->timerAction(Landroid/content/Context;)V

    .line 223
    return-void
.end method


# virtual methods
.method public dimissAllDialog()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 191
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->dismiss(Landroid/content/Context;)V

    .line 192
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler;->mDialog:Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler;->mDialog:Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler;->mDialog:Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;->dismiss()V

    .line 194
    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler;->mDialog:Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler;->waitDialog:Lcom/cnlaunch/x431pro/widget/dialog/WaitDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler;->waitDialog:Lcom/cnlaunch/x431pro/widget/dialog/WaitDialog;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/widget/dialog/WaitDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 197
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler;->waitDialog:Lcom/cnlaunch/x431pro/widget/dialog/WaitDialog;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/widget/dialog/WaitDialog;->dismiss()V

    .line 198
    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler;->waitDialog:Lcom/cnlaunch/x431pro/widget/dialog/WaitDialog;

    .line 200
    :cond_1
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler;->timerStop()V

    .line 201
    return-void
.end method

.method public getStatues()I
    .locals 1

    .prologue
    .line 265
    iget v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler;->statues:I

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 65
    const-string/jumbo v0, "Sanda"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u63a5\u6536\u5230\u7684\u72b6\u6001\u503c\u4e3a\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 124
    :goto_0
    return-void

    .line 68
    :sswitch_0
    const v0, 0x7f070545

    invoke-direct {p0, v0}, Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler;->waitProgressDialog(I)V

    goto :goto_0

    .line 71
    :sswitch_1
    const v0, 0x7f070546

    invoke-direct {p0, v0}, Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler;->showFailDialog(I)V

    goto :goto_0

    .line 74
    :sswitch_2
    const v0, 0x7f070547

    invoke-direct {p0, v0}, Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler;->waitProgressDialog(I)V

    goto :goto_0

    .line 77
    :sswitch_3
    const v0, 0x7f070548

    invoke-direct {p0, v0}, Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler;->showFailDialog(I)V

    goto :goto_0

    .line 80
    :sswitch_4
    const v0, 0x7f070549

    invoke-direct {p0, v0}, Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler;->waitProgressDialog(I)V

    .line 81
    const/16 v0, 0x68

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler;->handlerStatue(I)V

    goto :goto_0

    .line 84
    :sswitch_5
    const v0, 0x7f07054a

    invoke-direct {p0, v0}, Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler;->showFailDialog(I)V

    goto :goto_0

    .line 87
    :sswitch_6
    const v0, 0x7f07054b

    invoke-direct {p0, v0}, Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler;->waitProgressDialog(I)V

    .line 88
    const/16 v0, 0x65

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler;->handlerStatue(I)V

    goto :goto_0

    .line 91
    :sswitch_7
    const v0, 0x7f07054c

    invoke-direct {p0, v0}, Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler;->showFailDialog(I)V

    goto :goto_0

    .line 94
    :sswitch_8
    const v0, 0x7f07054d

    invoke-direct {p0, v0}, Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler;->showStopDialog(I)V

    goto :goto_0

    .line 97
    :sswitch_9
    const v0, 0x7f07054e

    invoke-direct {p0, v0}, Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler;->showStopDialog(I)V

    goto :goto_0

    .line 100
    :sswitch_a
    const v0, 0x7f07054f

    invoke-direct {p0, v0}, Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler;->showFailDialog(I)V

    goto :goto_0

    .line 103
    :sswitch_b
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler;->mContext:Landroid/content/Context;

    const v1, 0x7f070550

    invoke-static {v0, v1}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 106
    :sswitch_c
    const v0, 0x7f070551

    invoke-direct {p0, v0}, Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler;->showExitDiag(I)V

    goto :goto_0

    .line 109
    :sswitch_d
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler;->dimissAllDialog()V

    goto :goto_0

    .line 112
    :sswitch_e
    const v0, 0x7f0706f9

    invoke-direct {p0, v0}, Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler;->waitProgressDialog(I)V

    goto :goto_0

    .line 115
    :sswitch_f
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler;->showRetryDialog(Z)V

    goto :goto_0

    .line 118
    :sswitch_10
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler;->timerActionTip(Landroid/content/Context;)V

    goto :goto_0

    .line 121
    :sswitch_11
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler;->showRetryDialog(Z)V

    goto/16 :goto_0

    .line 66
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0x66 -> :sswitch_c
        0x69 -> :sswitch_d
        0x6a -> :sswitch_e
        0x6b -> :sswitch_f
        0x6c -> :sswitch_10
        0x6e -> :sswitch_11
    .end sparse-switch
.end method

.method public abstract handlerStatue(I)V
.end method

.method public setStatues(I)V
    .locals 0
    .parameter "statues"

    .prologue
    .line 269
    iput p1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler;->statues:I

    .line 270
    return-void
.end method

.method public timerAction(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 240
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler;->timerStop()V

    .line 241
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler;->timer:Ljava/util/Timer;

    .line 242
    new-instance v0, Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler$7;

    invoke-direct {v0, p0}, Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler$7;-><init>(Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler;)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler;->timerTask:Ljava/util/TimerTask;

    .line 248
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler;->timer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler;->timerTask:Ljava/util/TimerTask;

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 249
    return-void
.end method

.method public timerActionTip(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 253
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler;->timerStop()V

    .line 254
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler;->timer:Ljava/util/Timer;

    .line 255
    new-instance v0, Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler$8;

    invoke-direct {v0, p0}, Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler$8;-><init>(Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler;)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler;->timerTask:Ljava/util/TimerTask;

    .line 261
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler;->timer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler;->timerTask:Ljava/util/TimerTask;

    const-wide/32 v2, 0x15f90

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 262
    return-void
.end method

.method public timerStop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 226
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 228
    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler;->timer:Ljava/util/Timer;

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 231
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler;->timerTask:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 232
    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler;->timerTask:Ljava/util/TimerTask;

    .line 234
    :cond_1
    return-void
.end method
