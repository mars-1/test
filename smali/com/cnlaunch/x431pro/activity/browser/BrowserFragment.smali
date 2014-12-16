.class public Lcom/cnlaunch/x431pro/activity/browser/BrowserFragment;
.super Lcom/cnlaunch/x431pro/activity/BaseFragment;
.source "BrowserFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/cnlaunch/x431pro/activity/BaseFragment;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# static fields
.field static last_website:Ljava/lang/String;


# instance fields
.field adapter:Lcom/cnlaunch/x431pro/activity/browser/adapter/BrowserAdapter;

.field bt_blank:Landroid/widget/Button;

.field private gridview:Landroid/widget/GridView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-string/jumbo v0, ""

    sput-object v0, Lcom/cnlaunch/x431pro/activity/browser/BrowserFragment;->last_website:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/BaseFragment;-><init>()V

    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/browser/BrowserFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c007f

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/browser/BrowserFragment;->gridview:Landroid/widget/GridView;

    .line 40
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/browser/BrowserFragment;->gridview:Landroid/widget/GridView;

    invoke-virtual {v0, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 41
    new-instance v0, Lcom/cnlaunch/x431pro/activity/browser/adapter/BrowserAdapter;

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/browser/BrowserFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/cnlaunch/x431pro/module/browser/model/BrowserWebSitesList;

    invoke-direct {v2}, Lcom/cnlaunch/x431pro/module/browser/model/BrowserWebSitesList;-><init>()V

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/module/browser/model/BrowserWebSitesList;->getList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/cnlaunch/x431pro/activity/browser/adapter/BrowserAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/browser/BrowserFragment;->adapter:Lcom/cnlaunch/x431pro/activity/browser/adapter/BrowserAdapter;

    .line 42
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/browser/BrowserFragment;->gridview:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/browser/BrowserFragment;->adapter:Lcom/cnlaunch/x431pro/activity/browser/adapter/BrowserAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 43
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/browser/BrowserFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c007e

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/browser/BrowserFragment;->bt_blank:Landroid/widget/Button;

    .line 44
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/browser/BrowserFragment;->bt_blank:Landroid/widget/Button;

    const-string/jumbo v1, "blank"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 45
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/browser/BrowserFragment;->bt_blank:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 33
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 34
    const v0, 0x7f0706a0

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/browser/BrowserFragment;->setTitle(I)V

    .line 35
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/browser/BrowserFragment;->init()V

    .line 36
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 84
    return-void
.end method

.method public onCreateFragmentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 50
    const v0, 0x7f03001e

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 10
    .parameter
    .parameter "arg1"
    .parameter "arg2"
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
    .line 55
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cnlaunch/x431pro/activity/browser/adapter/BrowserAdapter$ViewHolder;

    .line 56
    .local v2, holder:Lcom/cnlaunch/x431pro/activity/browser/adapter/BrowserAdapter$ViewHolder;
    iget-object v7, v2, Lcom/cnlaunch/x431pro/activity/browser/adapter/BrowserAdapter$ViewHolder;->web_site:Ljava/lang/String;

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 57
    .local v6, uri:Landroid/net/Uri;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 59
    .local v3, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/browser/BrowserFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const-string/jumbo v8, "activity"

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 60
    .local v0, am:Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v5

    .line 61
    .local v5, run:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    const/4 v1, 0x0

    .line 62
    .local v1, browserRunning:Z
    sget-object v7, Lcom/cnlaunch/x431pro/activity/browser/BrowserFragment;->last_website:Ljava/lang/String;

    iget-object v8, v2, Lcom/cnlaunch/x431pro/activity/browser/adapter/BrowserAdapter$ViewHolder;->web_site:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 63
    invoke-virtual {v3, v6}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 76
    :cond_0
    :goto_0
    const-string/jumbo v7, "com.android.chrome"

    const-string/jumbo v8, "com.google.android.apps.chrome.Main"

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    iget-object v7, v2, Lcom/cnlaunch/x431pro/activity/browser/adapter/BrowserAdapter$ViewHolder;->web_site:Ljava/lang/String;

    sput-object v7, Lcom/cnlaunch/x431pro/activity/browser/BrowserFragment;->last_website:Ljava/lang/String;

    .line 78
    invoke-virtual {p0, v3}, Lcom/cnlaunch/x431pro/activity/browser/BrowserFragment;->startActivity(Landroid/content/Intent;)V

    .line 79
    return-void

    .line 65
    :cond_1
    const/4 v1, 0x0

    .line 66
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_3

    .line 72
    :goto_1
    if-nez v1, :cond_0

    .line 73
    invoke-virtual {v3, v6}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_0

    .line 66
    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 67
    .local v4, process:Landroid/app/ActivityManager$RunningAppProcessInfo;
    const-string/jumbo v8, "com.android.chrome"

    iget-object v9, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 68
    const/4 v1, 0x1

    .line 69
    goto :goto_1
.end method
