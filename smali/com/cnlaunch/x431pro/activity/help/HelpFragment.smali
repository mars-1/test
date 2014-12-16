.class public Lcom/cnlaunch/x431pro/activity/help/HelpFragment;
.super Lcom/cnlaunch/x431pro/activity/BaseFragment;
.source "HelpFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cnlaunch/x431pro/activity/help/HelpFragment$DownloadTask;,
        Lcom/cnlaunch/x431pro/activity/help/HelpFragment$HelpViewHandler;
    }
.end annotation


# instance fields
.field private downloadTask:Lcom/cnlaunch/x431pro/activity/help/HelpFragment$DownloadTask;

.field private fileName:Ljava/lang/String;

.field helpListView:Landroid/widget/ListView;

.field private isShowFun:Z

.field lastClickedTitle:Ljava/lang/String;

.field private mHandler:Lcom/cnlaunch/x431pro/activity/help/HelpFragment$HelpViewHandler;

.field private mHelpDocInstance:Lcom/cnlaunch/x431pro/activity/help/HelpDocManger;

.field mListAdapter:Lcom/cnlaunch/x431pro/activity/help/FunctionListAdapter;

.field mListFAQAdapter:Lcom/cnlaunch/x431pro/activity/help/FAQlistAdapter;

.field mbtn_com_question_answ:Landroid/widget/Button;

.field mbtn_func_display:Landroid/widget/Button;

.field mbtn_golo_guide:Landroid/widget/Button;

.field mbtn_quick_smart:Landroid/widget/Button;

.field mbtn_user_manual:Landroid/widget/Button;

.field private progressBar:Landroid/app/ProgressDialog;

.field private tempfileName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 46
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/BaseFragment;-><init>()V

    .line 48
    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/help/HelpFragment;->mListAdapter:Lcom/cnlaunch/x431pro/activity/help/FunctionListAdapter;

    .line 49
    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/help/HelpFragment;->mListFAQAdapter:Lcom/cnlaunch/x431pro/activity/help/FAQlistAdapter;

    .line 56
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/help/HelpFragment;->lastClickedTitle:Ljava/lang/String;

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cnlaunch/x431pro/activity/help/HelpFragment;->isShowFun:Z

    .line 46
    return-void
.end method

