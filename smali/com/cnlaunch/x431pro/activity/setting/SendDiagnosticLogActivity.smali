.class public Lcom/cnlaunch/x431pro/activity/setting/SendDiagnosticLogActivity;
.super Lcom/cnlaunch/x431pro/activity/BaseDialogActivity;
.source "SendDiagnosticLogActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/cnlaunch/framework/network/async/OnDataListener;


# instance fields
.field private final REQ_SEND_DIAGNOSTIC_LOG_CODE:I

.field private btn_feed_back_sure:Landroid/widget/Button;

.field private et_feed_back_remark:Landroid/widget/EditText;

.field private isFiag:Ljava/lang/Boolean;

.field private linearnumber:Landroid/widget/RelativeLayout;

.field private mAsyncTaskManager:Lcom/cnlaunch/framework/network/async/AsyncTaskManager;

.field private mContext:Landroid/content/Context;

.field private mNum:I

.field private mVectorFile:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cnlaunch/x431pro/utils/diagnose/DiagnoseLogInfoSearchUtil$DiagnoseLogFileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private nTextCaeName:Ljava/lang/String;

.field private pb_feed_back_progressBar:Landroid/widget/ProgressBar;

.field private tv__commit_log_num:Landroid/widget/TextView;

.field private tv_commit_log_cartname:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/BaseDialogActivity;-><init>()V

    .line 49
    const/16 v0, 0x4bb

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/setting/SendDiagnosticLogActivity;->REQ_SEND_DIAGNOSTIC_LOG_CODE:I

    .line 59
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/SendDiagnosticLogActivity;->nTextCaeName:Ljava/lang/String;

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/setting/SendDiagnosticLogActivity;->mNum:I

    .line 62
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/SendDiagnosticLogActivity;->isFiag:Ljava/lang/Boolean;

    .line 47
    return-void
.end method

.method private initDialogSize()V
    .locals 13

    .prologue
    const-wide v11, 0x4060a00000000000L

    .line 279
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/setting/SendDiagnosticLogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/high16 v6, 0x7f09

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 280
    .local v4, widthSize:I
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/setting/SendDiagnosticLogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090001

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 281
    .local v1, heightSize:I
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/setting/SendDiagnosticLogActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getHeight()I

    move-result v0

    .line 282
    .local v0, height:I
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/setting/SendDiagnosticLogActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getWidth()I

    move-result v3

    .line 283
    .local v3, width:I
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/setting/SendDiagnosticLogActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 284
    .local v2, lp:Landroid/view/WindowManager$LayoutParams;
    if-le v0, v3, :cond_2

    .line 285
    if-lez v4, :cond_0

    .line 286
    int-to-double v5, v3

    int-to-double v7, v4

    const-wide/high16 v9, 0x4059

    div-double/2addr v7, v9

    mul-double/2addr v5, v7

    double-to-int v5, v5

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 288
    :cond_0
    if-lez v1, :cond_1

    .line 289
    int-to-double v5, v0

    int-to-double v7, v1

    div-double/2addr v7, v11

    mul-double/2addr v5, v7

    double-to-int v5, v5

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 300
    :cond_1
    :goto_0
    return-void

    .line 292
    :cond_2
    if-lez v4, :cond_3

    .line 293
    int-to-double v5, v3

    int-to-double v7, v4

    div-double/2addr v7, v11

    mul-double/2addr v5, v7

    double-to-int v5, v5

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 295
    :cond_3
    if-lez v1, :cond_1

    .line 296
    int-to-double v5, v0

    int-to-double v7, v1

    const-wide v9, 0x4052c00000000000L

    div-double/2addr v7, v9

    mul-double/2addr v5, v7

    double-to-int v5, v5

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_0
.end method

