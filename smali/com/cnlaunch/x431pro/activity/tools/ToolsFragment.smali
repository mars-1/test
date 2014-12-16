.class public Lcom/cnlaunch/x431pro/activity/tools/ToolsFragment;
.super Lcom/cnlaunch/x431pro/activity/BaseFragment;
.source "ToolsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cnlaunch/x431pro/activity/tools/ToolsFragment$MyInstalledReceiver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/cnlaunch/x431pro/activity/BaseFragment;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field private adapter:Lcom/cnlaunch/x431pro/activity/tools/adapter/ToolsAdapter;

.field private contensView:Landroid/widget/LinearLayout;

.field private gridview:Landroid/widget/GridView;

.field private installToolNames:[Ljava/lang/String;

.field private mReceiver:Lcom/cnlaunch/x431pro/activity/tools/ToolsFragment$MyInstalledReceiver;

.field private mUIHandler:Landroid/os/Handler;

.field private toolDataInfoList:Lcom/cnlaunch/x431pro/module/tool/ToolDataInfoList;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/BaseFragment;-><init>()V

    .line 48
    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/tools/ToolsFragment;->toolDataInfoList:Lcom/cnlaunch/x431pro/module/tool/ToolDataInfoList;

    .line 49
    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/tools/ToolsFragment;->contensView:Landroid/widget/LinearLayout;

    .line 50
    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/tools/ToolsFragment;->mUIHandler:Landroid/os/Handler;

    .line 51
    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/tools/ToolsFragment;->mReceiver:Lcom/cnlaunch/x431pro/activity/tools/ToolsFragment$MyInstalledReceiver;

    .line 52
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "com.cnlaunch.sensor"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 53
    const-string/jumbo v2, "com.cnlaunch.batterytest"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "com.cnlaunch.oscilloscope"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/tools/ToolsFragment;->installToolNames:[Ljava/lang/String;

    .line 43
    return-void
.end method

.method static synthetic access$0(Lcom/cnlaunch/x431pro/activity/tools/ToolsFragment;)[Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/tools/ToolsFragment;->installToolNames:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/cnlaunch/x431pro/activity/tools/ToolsFragment;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/tools/ToolsFragment;->mUIHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2(Lcom/cnlaunch/x431pro/activity/tools/ToolsFragment;)Lcom/cnlaunch/x431pro/module/tool/ToolDataInfoList;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/tools/ToolsFragment;->toolDataInfoList:Lcom/cnlaunch/x431pro/module/tool/ToolDataInfoList;

    return-object v0
.end method

.method static synthetic access$3(Lcom/cnlaunch/x431pro/activity/tools/ToolsFragment;)Lcom/cnlaunch/x431pro/activity/tools/adapter/ToolsAdapter;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/tools/ToolsFragment;->adapter:Lcom/cnlaunch/x431pro/activity/tools/adapter/ToolsAdapter;

    return-object v0
.end method

.method private initViews()V
    .locals 4

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/tools/ToolsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 93
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f0300fb

    .line 94
    const/4 v2, 0x0

    .line 93
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/tools/ToolsFragment;->gridview:Landroid/widget/GridView;

    .line 95
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/tools/ToolsFragment;->gridview:Landroid/widget/GridView;

    invoke-virtual {v1, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 96
    new-instance v1, Lcom/cnlaunch/x431pro/module/tool/ToolDataInfoList;

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/tools/ToolsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/cnlaunch/x431pro/module/tool/ToolDataInfoList;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/tools/ToolsFragment;->toolDataInfoList:Lcom/cnlaunch/x431pro/module/tool/ToolDataInfoList;

    .line 97
    new-instance v1, Lcom/cnlaunch/x431pro/activity/tools/adapter/ToolsAdapter;

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/tools/ToolsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/tools/ToolsFragment;->toolDataInfoList:Lcom/cnlaunch/x431pro/module/tool/ToolDataInfoList;

    invoke-virtual {v3}, Lcom/cnlaunch/x431pro/module/tool/ToolDataInfoList;->getList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/cnlaunch/x431pro/activity/tools/adapter/ToolsAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/tools/ToolsFragment;->adapter:Lcom/cnlaunch/x431pro/activity/tools/adapter/ToolsAdapter;

    .line 106
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/tools/ToolsFragment;->gridview:Landroid/widget/GridView;

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/tools/ToolsFragment;->adapter:Lcom/cnlaunch/x431pro/activity/tools/adapter/ToolsAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 107
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/tools/ToolsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 108
    const v2, 0x7f0c04da

    .line 107
    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/tools/ToolsFragment;->contensView:Landroid/widget/LinearLayout;

    .line 109
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/tools/ToolsFragment;->contensView:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 110
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/tools/ToolsFragment;->contensView:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/tools/ToolsFragment;->gridview:Landroid/widget/GridView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 111
    return-void
.end method


# virtual methods
.method public doInBackground(I)Ljava/lang/Object;
    .locals 1
    .parameter "requestCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/framework/network/http/HttpException;
        }
    .end annotation

    .prologue
    .line 122
    .line 125
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->doInBackground(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 57
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 58
    const v1, 0x7f0704ee

    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/activity/tools/ToolsFragment;->setTitle(I)V

    .line 59
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/tools/ToolsFragment;->initViews()V

    .line 60
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/tools/ToolsFragment;->mReceiver:Lcom/cnlaunch/x431pro/activity/tools/ToolsFragment$MyInstalledReceiver;

    if-nez v1, :cond_0

    .line 61
    new-instance v1, Lcom/cnlaunch/x431pro/activity/tools/ToolsFragment$MyInstalledReceiver;

    invoke-direct {v1, p0}, Lcom/cnlaunch/x431pro/activity/tools/ToolsFragment$MyInstalledReceiver;-><init>(Lcom/cnlaunch/x431pro/activity/tools/ToolsFragment;)V

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/tools/ToolsFragment;->mReceiver:Lcom/cnlaunch/x431pro/activity/tools/ToolsFragment$MyInstalledReceiver;

    .line 62
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 63
    .local v0, filter:Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 64
    const-string/jumbo v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 65
    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/tools/ToolsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/tools/ToolsFragment;->mReceiver:Lcom/cnlaunch/x431pro/activity/tools/ToolsFragment$MyInstalledReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 69
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_0
    new-instance v1, Lcom/cnlaunch/x431pro/activity/tools/ToolsFragment$1;

    invoke-direct {v1, p0}, Lcom/cnlaunch/x431pro/activity/tools/ToolsFragment$1;-><init>(Lcom/cnlaunch/x431pro/activity/tools/ToolsFragment;)V

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/tools/ToolsFragment;->mUIHandler:Landroid/os/Handler;

    .line 83
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 146
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 188
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 189
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/tools/ToolsFragment;->initViews()V

    .line 190
    return-void
.end method

.method public onCreateFragmentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 88
    const v0, 0x7f0301ac

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onFailure(IILjava/lang/Object;)V
    .locals 0
    .parameter "requestCode"
    .parameter "state"
    .parameter "result"

    .prologue
    .line 137
    invoke-super {p0, p1, p2, p3}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->onFailure(IILjava/lang/Object;)V

    .line 141
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .parameter
    .parameter "precentView"
    .parameter "postion"
    .parameter "arg3"
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
    .line 151
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    new-instance v6, Lcom/cnlaunch/x431pro/module/tool/ToolDataInfoList;

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/tools/ToolsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    .line 152
    invoke-virtual {v7}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    .line 151
    invoke-direct {v6, v7}, Lcom/cnlaunch/x431pro/module/tool/ToolDataInfoList;-><init>(Landroid/content/Context;)V

    .line 152
    invoke-virtual {v6}, Lcom/cnlaunch/x431pro/module/tool/ToolDataInfoList;->getList()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cnlaunch/x431pro/module/tool/model/ToolBaseDataInfo;

    .line 153
    .local v4, infoTemp:Lcom/cnlaunch/x431pro/module/tool/model/ToolBaseDataInfo;
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 154
    .local v5, intent:Landroid/content/Intent;
    const-string/jumbo v6, "browser"

    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/module/tool/model/ToolBaseDataInfo;->getPkgeName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 156
    :try_start_0
    const-string/jumbo v6, "android.intent.action.VIEW"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 157
    const-string/jumbo v6, "http://www.google.com/"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 158
    .local v1, content_url:Landroid/net/Uri;
    invoke-virtual {v5, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 159
    invoke-virtual {p0, v5}, Lcom/cnlaunch/x431pro/activity/tools/ToolsFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    .end local v1           #content_url:Landroid/net/Uri;
    :goto_0
    return-void

    .line 160
    :catch_0
    move-exception v2

    .line 161
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 164
    .end local v2           #e:Ljava/lang/Exception;
    :cond_0
    const-string/jumbo v6, "com.android.gallery3d"

    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/module/tool/model/ToolBaseDataInfo;->getPkgeName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 166
    :try_start_1
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v6, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 167
    .local v3, i:Landroid/content/Intent;
    invoke-virtual {p0, v3}, Lcom/cnlaunch/x431pro/activity/tools/ToolsFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 168
    .end local v3           #i:Landroid/content/Intent;
    :catch_1
    move-exception v2

    .line 169
    .restart local v2       #e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 174
    .end local v2           #e:Ljava/lang/Exception;
    :cond_1
    :try_start_2
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/module/tool/model/ToolBaseDataInfo;->getPkgeName()Ljava/lang/String;

    move-result-object v6

    .line 175
    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/module/tool/model/ToolBaseDataInfo;->getClsName()Ljava/lang/String;

    move-result-object v7

    .line 174
    invoke-direct {v0, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    .local v0, comp:Landroid/content/ComponentName;
    invoke-virtual {v5, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 177
    const-string/jumbo v6, "android.intent.action.MAIN"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 178
    const/high16 v6, 0x1000

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 179
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 180
    .end local v0           #comp:Landroid/content/ComponentName;
    :catch_2
    move-exception v2

    .line 181
    .restart local v2       #e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 116
    invoke-super {p0}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->onResume()V

    .line 117
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/tools/ToolsFragment;->mUIHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 118
    return-void
.end method

.method public onSuccess(ILjava/lang/Object;)V
    .locals 0
    .parameter "requestCode"
    .parameter "result"

    .prologue
    .line 130
    .line 133
    return-void
.end method
