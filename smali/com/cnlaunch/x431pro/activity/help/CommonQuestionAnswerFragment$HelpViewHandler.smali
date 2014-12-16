.class Lcom/cnlaunch/x431pro/activity/help/CommonQuestionAnswerFragment$HelpViewHandler;
.super Landroid/os/Handler;
.source "CommonQuestionAnswerFragment.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/x431pro/activity/help/CommonQuestionAnswerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HelpViewHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/help/CommonQuestionAnswerFragment;


# direct methods
.method private constructor <init>(Lcom/cnlaunch/x431pro/activity/help/CommonQuestionAnswerFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/help/CommonQuestionAnswerFragment$HelpViewHandler;->this$0:Lcom/cnlaunch/x431pro/activity/help/CommonQuestionAnswerFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cnlaunch/x431pro/activity/help/CommonQuestionAnswerFragment;Lcom/cnlaunch/x431pro/activity/help/CommonQuestionAnswerFragment$HelpViewHandler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/cnlaunch/x431pro/activity/help/CommonQuestionAnswerFragment$HelpViewHandler;-><init>(Lcom/cnlaunch/x431pro/activity/help/CommonQuestionAnswerFragment;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 81
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 82
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 83
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 84
    .local v0, bundle:Landroid/os/Bundle;
    sget-object v2, Lcom/cnlaunch/x431pro/activity/help/HelpStringConstant;->str_Question_Answer:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 85
    .local v1, lstQ2A:Ljava/util/ArrayList;,"Ljava/util/ArrayList<+Landroid/os/Parcelable;>;"
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/help/CommonQuestionAnswerFragment$HelpViewHandler;->this$0:Lcom/cnlaunch/x431pro/activity/help/CommonQuestionAnswerFragment;

    invoke-virtual {v2, v1}, Lcom/cnlaunch/x431pro/activity/help/CommonQuestionAnswerFragment;->recQ2AData(Ljava/util/ArrayList;)V

    .line 87
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #lstQ2A:Ljava/util/ArrayList;,"Ljava/util/ArrayList<+Landroid/os/Parcelable;>;"
    :cond_0
    return-void
.end method