.method private initViews()V
    .locals 3

    .prologue
    .line 84
    const v1, 0x7f0d043d

    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/activity/setting/SendDiagnosticLogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/setting/SendDiagnosticLogActivity;->btn_feed_back_sure:Landroid/widget/Button;

    .line 85
    const v1, 0x7f0d0437

    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/activity/setting/SendDiagnosticLogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/setting/SendDiagnosticLogActivity;->et_feed_back_remark:Landroid/widget/EditText;

    .line 86
    const v1, 0x7f0d0435

    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/activity/setting/SendDiagnosticLogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/setting/SendDiagnosticLogActivity;->tv_commit_log_cartname:Landroid/widget/TextView;

    .line 87
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/setting/SendDiagnosticLogActivity;->mVectorFile:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 90
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/setting/SendDiagnosticLogActivity;->tv_commit_log_cartname:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/setting/SendDiagnosticLogActivity;->nTextCaeName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    const v1, 0x7f0d043c

    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/activity/setting/SendDiagnosticLogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/setting/SendDiagnosticLogActivity;->pb_feed_back_progressBar:Landroid/widget/ProgressBar;

    .line 92
    const v1, 0x7f0d043b

    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/activity/setting/SendDiagnosticLogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/setting/SendDiagnosticLogActivity;->tv__commit_log_num:Landroid/widget/TextView;

    .line 93
    const v1, 0x7f0d0439

    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/activity/setting/SendDiagnosticLogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/setting/SendDiagnosticLogActivity;->linearnumber:Landroid/widget/RelativeLayout;

    .line 94
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/setting/SendDiagnosticLogActivity;->btn_feed_back_sure:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    return-void

    .line 88
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/setting/SendDiagnosticLogActivity;->nTextCaeName:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "     "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/setting/SendDiagnosticLogActivity;->mVectorFile:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/x431pro/utils/diagnose/DiagnoseLogInfoSearchUtil$DiagnoseLogFileInfo;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/utils/diagnose/DiagnoseLogInfoSearchUtil$DiagnoseLogFileInfo;->getVehicleSoftname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/setting/SendDiagnosticLogActivity;->nTextCaeName:Ljava/lang/String;

    .line 87
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public doInBackground(I)Ljava/lang/Object;
    .locals 7
    .parameter "requestCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/framework/network/http/HttpException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 131
    packed-switch p1, :pswitch_data_0

    .line 139
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    return-object v1

    .line 133
    :pswitch_0
    new-instance v0, Lcom/cnlaunch/x431pro/module/setting/action/SettingAction;

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/setting/SendDiagnosticLogActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/cnlaunch/x431pro/module/setting/action/SettingAction;-><init>(Landroid/content/Context;)V

    .line 134
    .local v0, checkServerLogSendAction:Lcom/cnlaunch/x431pro/module/setting/action/SettingAction;
    const/4 v1, 0x0

    .line 135
    .local v1, response:Lcom/cnlaunch/x431pro/module/setting/model/UploadDiagnosticLogResponse;
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/setting/SendDiagnosticLogActivity;->mVectorFile:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cnlaunch/x431pro/utils/diagnose/DiagnoseLogInfoSearchUtil$DiagnoseLogFileInfo;

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/utils/diagnose/DiagnoseLogInfoSearchUtil$DiagnoseLogFileInfo;->getDeviceSN()Ljava/lang/String;

    move-result-object v3

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/setting/SendDiagnosticLogActivity;->mVectorFile:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cnlaunch/x431pro/utils/diagnose/DiagnoseLogInfoSearchUtil$DiagnoseLogFileInfo;

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/utils/diagnose/DiagnoseLogInfoSearchUtil$DiagnoseLogFileInfo;->getVehicleSoftname()Ljava/lang/String;

    move-result-object v4

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/setting/SendDiagnosticLogActivity;->et_feed_back_remark:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    .line 136
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/setting/SendDiagnosticLogActivity;->mVectorFile:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cnlaunch/x431pro/utils/diagnose/DiagnoseLogInfoSearchUtil$DiagnoseLogFileInfo;

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/utils/diagnose/DiagnoseLogInfoSearchUtil$DiagnoseLogFileInfo;->getZipFilePath()Ljava/lang/String;

    move-result-object v2

    .line 135
    invoke-virtual {v0, v3, v4, v5, v2}, Lcom/cnlaunch/x431pro/module/setting/action/SettingAction;->sendDiagnosticLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/setting/model/UploadDiagnosticLogResponse;

    move-result-object v1

    .line 137
    goto :goto_0

    .line 131
    :pswitch_data_0
    .packed-switch 0x4bb
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 11
    .parameter "v"
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 100
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 127
    :goto_0
    return-void

    .line 103
    :pswitch_0
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    :try_start_0
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/setting/SendDiagnosticLogActivity;->mVectorFile:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-lt v4, v5, :cond_0

    .line 112
    :goto_2
    new-instance v3, Ljava/io/File;

    invoke-static {}, Lcom/cnlaunch/x431pro/utils/PathUtils;->getLogZipPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 113
    .local v3, file:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 114
    const v5, 0x7f070729

    const/16 v6, 0x11

    invoke-static {p0, v5, v6}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;II)V

    .line 115
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/setting/SendDiagnosticLogActivity;->finish()V

    goto :goto_0

    .line 104
    .end local v3           #file:Ljava/io/File;
    :cond_0
    :try_start_1
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string/jumbo v5, "yyyyMMddhhmmss"

    invoke-direct {v6, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/util/Date;

    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/setting/SendDiagnosticLogActivity;->mVectorFile:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/cnlaunch/x431pro/utils/diagnose/DiagnoseLogInfoSearchUtil$DiagnoseLogFileInfo;

    invoke-virtual {v5}, Lcom/cnlaunch/x431pro/utils/diagnose/DiagnoseLogInfoSearchUtil$DiagnoseLogFileInfo;->getCreateDate()J

    move-result-wide v8

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 105
    .local v1, ctime:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/cnlaunch/x431pro/utils/PathUtils;->getLogZipPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/setting/SendDiagnosticLogActivity;->mVectorFile:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/cnlaunch/x431pro/utils/diagnose/DiagnoseLogInfoSearchUtil$DiagnoseLogFileInfo;

    invoke-virtual {v5}, Lcom/cnlaunch/x431pro/utils/diagnose/DiagnoseLogInfoSearchUtil$DiagnoseLogFileInfo;->getDeviceSN()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/setting/SendDiagnosticLogActivity;->mVectorFile:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/cnlaunch/x431pro/utils/diagnose/DiagnoseLogInfoSearchUtil$DiagnoseLogFileInfo;

    invoke-virtual {v5}, Lcom/cnlaunch/x431pro/utils/diagnose/DiagnoseLogInfoSearchUtil$DiagnoseLogFileInfo;->getVehicleSoftname()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ".zip"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, LogZipPath:Ljava/lang/String;
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/setting/SendDiagnosticLogActivity;->mVectorFile:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/cnlaunch/x431pro/utils/diagnose/DiagnoseLogInfoSearchUtil$DiagnoseLogFileInfo;

    invoke-virtual {v5}, Lcom/cnlaunch/x431pro/utils/diagnose/DiagnoseLogInfoSearchUtil$DiagnoseLogFileInfo;->getFullFilePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v0}, Lcom/cnlaunch/x431pro/utils/file/ZipFileUtils;->zipFolder(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/setting/SendDiagnosticLogActivity;->mVectorFile:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/cnlaunch/x431pro/utils/diagnose/DiagnoseLogInfoSearchUtil$DiagnoseLogFileInfo;

    invoke-virtual {v5, v0}, Lcom/cnlaunch/x431pro/utils/diagnose/DiagnoseLogInfoSearchUtil$DiagnoseLogFileInfo;->setZipFilePath(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 103
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 109
    .end local v0           #LogZipPath:Ljava/lang/String;
    .end local v1           #ctime:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 110
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 117
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v3       #file:Ljava/io/File;
    :cond_1
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/setting/SendDiagnosticLogActivity;->pb_feed_back_progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v5, v10}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 118
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/setting/SendDiagnosticLogActivity;->linearnumber:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 119
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/setting/SendDiagnosticLogActivity;->tv__commit_log_num:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "0/"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, p0, Lcom/cnlaunch/x431pro/activity/setting/SendDiagnosticLogActivity;->mNum:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/setting/SendDiagnosticLogActivity;->btn_feed_back_sure:Landroid/widget/Button;

    invoke-virtual {v5, v10}, Landroid/widget/Button;->setEnabled(Z)V

    .line 121
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/setting/SendDiagnosticLogActivity;->et_feed_back_remark:Landroid/widget/EditText;

    invoke-virtual {v5, v10}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 122
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/setting/SendDiagnosticLogActivity;->mAsyncTaskManager:Lcom/cnlaunch/framework/network/async/AsyncTaskManager;

    const/16 v6, 0x4bb

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7, p0}, Lcom/cnlaunch/framework/network/async/AsyncTaskManager;->request(IZLcom/cnlaunch/framework/network/async/OnDataListener;)V

    goto/16 :goto_0

    .line 100
    :pswitch_data_0
    .packed-switch 0x7f0d043d
        :pswitch_0
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 304
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/BaseDialogActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 305
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/setting/SendDiagnosticLogActivity;->initDialogSize()V

    .line 306
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 67
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/BaseDialogActivity;->onCreate(Landroid/os/Bundle;)V

    .line 68
    const v1, 0x7f03017f

    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/activity/setting/SendDiagnosticLogActivity;->setContentView(I)V

    .line 69
    iput-object p0, p0, Lcom/cnlaunch/x431pro/activity/setting/SendDiagnosticLogActivity;->mContext:Landroid/content/Context;

    .line 70
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/setting/SendDiagnosticLogActivity;->initDialogSize()V

    .line 71
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/setting/SendDiagnosticLogActivity;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/cnlaunch/framework/network/async/AsyncTaskManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/network/async/AsyncTaskManager;

    move-result-object v1

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/setting/SendDiagnosticLogActivity;->mAsyncTaskManager:Lcom/cnlaunch/framework/network/async/AsyncTaskManager;

    .line 72
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/setting/SendDiagnosticLogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 73
    .local v0, intent:Landroid/content/Intent;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/setting/SendDiagnosticLogActivity;->mVectorFile:Ljava/util/ArrayList;

    .line 74
    if-eqz v0, :cond_0

    .line 75
    const-string/jumbo v1, "ListFile"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/setting/SendDiagnosticLogActivity;->mVectorFile:Ljava/util/ArrayList;

    .line 77
    :cond_0
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/setting/SendDiagnosticLogActivity;->mVectorFile:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 78
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/setting/SendDiagnosticLogActivity;->mVectorFile:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, p0, Lcom/cnlaunch/x431pro/activity/setting/SendDiagnosticLogActivity;->mNum:I

    .line 80
    :cond_1
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/setting/SendDiagnosticLogActivity;->initViews()V

    .line 81
    return-void
