.class public Lcom/cnlaunch/x431pro/activity/mine/ReadReportFragment;
.super Lcom/cnlaunch/x431pro/activity/BaseFragment;
.source "ReadReportFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation


# instance fields
.field private btn_delete:Landroid/widget/Button;

.field private btn_print:Landroid/widget/RadioButton;

.field private btn_share:Landroid/widget/Button;

.field private iv_report_images:Landroid/widget/ImageView;

.field private mHandler:Landroid/os/Handler;

.field private mReportBitmap:Landroid/graphics/Bitmap;

.field private mReportPath:Ljava/lang/String;

.field private reportText:Ljava/lang/String;

.field private tv_report_texts:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/BaseFragment;-><init>()V

    .line 43
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ReadReportFragment;->mReportPath:Ljava/lang/String;

    .line 45
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ReadReportFragment;->reportText:Ljava/lang/String;

    .line 172
    new-instance v0, Lcom/cnlaunch/x431pro/activity/mine/ReadReportFragment$1;

    invoke-direct {v0, p0}, Lcom/cnlaunch/x431pro/activity/mine/ReadReportFragment$1;-><init>(Lcom/cnlaunch/x431pro/activity/mine/ReadReportFragment;)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ReadReportFragment;->mHandler:Landroid/os/Handler;

    .line 36
    return-void
.end method

