.class public Lcom/cnlaunch/x431pro/activity/share/ShareActivity;
.super Lcom/cnlaunch/x431pro/activity/BaseDialogActivity;
.source "ShareActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/cnlaunch/x431pro/activity/BaseDialogActivity;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field private gridShare:Landroid/widget/GridView;

.field private mContext:Landroid/content/Context;

.field private mEmail:Ljava/lang/String;

.field private mReportPath:Ljava/lang/String;

.field private mVerLocal:Ljava/lang/String;

.field private shareIntentList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private shareinfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/BaseDialogActivity;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/share/ShareActivity;->gridShare:Landroid/widget/GridView;

    .line 33
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/share/ShareActivity;->mReportPath:Ljava/lang/String;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/share/ShareActivity;->shareIntentList:Ljava/util/ArrayList;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/share/ShareActivity;->shareinfoList:Ljava/util/ArrayList;

    .line 31
    return-void
.end method

.method private initDialogSize()V
    .locals 8

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/share/ShareActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d0009

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 136
    .local v4, widthSize:I
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/share/ShareActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d000a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 137
    .local v2, heightSize:I
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/share/ShareActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    .line 138
    .local v5, window:Landroid/view/Window;
    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 139
    .local v0, attributesParams:Landroid/view/WindowManager$LayoutParams;
    const/4 v6, 0x2

    iput v6, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 140
    const v6, 0x3ecccccd

    iput v6, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 141
    invoke-virtual {v5}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Display;->getWidth()I

    move-result v6

    mul-int/2addr v6, v4

    div-int/lit8 v3, v6, 0x64

    .line 142
    .local v3, width:I
    invoke-virtual {v5}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Display;->getHeight()I

    move-result v6

    mul-int/2addr v6, v2

    div-int/lit8 v1, v6, 0x64

    .line 143
    .local v1, height:I
    invoke-virtual {v5, v3, v1}, Landroid/view/Window;->setLayout(II)V

    .line 144
    return-void
.end method

