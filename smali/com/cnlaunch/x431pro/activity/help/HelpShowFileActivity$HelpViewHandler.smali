.class Lcom/cnlaunch/x431pro/activity/help/HelpShowFileActivity$HelpViewHandler;
.super Landroid/os/Handler;
.source "HelpShowFileActivity.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/x431pro/activity/help/HelpShowFileActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HelpViewHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/help/HelpShowFileActivity;


# direct methods
.method private constructor <init>(Lcom/cnlaunch/x431pro/activity/help/HelpShowFileActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/help/HelpShowFileActivity$HelpViewHandler;->this$0:Lcom/cnlaunch/x431pro/activity/help/HelpShowFileActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cnlaunch/x431pro/activity/help/HelpShowFileActivity;Lcom/cnlaunch/x431pro/activity/help/HelpShowFileActivity$HelpViewHandler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/cnlaunch/x431pro/activity/help/HelpShowFileActivity$HelpViewHandler;-><init>(Lcom/cnlaunch/x431pro/activity/help/HelpShowFileActivity;)V

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
    .line 73
    .local p1, listData:Ljava/util/ArrayList;,"Ljava/util/ArrayList<+Landroid/os/Parcelable;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v0, v3, :cond_0

    .line 81
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/help/HelpShowFileActivity$HelpViewHandler;->this$0:Lcom/cnlaunch/x431pro/activity/help/HelpShowFileActivity;

    invoke-virtual {v3}, Lcom/cnlaunch/x431pro/activity/help/HelpShowFileActivity;->finishActivity()V

    .line 82
    :goto_1
    return-void

    .line 74
    :cond_0
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cnlaunch/x431pro/activity/help/HelpFileInfo;

    invoke-virtual {v3}, Lcom/cnlaunch/x431pro/activity/help/HelpFileInfo;->getTitle()Ljava/lang/String;

    move-result-object v2

    .line 75
    .local v2, title:Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cnlaunch/x431pro/activity/help/HelpFileInfo;

    invoke-virtual {v3}, Lcom/cnlaunch/x431pro/activity/help/HelpFileInfo;->getItem()Ljava/lang/String;

    move-result-object v1

    .line 76
    .local v1, item:Ljava/lang/String;
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/help/HelpShowFileActivity$HelpViewHandler;->this$0:Lcom/cnlaunch/x431pro/activity/help/HelpShowFileActivity;

    iget-object v3, v3, Lcom/cnlaunch/x431pro/activity/help/HelpShowFileActivity;->strModule:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/help/HelpShowFileActivity$HelpViewHandler;->this$0:Lcom/cnlaunch/x431pro/activity/help/HelpShowFileActivity;

    iget-object v3, v3, Lcom/cnlaunch/x431pro/activity/help/HelpShowFileActivity;->strKeyword:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 77
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/help/HelpShowFileActivity$HelpViewHandler;->this$0:Lcom/cnlaunch/x431pro/activity/help/HelpShowFileActivity;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cnlaunch/x431pro/activity/help/HelpFileInfo;

    invoke-virtual {v3}, Lcom/cnlaunch/x431pro/activity/help/HelpFileInfo;->getItemRef()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/cnlaunch/x431pro/activity/help/HelpShowFileActivity;->showHtmlFileText(Ljava/lang/String;)V

    goto :goto_1

    .line 73
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

    .line 63
    .local v1, lstkeyWord:Ljava/util/ArrayList;,"Ljava/util/ArrayList<+Landroid/os/Parcelable;>;"
    invoke-direct {p0, v1}, Lcom/cnlaunch/x431pro/activity/help/HelpShowFileActivity$HelpViewHandler;->parseKeywordData(Ljava/util/ArrayList;)V

    .line 70
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #lstkeyWord:Ljava/util/ArrayList;,"Ljava/util/ArrayList<+Landroid/os/Parcelable;>;"
    :cond_0
    :goto_0
    return-void

    .line 64
    :cond_1
    iget v3, p1, Landroid/os/Message;->what:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 66
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 67
    .restart local v0       #bundle:Landroid/os/Bundle;
    sget-object v3, Lcom/cnlaunch/x431pro/activity/help/HelpStringConstant;->str_OpenHtmlFile:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 68
    .local v2, strfile:Ljava/lang/String;
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/help/HelpShowFileActivity$HelpViewHandler;->this$0:Lcom/cnlaunch/x431pro/activity/help/HelpShowFileActivity;

    invoke-virtual {v3, v2}, Lcom/cnlaunch/x431pro/activity/help/HelpShowFileActivity;->showHtmlFileText(Ljava/lang/String;)V

    goto :goto_0
.end method