.method static synthetic access$0(Lcom/cnlaunch/x431pro/activity/mine/ReadReportFragment;)Landroid/widget/RadioButton;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ReadReportFragment;->btn_print:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$1(Lcom/cnlaunch/x431pro/activity/mine/ReadReportFragment;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ReadReportFragment;->mReportPath:Ljava/lang/String;

    return-object v0
.end method

.method private initViews()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 68
    const v0, 0x7f0705a6

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/mine/ReadReportFragment;->setTitle(I)V

    .line 69
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ReadReportFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020521

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/mine/ReadReportFragment;->setLeftImage(Landroid/graphics/drawable/Drawable;)V

    .line 70
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/ReadReportFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0d04b9

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ReadReportFragment;->tv_report_texts:Landroid/widget/TextView;

    .line 71
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/ReadReportFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0d04ba

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ReadReportFragment;->iv_report_images:Landroid/widget/ImageView;

    .line 72
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ReadReportFragment;->mReportPath:Ljava/lang/String;

    const-string/jumbo v1, ".txt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ReadReportFragment;->iv_report_images:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 74
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ReadReportFragment;->mReportPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/cnlaunch/x431pro/utils/file/FileUtils;->readFileSdcard(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ReadReportFragment;->reportText:Ljava/lang/String;

    .line 75
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ReadReportFragment;->tv_report_texts:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/ReadReportFragment;->reportText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    :goto_0
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/ReadReportFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0d04b5

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ReadReportFragment;->btn_print:Landroid/widget/RadioButton;

    .line 83
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ReadReportFragment;->btn_print:Landroid/widget/RadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/ReadReportFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0d04b7

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ReadReportFragment;->btn_delete:Landroid/widget/Button;

    .line 86
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ReadReportFragment;->btn_delete:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/ReadReportFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0d04b6

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ReadReportFragment;->btn_share:Landroid/widget/Button;

    .line 89
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ReadReportFragment;->btn_share:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    return-void

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ReadReportFragment;->iv_report_images:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 78
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ReadReportFragment;->tv_report_texts:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 79
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ReadReportFragment;->mReportPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ReadReportFragment;->mReportBitmap:Landroid/graphics/Bitmap;

    .line 80
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ReadReportFragment;->iv_report_images:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/ReadReportFragment;->mReportBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method


# virtual methods
.method public doInBackground(I)Ljava/lang/Object;
    .locals 3
    .parameter "requestCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/framework/network/http/HttpException;
        }
    .end annotation

    .prologue
    .line 128
    packed-switch p1, :pswitch_data_0

    .line 133
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->doInBackground(I)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    return-object v1

    .line 130
    :pswitch_0
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/ReadReportFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/ReadReportFragment;->reportText:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/cnlaunch/x431pro/utils/print/PrintDataUtils;->printDataPicNotitle(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 131
    .local v0, result:I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    .line 128
    nop

    :pswitch_data_0
    .packed-switch 0x4e2d
        :pswitch_0
    .end packed-switch
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 58
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 59
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/mine/ReadReportFragment;->initViews()V

    .line 60
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->onAttach(Landroid/app/Activity;)V

    .line 50
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/ReadReportFragment;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 51
    .local v0, bundle:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 52
    const-string/jumbo v1, "report_name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/ReadReportFragment;->mReportPath:Ljava/lang/String;

    .line 54
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    .line 95
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 124
    :goto_0
    return-void

    .line 97
    :pswitch_0
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/ReadReportFragment;->mContext:Landroid/content/Context;

    const v3, 0x7f0706b7

    invoke-static {v2, v3}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->show(Landroid/content/Context;I)V

    .line 98
    const/16 v2, 0x4e2d

    invoke-virtual {p0, v2}, Lcom/cnlaunch/x431pro/activity/mine/ReadReportFragment;->request(I)V

    goto :goto_0

    .line 101
    :pswitch_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 102
    .local v1, intentsend:Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 103
    .local v0, bundle:Landroid/os/Bundle;
    const-string/jumbo v2, "FilePath"

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/mine/ReadReportFragment;->mReportPath:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 105
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/ReadReportFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/cnlaunch/x431pro/activity/share/ShareActivity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 106
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/ReadReportFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 110
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #intentsend:Landroid/content/Intent;
    :pswitch_2
    new-instance v2, Lcom/cnlaunch/x431pro/activity/mine/ReadReportFragment$2;

    invoke-direct {v2, p0}, Lcom/cnlaunch/x431pro/activity/mine/ReadReportFragment$2;-><init>(Lcom/cnlaunch/x431pro/activity/mine/ReadReportFragment;)V

    .line 121
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/ReadReportFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0704fa

    const v5, 0x7f0705e9

    const/4 v6, 0x1

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/cnlaunch/x431pro/activity/mine/ReadReportFragment$2;->showDialog(Landroid/content/Context;IIZ)V

    goto :goto_0

    .line 95
    :pswitch_data_0
    .packed-switch 0x7f0d04b5
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreateFragmentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 64
    const v0, 0x7f0301a0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onFailure(IILjava/lang/Object;)V
    .locals 2
    .parameter "requestCode"
    .parameter "state"
    .parameter "result"

    .prologue
    .line 160
    packed-switch p1, :pswitch_data_0

    .line 167
    invoke-super {p0, p1, p2, p3}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->onFailure(IILjava/lang/Object;)V

    .line 170
    :goto_0
    return-void

    .line 162
    :pswitch_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ReadReportFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 163
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ReadReportFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->dismiss(Landroid/content/Context;)V

    .line 164
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/ReadReportFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0706a6

    invoke-static {v0, v1}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 160
    nop

    :pswitch_data_0
    .packed-switch 0x4e2d
        :pswitch_0
    .end packed-switch
.end method

.method public onSuccess(ILjava/lang/Object;)V
    .locals 3
    .parameter "requestCode"
    .parameter "result"

    .prologue
    const/4 v2, 0x0

    .line 139
    packed-switch p1, :pswitch_data_0

    .line 153
    invoke-super {p0, p1, p2}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->onSuccess(ILjava/lang/Object;)V

    .line 156
    .end local p2
    :cond_0
    :goto_0
    return-void

    .line 141
    .restart local p2
    :pswitch_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ReadReportFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 142
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ReadReportFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->dismiss(Landroid/content/Context;)V

    .line 143
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/ReadReportFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0}, Lcom/cnlaunch/framework/utils/NetPOSPrinterUtil;->resultToast(Landroid/content/Context;I)V

    .line 144
    check-cast p2, Ljava/lang/Integer;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xfff

    if-ne v0, v1, :cond_0

    .line 145
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ReadReportFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/x431pro/common/Constants;->IS_SHOW_PRINTER_SET:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 146
    new-instance v0, Lcom/cnlaunch/x431pro/widget/dialog/PrinterFailrueDialog;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/ReadReportFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/cnlaunch/x431pro/widget/dialog/PrinterFailrueDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/widget/dialog/PrinterFailrueDialog;->show()V

    goto :goto_0

    .line 148
    :cond_1
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ReadReportFragment;->mContext:Landroid/content/Context;

    const v1, 0x7f070022

    invoke-static {v0, v1}, Lcom/cnlaunch/framework/utils/NToast;->longToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 139
    :pswitch_data_0
    .packed-switch 0x4e2d
        :pswitch_0
    .end packed-switch
.end method
