.class Lcom/cnlaunch/x431pro/activity/help/HelpFragment$HelpViewHandler;
.super Landroid/os/Handler;
.source "HelpFragment.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/x431pro/activity/help/HelpFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HelpViewHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/help/HelpFragment;


# direct methods
.method private constructor <init>(Lcom/cnlaunch/x431pro/activity/help/HelpFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 255
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/help/HelpFragment$HelpViewHandler;->this$0:Lcom/cnlaunch/x431pro/activity/help/HelpFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cnlaunch/x431pro/activity/help/HelpFragment;Lcom/cnlaunch/x431pro/activity/help/HelpFragment$HelpViewHandler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 255
    invoke-direct {p0, p1}, Lcom/cnlaunch/x431pro/activity/help/HelpFragment$HelpViewHandler;-><init>(Lcom/cnlaunch/x431pro/activity/help/HelpFragment;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 257
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 258
    iget v3, p1, Landroid/os/Message;->what:I

    if-nez v3, :cond_1

    .line 259
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 260
    .local v0, bundle:Landroid/os/Bundle;
    sget-object v3, Lcom/cnlaunch/x431pro/activity/help/HelpStringConstant;->str_MapKey_Sections:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 261
    .local v2, lstsections:Ljava/util/ArrayList;,"Ljava/util/ArrayList<+Landroid/os/Parcelable;>;"
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/help/HelpFragment$HelpViewHandler;->this$0:Lcom/cnlaunch/x431pro/activity/help/HelpFragment;

    invoke-virtual {v3, v2}, Lcom/cnlaunch/x431pro/activity/help/HelpFragment;->parseSectionData(Ljava/util/ArrayList;)V

    .line 272
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v2           #lstsections:Ljava/util/ArrayList;,"Ljava/util/ArrayList<+Landroid/os/Parcelable;>;"
    :cond_0
    :goto_0
    return-void

    .line 262
    :cond_1
    iget v3, p1, Landroid/os/Message;->what:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    .line 265
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/help/HelpFragment$HelpViewHandler;->this$0:Lcom/cnlaunch/x431pro/activity/help/HelpFragment;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/cnlaunch/x431pro/activity/help/HelpFragment;->startHtmlView(Landroid/os/Bundle;)V

    goto :goto_0

    .line 267
    :cond_2
    iget v3, p1, Landroid/os/Message;->what:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 268
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 269
    .restart local v0       #bundle:Landroid/os/Bundle;
    sget-object v3, Lcom/cnlaunch/x431pro/activity/help/HelpStringConstant;->str_Question_Answer:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 270
    .local v1, lstQ2A:Ljava/util/ArrayList;,"Ljava/util/ArrayList<+Landroid/os/Parcelable;>;"
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/help/HelpFragment$HelpViewHandler;->this$0:Lcom/cnlaunch/x431pro/activity/help/HelpFragment;

    invoke-virtual {v3, v1}, Lcom/cnlaunch/x431pro/activity/help/HelpFragment;->parseFAQData(Ljava/util/ArrayList;)V

    goto :goto_0
.end method