.method static synthetic access$0(Lcom/cnlaunch/x431pro/activity/help/HelpFragment;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/help/HelpFragment;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/cnlaunch/x431pro/activity/help/HelpFragment;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/help/HelpFragment;->tempfileName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/cnlaunch/x431pro/activity/help/HelpFragment;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/help/HelpFragment;->progressBar:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private changeAdapter(Ljava/lang/String;)V
    .locals 2
    .parameter "adapterType"

    .prologue
    .line 149
    sget-object v0, Lcom/cnlaunch/x431pro/activity/help/HelpStringConstant;->FUN:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 150
    sget-object v0, Lcom/cnlaunch/x431pro/activity/help/HelpStringConstant;->FUN:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/cnlaunch/x431pro/activity/help/HelpFragment;->getLastClickedInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/help/HelpFragment;->lastClickedTitle:Ljava/lang/String;

    .line 151
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/help/HelpFragment;->mListAdapter:Lcom/cnlaunch/x431pro/activity/help/FunctionListAdapter;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/help/HelpFragment;->lastClickedTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/activity/help/FunctionListAdapter;->setLastClickedTitle(Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/help/HelpFragment;->helpListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/help/HelpFragment;->mListAdapter:Lcom/cnlaunch/x431pro/activity/help/FunctionListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 153
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/help/HelpFragment;->checkToFunctionDisplay()V

    .line 160
    :cond_0
    :goto_0
    return-void

    .line 154
    :cond_1
    sget-object v0, Lcom/cnlaunch/x431pro/activity/help/HelpStringConstant;->FAQ:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    sget-object v0, Lcom/cnlaunch/x431pro/activity/help/HelpStringConstant;->FAQ:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/cnlaunch/x431pro/activity/help/HelpFragment;->getLastClickedInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/help/HelpFragment;->lastClickedTitle:Ljava/lang/String;

    .line 156
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/help/HelpFragment;->mListFAQAdapter:Lcom/cnlaunch/x431pro/activity/help/FAQlistAdapter;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/help/HelpFragment;->lastClickedTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/activity/help/FAQlistAdapter;->setLastClickedTitle(Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/help/HelpFragment;->helpListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/help/HelpFragment;->mListFAQAdapter:Lcom/cnlaunch/x431pro/activity/help/FAQlistAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 158
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/help/HelpFragment;->checkToFAQ()V

    goto :goto_0
.end method

.method private checkNetWork()Z
    .locals 3

    .prologue
    .line 493
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/help/HelpFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/cnlaunch/x431pro/utils/CommonUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 494
    const/4 v0, 0x1

    .line 498
    :goto_0
    return v0

    .line 496
    :cond_0
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/help/HelpFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/help/HelpFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0706c6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 498
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkToFAQ()V
    .locals 3

    .prologue
    const v2, 0x7f02022b

    .line 289
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/help/HelpFragment;->mbtn_func_display:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 290
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/help/HelpFragment;->mbtn_func_display:Landroid/widget/Button;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 291
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/help/HelpFragment;->mbtn_com_question_answ:Landroid/widget/Button;

    const v1, 0x7f02022a

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 292
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/help/HelpFragment;->mbtn_com_question_answ:Landroid/widget/Button;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 293
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/help/HelpFragment;->mbtn_quick_smart:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 294
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/help/HelpFragment;->mbtn_user_manual:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 295
    return-void
.end method

.method private checkToFunctionDisplay()V
    .locals 3

    .prologue
    const v2, 0x7f02022b

    .line 298
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/help/HelpFragment;->mbtn_func_display:Landroid/widget/Button;

    const v1, 0x7f02022a

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 299
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/help/HelpFragment;->mbtn_func_display:Landroid/widget/Button;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 300
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/help/HelpFragment;->mbtn_com_question_answ:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 301
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/help/HelpFragment;->mbtn_com_question_answ:Landroid/widget/Button;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 302
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/help/HelpFragment;->mbtn_quick_smart:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 303
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/help/HelpFragment;->mbtn_user_manual:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 304
    return-void
.end method

.method private checkToQuickSmart()V
    .locals 3

    .prologue
    const v2, 0x7f02022b

    .line 307
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/help/HelpFragment;->mbtn_func_display:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 308
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/help/HelpFragment;->mbtn_com_question_answ:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 309
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/help/HelpFragment;->mbtn_quick_smart:Landroid/widget/Button;

    const v1, 0x7f02022a

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 310
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/help/HelpFragment;->mbtn_user_manual:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 311
    return-void
.end method

.method private checkToUserManual()V
    .locals 2

    .prologue
    const v1, 0x7f02022b

    .line 313
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/help/HelpFragment;->mbtn_func_display:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 314
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/help/HelpFragment;->mbtn_com_question_answ:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 315
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/help/HelpFragment;->mbtn_quick_smart:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 316
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/help/HelpFragment;->mbtn_user_manual:Landroid/widget/Button;

    const v1, 0x7f02022a

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 317
    return-void
.end method

.method private getIgnoreDirList()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 225
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 226
    .local v0, listIgnoreDir:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/help/HelpFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "com.cnlaunch.batterytest"

    invoke-static {v1, v2}, Lcom/cnlaunch/diagnosemodule/utils/SystemAppTools;->getAppsIsExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 227
    const-string/jumbo v1, "batterytest"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    :goto_0
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/help/HelpFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "com.cnlaunch.sensor"

    invoke-static {v1, v2}, Lcom/cnlaunch/diagnosemodule/utils/SystemAppTools;->getAppsIsExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 232
    const-string/jumbo v1, "sensor"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    const-string/jumbo v1, "multimeter"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    :goto_1
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/help/HelpFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "com.cnlaunch.oscilloscope"

    invoke-static {v1, v2}, Lcom/cnlaunch/diagnosemodule/utils/SystemAppTools;->getAppsIsExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 238
    const-string/jumbo v1, "oscilloscope"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    :goto_2
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/help/HelpFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "com.cnlaunch.ignition"

    invoke-static {v1, v2}, Lcom/cnlaunch/diagnosemodule/utils/SystemAppTools;->getAppsIsExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 243
    const-string/jumbo v1, "ignition"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    :goto_3
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/cnlaunch/x431pro/activity/help/HelpFragment;->isShowFun:Z

    .line 250
    return-object v0

    .line 229
    :cond_0
    iput-boolean v3, p0, Lcom/cnlaunch/x431pro/activity/help/HelpFragment;->isShowFun:Z

    goto :goto_0

    .line 235
    :cond_1
    iput-boolean v3, p0, Lcom/cnlaunch/x431pro/activity/help/HelpFragment;->isShowFun:Z

    goto :goto_1

    .line 240
    :cond_2
    iput-boolean v3, p0, Lcom/cnlaunch/x431pro/activity/help/HelpFragment;->isShowFun:Z

    goto :goto_2

    .line 245
    :cond_3
    iput-boolean v3, p0, Lcom/cnlaunch/x431pro/activity/help/HelpFragment;->isShowFun:Z

    goto :goto_3
.end method

.method private getLastClickedInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "which"

    .prologue
    .line 325
    invoke-static {p1}, Lcom/cnlaunch/x431pro/activity/help/HelpOperatInfo;->readInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPdfPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "fileType"

    .prologue
    .line 330
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    .line 331
    .local v5, simplelanguage:Ljava/lang/String;
    const-string/jumbo v6, "zh"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 332
    const-string/jumbo v5, "cn"

    .line 334
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ".pdf"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 336
    .local v3, fileName:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/help/HelpFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/cnlaunch/x431pro/utils/PathUtils;->getAssetsPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 337
    .local v4, pdfPath:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 338
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 346
    .end local v4           #pdfPath:Ljava/lang/String;
    :goto_0
    return-object v4

    .line 341
    .restart local v4       #pdfPath:Ljava/lang/String;
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/help/HelpFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/cnlaunch/x431pro/utils/PathUtils;->getAssetsPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "en.pdf"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 342
    .local v1, enfilePath:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 343
    .local v0, enfile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    move-object v4, v1

    .line 344
    goto :goto_0

    .line 346
    :cond_2
    const-string/jumbo v4, ""

    goto :goto_0
.end method

.method private initData()V
    .locals 5

    .prologue
    .line 192
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/help/HelpFragment;->getIgnoreDirList()Ljava/util/ArrayList;

    move-result-object v0

    .line 193
    .local v0, listIgnoreDir:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Lcom/cnlaunch/x431pro/activity/help/HelpFragment$HelpViewHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/cnlaunch/x431pro/activity/help/HelpFragment$HelpViewHandler;-><init>(Lcom/cnlaunch/x431pro/activity/help/HelpFragment;Lcom/cnlaunch/x431pro/activity/help/HelpFragment$HelpViewHandler;)V

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/help/HelpFragment;->mHandler:Lcom/cnlaunch/x431pro/activity/help/HelpFragment$HelpViewHandler;

    .line 195
    iget-boolean v1, p0, Lcom/cnlaunch/x431pro/activity/help/HelpFragment;->isShowFun:Z

    if-eqz v1, :cond_0

    .line 196
    new-instance v1, Lcom/cnlaunch/x431pro/activity/help/HelpDocManger;

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/help/HelpFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    sget-object v3, Lcom/cnlaunch/x431pro/activity/help/HelpStringConstant;->type_read_help_doc:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/cnlaunch/x431pro/activity/help/HelpDocManger;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/help/HelpFragment;->mHelpDocInstance:Lcom/cnlaunch/x431pro/activity/help/HelpDocManger;

    .line 197
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/help/HelpFragment;->mHelpDocInstance:Lcom/cnlaunch/x431pro/activity/help/HelpDocManger;

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/help/HelpFragment;->mHandler:Lcom/cnlaunch/x431pro/activity/help/HelpFragment$HelpViewHandler;

    invoke-virtual {v1, v2}, Lcom/cnlaunch/x431pro/activity/help/HelpDocManger;->setViewHandler(Landroid/os/Handler;)V

    .line 198
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/help/HelpFragment;->mHelpDocInstance:Lcom/cnlaunch/x431pro/activity/help/HelpDocManger;

    sget-object v2, Lcom/cnlaunch/x431pro/activity/help/HelpStringConstant;->type_read_question_answer:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/cnlaunch/x431pro/activity/help/HelpDocManger;->initMenu(Ljava/lang/String;)V

    .line 199
    new-instance v1, Lcom/cnlaunch/x431pro/activity/help/FunctionListAdapter;

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/help/HelpFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/help/HelpFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/help/HelpFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/cnlaunch/x431pro/activity/help/FunctionListAdapter;-><init>(Landroid/content/Context;Landroid/content/res/AssetManager;Landroid/view/LayoutInflater;)V

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/help/HelpFragment;->mListAdapter:Lcom/cnlaunch/x431pro/activity/help/FunctionListAdapter;

    .line 200
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/help/HelpFragment;->mListAdapter:Lcom/cnlaunch/x431pro/activity/help/FunctionListAdapter;

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/help/HelpFragment;->mHandler:Lcom/cnlaunch/x431pro/activity/help/HelpFragment$HelpViewHandler;

    invoke-virtual {v1, v2}, Lcom/cnlaunch/x431pro/activity/help/FunctionListAdapter;->setHandler(Landroid/os/Handler;)V

    .line 206
    :goto_0
    new-instance v1, Lcom/cnlaunch/x431pro/activity/help/FAQlistAdapter;

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/help/HelpFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/help/HelpFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/help/HelpFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/cnlaunch/x431pro/activity/help/FAQlistAdapter;-><init>(Landroid/content/Context;Landroid/content/res/AssetManager;Landroid/view/LayoutInflater;)V

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/help/HelpFragment;->mListFAQAdapter:Lcom/cnlaunch/x431pro/activity/help/FAQlistAdapter;

    .line 207
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/help/HelpFragment;->mListFAQAdapter:Lcom/cnlaunch/x431pro/activity/help/FAQlistAdapter;

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/help/HelpFragment;->mHandler:Lcom/cnlaunch/x431pro/activity/help/HelpFragment$HelpViewHandler;

    invoke-virtual {v1, v2}, Lcom/cnlaunch/x431pro/activity/help/FAQlistAdapter;->setHandler(Landroid/os/Handler;)V

    .line 209
    return-void

    .line 202
    :cond_0
    new-instance v1, Lcom/cnlaunch/x431pro/activity/help/HelpDocManger;

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/help/HelpFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    sget-object v3, Lcom/cnlaunch/x431pro/activity/help/HelpStringConstant;->type_read_question_answer:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/cnlaunch/x431pro/activity/help/HelpDocManger;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/help/HelpFragment;->mHelpDocInstance:Lcom/cnlaunch/x431pro/activity/help/HelpDocManger;

    .line 203
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/help/HelpFragment;->mHelpDocInstance:Lcom/cnlaunch/x431pro/activity/help/HelpDocManger;

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/help/HelpFragment;->mHandler:Lcom/cnlaunch/x431pro/activity/help/HelpFragment$HelpViewHandler;

    invoke-virtual {v1, v2}, Lcom/cnlaunch/x431pro/activity/help/HelpDocManger;->setViewHandler(Landroid/os/Handler;)V

    goto :goto_0
.end method

.method private initViews()V
    .locals 2

    .prologue
    .line 169
    const v0, 0x7f0704f1

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/help/HelpFragment;->setTitle(I)V

    .line 170
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/help/HelpFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020525

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/help/HelpFragment;->setLeftImage(Landroid/graphics/drawable/Drawable;)V

    .line 172
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/help/HelpFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c00b7

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/help/HelpFragment;->mbtn_func_display:Landroid/widget/Button;

    .line 173
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/help/HelpFragment;->mbtn_func_display:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/help/HelpFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c00b8

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/help/HelpFragment;->mbtn_com_question_answ:Landroid/widget/Button;

    .line 176
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/help/HelpFragment;->mbtn_com_question_answ:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/help/HelpFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c0215

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/help/HelpFragment;->mbtn_quick_smart:Landroid/widget/Button;

    .line 179
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/help/HelpFragment;->mbtn_quick_smart:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/help/HelpFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c0216

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/help/HelpFragment;->mbtn_user_manual:Landroid/widget/Button;

    .line 182
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/help/HelpFragment;->mbtn_user_manual:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/help/HelpFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c0217

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/help/HelpFragment;->mbtn_golo_guide:Landroid/widget/Button;

    .line 185
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/help/HelpFragment;->mbtn_golo_guide:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/help/HelpFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c0218

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/help/HelpFragment;->helpListView:Landroid/widget/ListView;

    .line 188
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/help/HelpFragment;->helpListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 189
    return-void
.end method

.method private showFunctionNoets()V
    .locals 3

    .prologue
    .line 212
    iget-boolean v1, p0, Lcom/cnlaunch/x431pro/activity/help/HelpFragment;->isShowFun:Z

    if-eqz v1, :cond_0

    .line 213
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/help/HelpFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0c0214

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 216
    .local v0, helpLayout:Landroid/widget/LinearLayout;
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/help/HelpFragment;->mbtn_func_display:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 217
    sget-object v1, Lcom/cnlaunch/x431pro/activity/help/HelpStringConstant;->FUN:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/cnlaunch/x431pro/activity/help/HelpFragment;->changeAdapter(Ljava/lang/String;)V

    .line 222
    .end local v0           #helpLayout:Landroid/widget/LinearLayout;
    :goto_0
    return-void

    .line 220
    :cond_0
    sget-object v1, Lcom/cnlaunch/x431pro/activity/help/HelpStringConstant;->FAQ:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/cnlaunch/x431pro/activity/help/HelpFragment;->changeAdapter(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public doPdfHandler()V
    .locals 9

    .prologue
    .line 353
    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    .line 354
    .local v3, simplelanguage:Ljava/lang/String;
    const-string/jumbo v5, "zh"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 355
    const-string/jumbo v3, "cn"

    .line 359
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    sget-object v6, Lcom/cnlaunch/x431pro/activity/help/HelpStringConstant;->pdf_gologuide:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ".pdf"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/cnlaunch/x431pro/activity/help/HelpFragment;->fileName:Ljava/lang/String;

    .line 360
    new-instance v5, Ljava/lang/StringBuilder;

    sget-object v6, Lcom/cnlaunch/x431pro/activity/help/HelpStringConstant;->pdf_gologuide:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ".download"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/cnlaunch/x431pro/activity/help/HelpFragment;->tempfileName:Ljava/lang/String;

    .line 362
    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/help/HelpFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/cnlaunch/x431pro/utils/PathUtils;->getAssetsPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/help/HelpFragment;->fileName:Ljava/lang/String;

    invoke-direct {v2, v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/help/HelpFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v5

    const-string/jumbo v6, "need_update_gologuide"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v5

    if-nez v5, :cond_2

    .line 365
    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 366
    .local v0, Path:Ljava/lang/String;
    const-string/jumbo v5, ""

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 367
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/help/HelpFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v0}, Lorg/vudroid/pdfdroid/PDFManager;->open(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 394
    .end local v0           #Path:Ljava/lang/String;
    .end local v2           #file:Ljava/io/File;
    .end local v3           #simplelanguage:Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 357
    .restart local v3       #simplelanguage:Ljava/lang/String;
    :cond_1
    :try_start_2
    const-string/jumbo v3, "en"

    goto :goto_0

    .line 371
    .restart local v2       #file:Ljava/io/File;
    :catch_0
    move-exception v1

    .line 372
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 391
    .end local v1           #e:Ljava/lang/Exception;
    .end local v2           #file:Ljava/io/File;
    .end local v3           #simplelanguage:Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 392
    .restart local v1       #e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 374
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v2       #file:Ljava/io/File;
    .restart local v3       #simplelanguage:Ljava/lang/String;
    :cond_2
    :try_start_3
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/help/HelpFragment;->checkNetWork()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 375
    new-instance v5, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/help/HelpFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/cnlaunch/x431pro/activity/help/HelpFragment;->progressBar:Landroid/app/ProgressDialog;

    .line 376
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/help/HelpFragment;->progressBar:Landroid/app/ProgressDialog;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 377
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/help/HelpFragment;->progressBar:Landroid/app/ProgressDialog;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 378
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/help/HelpFragment;->progressBar:Landroid/app/ProgressDialog;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 379
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/help/HelpFragment;->progressBar:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/help/HelpFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const v7, 0x7f0704d9

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 380
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/help/HelpFragment;->progressBar:Landroid/app/ProgressDialog;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/help/HelpFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const v8, 0x7f070582

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v7, "..."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 381
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/help/HelpFragment;->progressBar:Landroid/app/ProgressDialog;

    const/16 v6, 0x64

    invoke-virtual {v5, v6}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 382
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/help/HelpFragment;->progressBar:Landroid/app/ProgressDialog;

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->show()V

    .line 383
    const-string/jumbo v4, "http://mycar.x431.com/pdf/golo_guide_Pro_Pro3_en.pdf"

    .line 384
    .local v4, url:Ljava/lang/String;
    const-string/jumbo v5, "cn"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 385
    const-string/jumbo v4, "http://mycar.x431.com/pdf/golo_guide_Pro_Pro3_zh.pdf"

    .line 388
    :cond_3
    new-instance v5, Lcom/cnlaunch/x431pro/activity/help/HelpFragment$DownloadTask;

    invoke-direct {v5, p0, v4}, Lcom/cnlaunch/x431pro/activity/help/HelpFragment$DownloadTask;-><init>(Lcom/cnlaunch/x431pro/activity/help/HelpFragment;Ljava/lang/String;)V

    iput-object v5, p0, Lcom/cnlaunch/x431pro/activity/help/HelpFragment;->downloadTask:Lcom/cnlaunch/x431pro/activity/help/HelpFragment$DownloadTask;

    .line 389
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/help/HelpFragment;->downloadTask:Lcom/cnlaunch/x431pro/activity/help/HelpFragment$DownloadTask;

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Void;

    invoke-virtual {v5, v6}, Lcom/cnlaunch/x431pro/activity/help/HelpFragment$DownloadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 141
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 142
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/help/HelpFragment;->initViews()V

    .line 143
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/help/HelpFragment;->initData()V

    .line 144
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/help/HelpFragment;->showFunctionNoets()V

    .line 145
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 136
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->onAttach(Landroid/app/Activity;)V

    .line 137
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    .line 71
    const-string/jumbo v3, ""

    .line 72
    .local v3, pdfPath:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 74
    :sswitch_0
    sget-object v5, Lcom/cnlaunch/x431pro/activity/help/HelpStringConstant;->FAQ:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/cnlaunch/x431pro/activity/help/HelpFragment;->changeAdapter(Ljava/lang/String;)V

    goto :goto_0

    .line 77
    :sswitch_1
    sget-object v5, Lcom/cnlaunch/x431pro/activity/help/HelpStringConstant;->FUN:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/cnlaunch/x431pro/activity/help/HelpFragment;->changeAdapter(Ljava/lang/String;)V

    goto :goto_0

    .line 81
    :sswitch_2
    :try_start_0
    sget-object v5, Lcom/cnlaunch/x431pro/activity/help/HelpStringConstant;->pdf_quickstart:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/cnlaunch/x431pro/activity/help/HelpFragment;->getPdfPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 82
    const-string/jumbo v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 83
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/help/HelpFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v3}, Lorg/vudroid/pdfdroid/PDFManager;->open(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 87
    :catch_0
    move-exception v1

    .line 88
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 93
    .end local v1           #e:Ljava/lang/Exception;
    :sswitch_3
    :try_start_1
    sget-object v5, Lcom/cnlaunch/x431pro/activity/help/HelpStringConstant;->pdf_usermanual:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/cnlaunch/x431pro/activity/help/HelpFragment;->getPdfPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 94
    const-string/jumbo v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 95
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/help/HelpFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v3}, Lorg/vudroid/pdfdroid/PDFManager;->open(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 99
    :catch_1
    move-exception v1

    .line 100
    .restart local v1       #e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 104
    .end local v1           #e:Ljava/lang/Exception;
    :sswitch_4
    const-string/jumbo v5, "http://mycar.x431.com/pdf/golo_guide_PadII_en.pdf"

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 105
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    .line 106
    .local v4, simplelanguage:Ljava/lang/String;
    const-string/jumbo v5, "zh"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 107
    const-string/jumbo v4, "cn"

    .line 111
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    sget-object v6, Lcom/cnlaunch/x431pro/activity/help/HelpStringConstant;->pdf_gologuide:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ".pdf"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/cnlaunch/x431pro/activity/help/HelpFragment;->fileName:Ljava/lang/String;

    .line 112
    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/help/HelpFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/cnlaunch/x431pro/utils/PathUtils;->getAssetsPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/help/HelpFragment;->fileName:Ljava/lang/String;

    invoke-direct {v2, v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 114
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 115
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/help/HelpFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v5

    const-string/jumbo v6, "need_update_gologuide"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_3

    .line 117
    :try_start_2
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, Path:Ljava/lang/String;
    const-string/jumbo v5, ""

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 119
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/help/HelpFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v0}, Lorg/vudroid/pdfdroid/PDFManager;->open(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 123
    .end local v0           #Path:Ljava/lang/String;
    :catch_2
    move-exception v1

    .line 124
    .restart local v1       #e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 109
    .end local v1           #e:Ljava/lang/Exception;
    .end local v2           #file:Ljava/io/File;
    :cond_2
    const-string/jumbo v4, "en"

    goto :goto_1

    .line 127
    .restart local v2       #file:Ljava/io/File;
    :cond_3
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/help/HelpFragment;->doPdfHandler()V

    goto/16 :goto_0

    .line 72
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0c00b7 -> :sswitch_1
        0x7f0c00b8 -> :sswitch_0
        0x7f0c0215 -> :sswitch_2
        0x7f0c0216 -> :sswitch_3
        0x7f0c0217 -> :sswitch_4
    .end sparse-switch
.end method

.method public onCreateFragmentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 165
    const v0, 0x7f030092

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public parseFAQData(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<+",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 320
    .local p1, lstQ2A:Ljava/util/ArrayList;,"Ljava/util/ArrayList<+Landroid/os/Parcelable;>;"
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/help/HelpFragment;->mListFAQAdapter:Lcom/cnlaunch/x431pro/activity/help/FAQlistAdapter;

    invoke-virtual {v0, p1}, Lcom/cnlaunch/x431pro/activity/help/FAQlistAdapter;->setData(Ljava/util/ArrayList;)V

    .line 321
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/help/HelpFragment;->mListFAQAdapter:Lcom/cnlaunch/x431pro/activity/help/FAQlistAdapter;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/activity/help/FAQlistAdapter;->notifyDataSetChanged()V

    .line 322
    return-void
.end method

.method public parseSectionData(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<+",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 284
    .local p1, lstsections:Ljava/util/ArrayList;,"Ljava/util/ArrayList<+Landroid/os/Parcelable;>;"
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/help/HelpFragment;->mListAdapter:Lcom/cnlaunch/x431pro/activity/help/FunctionListAdapter;

    invoke-virtual {v0, p1}, Lcom/cnlaunch/x431pro/activity/help/FunctionListAdapter;->setData(Ljava/util/ArrayList;)V

    .line 285
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/help/HelpFragment;->mListAdapter:Lcom/cnlaunch/x431pro/activity/help/FunctionListAdapter;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/activity/help/FunctionListAdapter;->notifyDataSetChanged()V

    .line 286
    return-void
.end method

.method public startHtmlView(Landroid/os/Bundle;)V
    .locals 3
    .parameter "bundle"

    .prologue
    .line 276
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 277
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 279
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/help/HelpFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/cnlaunch/x431pro/activity/help/HelpShowFileActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 280
    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/help/HelpFragment;->startActivity(Landroid/content/Intent;)V

    .line 281
    return-void
.end method
