.class public Lcom/cnlaunch/x431pro/activity/login/RegisterInstructionActivity;
.super Landroid/app/Activity;
.source "RegisterInstructionActivity.java"


# instance fields
.field private btn_agree:Landroid/widget/Button;

.field private btn_no:Landroid/widget/Button;

.field private handler:Landroid/os/Handler;

.field private sContent:Ljava/lang/String;

.field private sTitle:Ljava/lang/String;

.field private tvContent:Landroid/widget/TextView;

.field private tvTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 35
    new-instance v0, Lcom/cnlaunch/x431pro/activity/login/RegisterInstructionActivity$1;

    invoke-direct {v0, p0}, Lcom/cnlaunch/x431pro/activity/login/RegisterInstructionActivity$1;-><init>(Lcom/cnlaunch/x431pro/activity/login/RegisterInstructionActivity;)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegisterInstructionActivity;->handler:Landroid/os/Handler;

    .line 26
    return-void
.end method

.method static synthetic access$0(Lcom/cnlaunch/x431pro/activity/login/RegisterInstructionActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegisterInstructionActivity;->tvTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/cnlaunch/x431pro/activity/login/RegisterInstructionActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegisterInstructionActivity;->sTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/cnlaunch/x431pro/activity/login/RegisterInstructionActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegisterInstructionActivity;->tvContent:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3(Lcom/cnlaunch/x431pro/activity/login/RegisterInstructionActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegisterInstructionActivity;->sContent:Ljava/lang/String;

    return-object v0
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 63
    const v0, 0x7f0c0422

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/login/RegisterInstructionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegisterInstructionActivity;->btn_agree:Landroid/widget/Button;

    .line 64
    const v0, 0x7f0c0423

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/login/RegisterInstructionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegisterInstructionActivity;->btn_no:Landroid/widget/Button;

    .line 65
    const v0, 0x7f0c0425

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/login/RegisterInstructionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegisterInstructionActivity;->tvContent:Landroid/widget/TextView;

    .line 66
    const v0, 0x7f0c0420

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/login/RegisterInstructionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegisterInstructionActivity;->tvTitle:Landroid/widget/TextView;

    .line 68
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegisterInstructionActivity;->sTitle:Ljava/lang/String;

    .line 69
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegisterInstructionActivity;->sContent:Ljava/lang/String;

    .line 71
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegisterInstructionActivity;->btn_agree:Landroid/widget/Button;

    new-instance v1, Lcom/cnlaunch/x431pro/activity/login/RegisterInstructionActivity$2;

    invoke-direct {v1, p0}, Lcom/cnlaunch/x431pro/activity/login/RegisterInstructionActivity$2;-><init>(Lcom/cnlaunch/x431pro/activity/login/RegisterInstructionActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegisterInstructionActivity;->btn_no:Landroid/widget/Button;

    new-instance v1, Lcom/cnlaunch/x431pro/activity/login/RegisterInstructionActivity$3;

    invoke-direct {v1, p0}, Lcom/cnlaunch/x431pro/activity/login/RegisterInstructionActivity$3;-><init>(Lcom/cnlaunch/x431pro/activity/login/RegisterInstructionActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    const-string/jumbo v0, "registerinstruction.txt"

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/login/RegisterInstructionActivity;->getFromAssets(Ljava/lang/String;)Ljava/lang/String;

    .line 91
    return-void
.end method


# virtual methods
.method public getFromAssets(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "fileName"

    .prologue
    .line 95
    :try_start_0
    new-instance v4, Ljava/io/InputStreamReader;

    .line 96
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/login/RegisterInstructionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6

    const-string/jumbo v7, "UTF-8"

    .line 95
    invoke-direct {v4, v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 97
    .local v4, inputReader:Ljava/io/InputStreamReader;
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 98
    .local v1, bufReader:Ljava/io/BufferedReader;
    const/4 v5, 0x0

    .line 99
    .local v5, line:Ljava/lang/String;
    const/4 v0, 0x0

    .line 100
    .local v0, Result:Ljava/lang/String;
    const/4 v3, 0x0

    .line 101
    .local v3, i:I
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_0

    .line 109
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/login/RegisterInstructionActivity;->handler:Landroid/os/Handler;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 113
    .end local v0           #Result:Ljava/lang/String;
    .end local v1           #bufReader:Ljava/io/BufferedReader;
    .end local v3           #i:I
    .end local v4           #inputReader:Ljava/io/InputStreamReader;
    .end local v5           #line:Ljava/lang/String;
    :goto_1
    return-object v0

    .line 102
    .restart local v0       #Result:Ljava/lang/String;
    .restart local v1       #bufReader:Ljava/io/BufferedReader;
    .restart local v3       #i:I
    .restart local v4       #inputReader:Ljava/io/InputStreamReader;
    .restart local v5       #line:Ljava/lang/String;
    :cond_0
    const/4 v6, 0x2

    if-ge v3, v6, :cond_1

    .line 103
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/login/RegisterInstructionActivity;->sTitle:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/cnlaunch/x431pro/activity/login/RegisterInstructionActivity;->sTitle:Ljava/lang/String;

    .line 104
    add-int/lit8 v3, v3, 0x1

    .line 105
    goto :goto_0

    .line 106
    :cond_1
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/login/RegisterInstructionActivity;->sContent:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\r\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/cnlaunch/x431pro/activity/login/RegisterInstructionActivity;->sContent:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 111
    .end local v0           #Result:Ljava/lang/String;
    .end local v1           #bufReader:Ljava/io/BufferedReader;
    .end local v3           #i:I
    .end local v4           #inputReader:Ljava/io/InputStreamReader;
    .end local v5           #line:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 112
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 113
    const-string/jumbo v0, ""

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 57
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    const v0, 0x7f030171

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/login/RegisterInstructionActivity;->setContentView(I)V

    .line 59
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/login/RegisterInstructionActivity;->initView()V

    .line 60
    return-void
.end method
