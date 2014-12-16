.class Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment$2;
.super Ljava/lang/Object;
.source "MyReportFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;->login_state:Ljava/lang/String;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;->access$6(Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;->login_state:Ljava/lang/String;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;->access$6(Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;->access$0(Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0706da

    invoke-static {v0, v1}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;I)V

    .line 124
    :goto_0
    return-void

    .line 122
    :cond_1
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;->page:I
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;->access$7(Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    #setter for: Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;->page:I
    invoke-static {v0, v1}, Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;->access$8(Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;I)V

    .line 123
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;

    const/16 v1, 0x7531

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;->request(I)V

    goto :goto_0
.end method
