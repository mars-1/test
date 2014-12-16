.class Lcom/cnlaunch/x431pro/activity/help/HelpShowFileFragment$HelpViewHandler;
.super Landroid/os/Handler;
.source "HelpShowFileFragment.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/x431pro/activity/help/HelpShowFileFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HelpViewHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/help/HelpShowFileFragment;


# direct methods
.method private constructor <init>(Lcom/cnlaunch/x431pro/activity/help/HelpShowFileFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/help/HelpShowFileFragment$HelpViewHandler;->this$0:Lcom/cnlaunch/x431pro/activity/help/HelpShowFileFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cnlaunch/x431pro/activity/help/HelpShowFileFragment;Lcom/cnlaunch/x431pro/activity/help/HelpShowFileFragment$HelpViewHandler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/cnlaunch/x431pro/activity/help/HelpShowFileFragment$HelpViewHandler;-><init>(Lcom/cnlaunch/x431pro/activity/help/HelpShowFileFragment;)V

    return-void
.end method

.method private parseKeywordData(Ljava/util/ArrayList;)V
    .locals 5
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
    .line 74
    .local p1, listData:Ljava/util/ArrayList;,"Ljava/util/ArrayList<+Landroid/os/Parcelable;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v0, v3, :cond_0

    .line 82
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/help/HelpShowFileFragment$HelpViewHandler;->this$0:Lcom/cnlaunch/x431pro/activity/help/HelpShowFileFragment;

    invoke-virtual {v3}, Lcom/cnlaunch/x431pro/activity/help/HelpShowFileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "can\'t find help file!"

    invoke-static {v3, v4}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 83
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/help/HelpShowFileFragment$HelpViewHandler;->this$0:Lcom/cnlaunch/x431pro/activity/help/HelpShowFileFragment;

    invoke-virtual {v3}, Lcom/cnlaunch/x431pro/activity/help/HelpShowFileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    .line 84
    :goto_1
    return-void

    .line 75
    :cond_0
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cnlaunch/x431pro/activity/help/HelpFileInfo;

    invoke-virtual {v3}, Lcom/cnlaunch/x431pro/activity/help/HelpFileInfo;->getTitle()Ljava/lang/String;

    move-result-object v2

    .line 76
    .local v2, title:Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cnlaunch/x431pro/activity/help/HelpFileInfo;

    invoke-virtual {v3}, Lcom/cnlaunch/x431pro/activity/help/HelpFileInfo;->getItem()Ljava/lang/String;

    move-result-object v1

    .line 77
    .local v1, item:Ljava/lang/String;
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/help/HelpShowFileFragment$HelpViewHandler;->this$0:Lcom/cnlaunch/x431pro/activity/help/HelpShowFileFragment;

    iget-object v3, v3, Lcom/cnlaunch/x431pro/activity/help/HelpShowFileFragment;->strModule:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/help/HelpShowFileFragment$HelpViewHandler;->this$0:Lcom/cnlaunch/x431pro/activity/help/HelpShowFileFragment;

    iget-object v3, v3, Lcom/cnlaunch/x431pro/activity/help/HelpShowFileFragment;->strKeyword:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 78
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/help/HelpShowFileFragment$HelpViewHandler;->this$0:Lcom/cnlaunch/x431pro/activity/help/HelpShowFileFragment;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cnlaunch/x431pro/activity/help/HelpFileInfo;

    invoke-virtual {v3}, Lcom/cnlaunch/x431pro/activity/help/HelpFileInfo;->getItemRef()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/cnlaunch/x431pro/activity/help/HelpShowFileFragment;->showHtmlFileText(Ljava/lang/String;)V

    goto :goto_1

    .line 74
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 59
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 60
    iget v3, p1, Landroid/os/Message;->what:I

    if-nez v3, :cond_1

    .line 61
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 62
    .local v0, bundle:Landroid/os/Bundle;
    sget-object v3, Lcom/cnlaunch/x431pro/activity/help/HelpStringConstant;->str_MapKey_KeyWords:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 64
    .local v1, lstkeyWord:Ljava/util/ArrayList;,"Ljava/util/ArrayList<+Landroid/os/Parcelable;>;"
    invoke-direct {p0, v1}, Lcom/cnlaunch/x431pro/activity/help/HelpShowFileFragment$HelpViewHandler;->parseKeywordData(Ljava/util/ArrayList;)V

    .line 71
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #lstkeyWord:Ljava/util/ArrayList;,"Ljava/util/ArrayList<+Landroid/os/Parcelable;>;"
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    iget v3, p1, Landroid/os/Message;->what:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 67
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 68
    .restart local v0       #bundle:Landroid/os/Bundle;
    sget-object v3, Lcom/cnlaunch/x431pro/activity/help/HelpStringConstant;->str_OpenHtmlFile:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 69
    .local v2, strfile:Ljava/lang/String;
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/help/HelpShowFileFragment$HelpViewHandler;->this$0:Lcom/cnlaunch/x431pro/activity/help/HelpShowFileFragment;

    invoke-virtual {v3, v2}, Lcom/cnlaunch/x431pro/activity/help/HelpShowFileFragment;->showHtmlFileText(Ljava/lang/String;)V

    goto :goto_0
.end method