.method private initShareInfo()V
    .locals 18
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation

    .prologue
    .line 68
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 70
    .local v8, infoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/cnlaunch/x431pro/activity/share/ShareActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    .line 72
    .local v12, packageName:Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/cnlaunch/x431pro/activity/share/ShareActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v15, v12, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    .line 73
    .local v7, info:Landroid/content/pm/PackageInfo;
    iget-object v15, v7, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/cnlaunch/x431pro/activity/share/ShareActivity;->mVerLocal:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    .end local v7           #info:Landroid/content/pm/PackageInfo;
    :goto_0
    new-instance v9, Landroid/content/Intent;

    const-string/jumbo v15, "android.intent.action.SEND"

    invoke-direct {v9, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 79
    .local v9, intent:Landroid/content/Intent;
    const-string/jumbo v15, "text/plain"

    invoke-virtual {v9, v15}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    invoke-virtual/range {p0 .. p0}, Lcom/cnlaunch/x431pro/activity/share/ShareActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    .line 81
    .local v11, pManager:Landroid/content/pm/PackageManager;
    const/4 v15, 0x0

    invoke-virtual {v11, v9, v15}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v8

    .end local v8           #infoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    check-cast v8, Ljava/util/ArrayList;

    .line 83
    .restart local v8       #infoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string/jumbo v15, "yyyy-MM-dd:HH:mm:ss"

    invoke-direct {v3, v15}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 84
    .local v3, df:Ljava/text/DateFormat;
    new-instance v15, Ljava/util/Date;

    invoke-direct {v15}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v15}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 85
    .local v2, date:Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/cnlaunch/x431pro/activity/share/ShareActivity;->mReportPath:Ljava/lang/String;

    invoke-direct {v5, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 86
    .local v5, file:Ljava/io/File;
    const/4 v15, 0x1

    new-array v14, v15, [Ljava/lang/String;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/share/ShareActivity;->mEmail:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    .line 89
    .local v14, tos:[Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, index:I
    :goto_1
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-lt v6, v15, :cond_0

    .line 130
    return-void

    .line 74
    .end local v2           #date:Ljava/lang/String;
    .end local v3           #df:Ljava/text/DateFormat;
    .end local v5           #file:Ljava/io/File;
    .end local v6           #index:I
    .end local v9           #intent:Landroid/content/Intent;
    .end local v11           #pManager:Landroid/content/pm/PackageManager;
    .end local v14           #tos:[Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 75
    .local v4, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v4}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 90
    .end local v4           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v2       #date:Ljava/lang/String;
    .restart local v3       #df:Ljava/text/DateFormat;
    .restart local v5       #file:Ljava/io/File;
    .restart local v6       #index:I
    .restart local v9       #intent:Landroid/content/Intent;
    .restart local v11       #pManager:Landroid/content/pm/PackageManager;
    .restart local v14       #tos:[Ljava/lang/String;
    :cond_0
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 91
    .local v7, info:Landroid/content/pm/ResolveInfo;
    new-instance v10, Landroid/content/Intent;

    const-string/jumbo v15, "android.intent.action.SEND"

    invoke-direct {v10, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 92
    .local v10, intentShare:Landroid/content/Intent;
    const-string/jumbo v15, "text/plain"

    invoke-virtual {v10, v15}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    iget-object v1, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 94
    .local v1, activityInfo:Landroid/content/pm/ActivityInfo;
    iget-object v15, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v16, "bluetooth"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 89
    :cond_1
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 97
    :cond_2
    iget-object v15, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v16, "reader"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_1

    .line 100
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v16, ".jpg"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 101
    const-string/jumbo v15, "image/*"

    invoke-virtual {v10, v15}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 107
    :goto_3
    const-string/jumbo v15, "subject"

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v10, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 108
    const-string/jumbo v15, "android.intent.extra.EMAIL"

    invoke-virtual {v10, v15, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 110
    const-string/jumbo v15, "android.intent.extra.TEXT"

    new-instance v16, Ljava/lang/StringBuilder;

    const-string/jumbo v17, "V"

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/share/ShareActivity;->mVerLocal:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, "  DATE:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v10, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 112
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/cnlaunch/x431pro/activity/share/ShareActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0705a5

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 114
    .local v13, subject:Ljava/lang/String;
    const-string/jumbo v15, "android.intent.extra.SUBJECT"

    invoke-virtual {v10, v15, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    const-string/jumbo v15, "android.intent.extra.STREAM"

    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v10, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 117
    iget-object v15, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v16, "mms"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_3

    iget-object v15, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v16, "email"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_3

    iget-object v15, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v16, "weibo"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 118
    :cond_3
    const-string/jumbo v15, "android.intent.extra.STREAM"

    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v10, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 125
    :goto_4
    iget-object v15, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v15}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 127
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/cnlaunch/x431pro/activity/share/ShareActivity;->shareIntentList:Ljava/util/ArrayList;

    invoke-virtual {v15, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/cnlaunch/x431pro/activity/share/ShareActivity;->shareinfoList:Ljava/util/ArrayList;

    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 102
    .end local v13           #subject:Ljava/lang/String;
    :cond_4
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v16, ".txt"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 103
    const-string/jumbo v15, "text/plain"

    invoke-virtual {v10, v15}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_3

    .line 105
    :cond_5
    const-string/jumbo v15, "application/octet-stream"

    invoke-virtual {v10, v15}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_3

    .line 119
    .restart local v13       #subject:Ljava/lang/String;
    :cond_6
    iget-object v15, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v16, "bluetooth"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    goto :goto_4
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 153
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/BaseDialogActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 154
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/share/ShareActivity;->initDialogSize()V

    .line 155
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 45
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/BaseDialogActivity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    const v1, 0x7f030010

    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/activity/share/ShareActivity;->setContentView(I)V

    .line 48
    iput-object p0, p0, Lcom/cnlaunch/x431pro/activity/share/ShareActivity;->mContext:Landroid/content/Context;

    .line 50
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/share/ShareActivity;->initDialogSize()V

    .line 52
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/share/ShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 53
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 54
    const-string/jumbo v1, "FilePath"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/share/ShareActivity;->mReportPath:Ljava/lang/String;

    .line 57
    :cond_0
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/share/ShareActivity;->initShareInfo()V

    .line 59
    const v1, 0x7f0c005e

    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/activity/share/ShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/share/ShareActivity;->gridShare:Landroid/widget/GridView;

    .line 60
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/share/ShareActivity;->gridShare:Landroid/widget/GridView;

    new-instance v2, Lcom/cnlaunch/x431pro/activity/share/adapter/ShareAdapter;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/share/ShareActivity;->shareinfoList:Ljava/util/ArrayList;

    invoke-direct {v2, v3, p0}, Lcom/cnlaunch/x431pro/activity/share/adapter/ShareAdapter;-><init>(Ljava/util/ArrayList;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 61
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/share/ShareActivity;->gridShare:Landroid/widget/GridView;

    invoke-virtual {v1, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 62
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 148
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/share/ShareActivity;->shareIntentList:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/share/ShareActivity;->startActivity(Landroid/content/Intent;)V

    .line 149
    return-void
.end method