.end method

.method public onFailure(IILjava/lang/Object;)V
    .locals 4
    .parameter "requestCode"
    .parameter "state"
    .parameter "result"

    .prologue
    const v3, 0x7f0705f2

    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 241
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/SendDiagnosticLogActivity;->pb_feed_back_progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 242
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/SendDiagnosticLogActivity;->linearnumber:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 243
    invoke-static {}, Lcom/cnlaunch/x431pro/utils/PathUtils;->getLogZipPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cnlaunch/x431pro/utils/file/FileUtils;->deleteDirectory(Ljava/lang/String;)V

    .line 244
    sparse-switch p1, :sswitch_data_0

    .line 270
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/SendDiagnosticLogActivity;->mContext:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;I)V

    .line 271
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/SendDiagnosticLogActivity;->isFiag:Ljava/lang/Boolean;

    .line 274
    :goto_0
    return-void

    .line 247
    :sswitch_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/SendDiagnosticLogActivity;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/SendDiagnosticLogActivity;->mContext:Landroid/content/Context;

    const v1, 0x7f0704dd

    invoke-static {v0, v1}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;I)V

    .line 250
    :cond_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/SendDiagnosticLogActivity;->isFiag:Ljava/lang/Boolean;

    goto :goto_0

    .line 255
    :sswitch_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/SendDiagnosticLogActivity;->isFiag:Ljava/lang/Boolean;

    goto :goto_0

    .line 260
    :sswitch_2
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/SendDiagnosticLogActivity;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 261
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/SendDiagnosticLogActivity;->mContext:Landroid/content/Context;

    const v1, 0x7f0704de

    invoke-static {v0, v1}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;I)V

    .line 263
    :cond_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/SendDiagnosticLogActivity;->isFiag:Ljava/lang/Boolean;

    goto :goto_0

    .line 266
    :sswitch_3
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/SendDiagnosticLogActivity;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/setting/SendDiagnosticLogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cnlaunch/framework/utils/NToast;->longToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 267
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/SendDiagnosticLogActivity;->isFiag:Ljava/lang/Boolean;

    goto :goto_0

    .line 244
    nop

    :sswitch_data_0
    .sparse-switch
        -0x3e7 -> :sswitch_1
        -0x190 -> :sswitch_0
        -0xc8 -> :sswitch_2
        0x4bb -> :sswitch_3
    .end sparse-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 310
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 311
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/SendDiagnosticLogActivity;->btn_feed_back_sure:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/SendDiagnosticLogActivity;->isFiag:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/SendDiagnosticLogActivity;->mContext:Landroid/content/Context;

    const v1, 0x7f07071e

    invoke-static {v0, v1}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;I)V

    .line 314
    :cond_0
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/setting/SendDiagnosticLogActivity;->finish()V

    .line 316
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public onSuccess(ILjava/lang/Object;)V
    .locals 13
    .parameter "requestCode"
    .parameter "result"

    .prologue
    const v12, 0x7f070044

    const/4 v11, -0x1

    const/16 v8, 0x8

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 144
    packed-switch p1, :pswitch_data_0

    .line 237
    :cond_0
    :goto_0
    return-void

    .line 147
    :pswitch_0
    const-string/jumbo v1, ""

    .line 148
    .local v1, iSFileSuccess:Ljava/lang/String;
    if-eqz p2, :cond_1

    move-object v3, p2

    .line 149
    check-cast v3, Lcom/cnlaunch/x431pro/module/setting/model/UploadDiagnosticLogResponse;

    .line 150
    .local v3, res:Lcom/cnlaunch/x431pro/module/setting/model/UploadDiagnosticLogResponse;
    invoke-virtual {v3}, Lcom/cnlaunch/x431pro/module/setting/model/UploadDiagnosticLogResponse;->getCode()I

    move-result v4

    if-nez v4, :cond_3

    .line 151
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 152
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/setting/SendDiagnosticLogActivity;->tv__commit_log_num:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/cnlaunch/x431pro/activity/setting/SendDiagnosticLogActivity;->mNum:I

    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/setting/SendDiagnosticLogActivity;->mVectorFile:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/cnlaunch/x431pro/activity/setting/SendDiagnosticLogActivity;->mNum:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/setting/SendDiagnosticLogActivity;->mVectorFile:Ljava/util/ArrayList;

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cnlaunch/x431pro/utils/diagnose/DiagnoseLogInfoSearchUtil$DiagnoseLogFileInfo;

    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/utils/diagnose/DiagnoseLogInfoSearchUtil$DiagnoseLogFileInfo;->getFullFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/cnlaunch/x431pro/utils/file/FileUtils;->deleteFile(Ljava/lang/String;)Z

    .line 159
    .end local v3           #res:Lcom/cnlaunch/x431pro/module/setting/model/UploadDiagnosticLogResponse;
    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/setting/SendDiagnosticLogActivity;->mVectorFile:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 160
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/setting/SendDiagnosticLogActivity;->mVectorFile:Ljava/util/ArrayList;

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 162
    :cond_2
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/setting/SendDiagnosticLogActivity;->mVectorFile:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_4

    .line 163
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/setting/SendDiagnosticLogActivity;->mAsyncTaskManager:Lcom/cnlaunch/framework/network/async/AsyncTaskManager;

    const/16 v5, 0x4bb

    invoke-virtual {v4, v5, v10, p0}, Lcom/cnlaunch/framework/network/async/AsyncTaskManager;->request(IZLcom/cnlaunch/framework/network/async/OnDataListener;)V

    goto :goto_0

    .line 155
    .restart local v3       #res:Lcom/cnlaunch/x431pro/module/setting/model/UploadDiagnosticLogResponse;
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 156
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Lcom/cnlaunch/x431pro/activity/setting/SendDiagnosticLogActivity;->isFiag:Ljava/lang/Boolean;

    goto :goto_1

    .line 165
    .end local v3           #res:Lcom/cnlaunch/x431pro/module/setting/model/UploadDiagnosticLogResponse;
    :cond_4
    const-string/jumbo v4, "1"

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v11, :cond_5

    .line 166
    invoke-static {}, Lcom/cnlaunch/x431pro/utils/PathUtils;->getLogZipPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/cnlaunch/x431pro/utils/file/FileUtils;->deleteDirectory(Ljava/lang/String;)V

    .line 167
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/setting/SendDiagnosticLogActivity;->pb_feed_back_progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v8}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 168
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/setting/SendDiagnosticLogActivity;->linearnumber:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 170
    new-instance v2, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;

    const v4, 0x7f0705f8

    const v5, 0x7f0705f1

    invoke-direct {v2, p0, v4, v5, v9}, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;-><init>(Landroid/content/Context;IIZ)V

    .line 171
    .local v2, messageDialog:Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;
    new-instance v4, Lcom/cnlaunch/x431pro/activity/setting/SendDiagnosticLogActivity$1;

    invoke-direct {v4, p0}, Lcom/cnlaunch/x431pro/activity/setting/SendDiagnosticLogActivity$1;-><init>(Lcom/cnlaunch/x431pro/activity/setting/SendDiagnosticLogActivity;)V

    invoke-virtual {v2, v12, v10, v4}, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;->setAlphaOnClickListener(IZLandroid/view/View$OnClickListener;)V

    .line 178
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/setting/SendDiagnosticLogActivity;->isFinishing()Z

    move-result v4

    if-nez v4, :cond_0

    .line 179
    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;->show()V

    goto/16 :goto_0

    .line 182
    .end local v2           #messageDialog:Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;
    :cond_5
    const-string/jumbo v4, "0"

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v11, :cond_7

    .line 183
    invoke-static {}, Lcom/cnlaunch/x431pro/utils/PathUtils;->getLogZipPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/cnlaunch/x431pro/utils/file/FileUtils;->deleteDirectory(Ljava/lang/String;)V

    .line 184
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/setting/SendDiagnosticLogActivity;->pb_feed_back_progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v8}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 185
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/setting/SendDiagnosticLogActivity;->linearnumber:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 186
    iget v4, p0, Lcom/cnlaunch/x431pro/activity/setting/SendDiagnosticLogActivity;->mNum:I

    if-le v4, v10, :cond_6

    .line 188
    new-instance v2, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;

    const v4, 0x7f0705f8

    const v5, 0x7f0706d2

    invoke-direct {v2, p0, v4, v5, v9}, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;-><init>(Landroid/content/Context;IIZ)V

    .line 189
    .restart local v2       #messageDialog:Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;
    new-instance v4, Lcom/cnlaunch/x431pro/activity/setting/SendDiagnosticLogActivity$2;

    invoke-direct {v4, p0}, Lcom/cnlaunch/x431pro/activity/setting/SendDiagnosticLogActivity$2;-><init>(Lcom/cnlaunch/x431pro/activity/setting/SendDiagnosticLogActivity;)V

    invoke-virtual {v2, v12, v10, v4}, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;->setAlphaOnClickListener(IZLandroid/view/View$OnClickListener;)V

    .line 196
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/setting/SendDiagnosticLogActivity;->isFinishing()Z

    move-result v4

    if-nez v4, :cond_0

    .line 197
    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;->show()V

    goto/16 :goto_0

    .line 201
    .end local v2           #messageDialog:Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;
    :cond_6
    new-instance v2, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;

    const v4, 0x7f0705f8

    const v5, 0x7f0706d3

    invoke-direct {v2, p0, v4, v5, v9}, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;-><init>(Landroid/content/Context;IIZ)V

    .line 202
    .restart local v2       #messageDialog:Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;
    new-instance v4, Lcom/cnlaunch/x431pro/activity/setting/SendDiagnosticLogActivity$3;

    invoke-direct {v4, p0}, Lcom/cnlaunch/x431pro/activity/setting/SendDiagnosticLogActivity$3;-><init>(Lcom/cnlaunch/x431pro/activity/setting/SendDiagnosticLogActivity;)V

    invoke-virtual {v2, v12, v10, v4}, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;->setAlphaOnClickListener(IZLandroid/view/View$OnClickListener;)V

    .line 209
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/setting/SendDiagnosticLogActivity;->isFinishing()Z

    move-result v4

    if-nez v4, :cond_0

    .line 210
    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;->show()V

    goto/16 :goto_0

    .line 213
    .end local v2           #messageDialog:Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;
    :cond_7
    const-string/jumbo v4, "0"

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v11, :cond_0

    const-string/jumbo v4, "1"

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v11, :cond_0

    .line 214
    const-string/jumbo v4, "0"

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 215
    .local v0, array:[Ljava/lang/String;
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/setting/SendDiagnosticLogActivity;->pb_feed_back_progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v8}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 216
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/setting/SendDiagnosticLogActivity;->linearnumber:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 217
    invoke-static {}, Lcom/cnlaunch/x431pro/utils/PathUtils;->getLogZipPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/cnlaunch/x431pro/utils/file/FileUtils;->deleteDirectory(Ljava/lang/String;)V

    .line 219
    new-instance v2, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;

    const v4, 0x7f0705f8

    invoke-virtual {p0, v4}, Lcom/cnlaunch/x431pro/activity/setting/SendDiagnosticLogActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0706d4

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    .line 220
    array-length v7, v0

    add-int/lit8 v7, v7, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    array-length v8, v0

    sub-int/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    .line 219
    invoke-virtual {p0, v5, v6}, Lcom/cnlaunch/x431pro/activity/setting/SendDiagnosticLogActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, p0, v4, v5, v9}, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 221
    .restart local v2       #messageDialog:Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;
    new-instance v4, Lcom/cnlaunch/x431pro/activity/setting/SendDiagnosticLogActivity$4;

    invoke-direct {v4, p0}, Lcom/cnlaunch/x431pro/activity/setting/SendDiagnosticLogActivity$4;-><init>(Lcom/cnlaunch/x431pro/activity/setting/SendDiagnosticLogActivity;)V

    invoke-virtual {v2, v12, v10, v4}, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;->setAlphaOnClickListener(IZLandroid/view/View$OnClickListener;)V

    .line 227
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/setting/SendDiagnosticLogActivity;->isFinishing()Z

    move-result v4

    if-nez v4, :cond_0

    .line 228
    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;->show()V

    goto/16 :goto_0

    .line 144
    nop

    :pswitch_data_0
    .packed-switch 0x4bb
        :pswitch_0
    .end packed-switch
.end method
