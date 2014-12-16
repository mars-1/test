.class Lcom/cnlaunch/x431pro/module/rtu/BaseSelectFragment$1;
.super Ljava/lang/Object;
.source "BaseSelectFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/x431pro/module/rtu/BaseSelectFragment;->init(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/module/rtu/BaseSelectFragment;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/module/rtu/BaseSelectFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/rtu/BaseSelectFragment$1;->this$0:Lcom/cnlaunch/x431pro/module/rtu/BaseSelectFragment;

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    const/4 v6, 0x0

    const-wide/16 v4, 0x0

    .line 120
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/rtu/BaseSelectFragment$1;->this$0:Lcom/cnlaunch/x431pro/module/rtu/BaseSelectFragment;

    #getter for: Lcom/cnlaunch/x431pro/module/rtu/BaseSelectFragment;->mInfoClickTime:J
    invoke-static {v0}, Lcom/cnlaunch/x431pro/module/rtu/BaseSelectFragment;->access$0(Lcom/cnlaunch/x431pro/module/rtu/BaseSelectFragment;)J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-nez v0, :cond_1

    .line 121
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/rtu/BaseSelectFragment$1;->this$0:Lcom/cnlaunch/x431pro/module/rtu/BaseSelectFragment;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    #setter for: Lcom/cnlaunch/x431pro/module/rtu/BaseSelectFragment;->mInfoClickTime:J
    invoke-static {v0, v1, v2}, Lcom/cnlaunch/x431pro/module/rtu/BaseSelectFragment;->access$1(Lcom/cnlaunch/x431pro/module/rtu/BaseSelectFragment;J)V

    .line 122
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/rtu/BaseSelectFragment$1;->this$0:Lcom/cnlaunch/x431pro/module/rtu/BaseSelectFragment;

    #getter for: Lcom/cnlaunch/x431pro/module/rtu/BaseSelectFragment;->mInfoClickCount:I
    invoke-static {v0}, Lcom/cnlaunch/x431pro/module/rtu/BaseSelectFragment;->access$2(Lcom/cnlaunch/x431pro/module/rtu/BaseSelectFragment;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    #setter for: Lcom/cnlaunch/x431pro/module/rtu/BaseSelectFragment;->mInfoClickCount:I
    invoke-static {v0, v1}, Lcom/cnlaunch/x431pro/module/rtu/BaseSelectFragment;->access$3(Lcom/cnlaunch/x431pro/module/rtu/BaseSelectFragment;I)V

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 125
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/cnlaunch/x431pro/module/rtu/BaseSelectFragment$1;->this$0:Lcom/cnlaunch/x431pro/module/rtu/BaseSelectFragment;

    #getter for: Lcom/cnlaunch/x431pro/module/rtu/BaseSelectFragment;->mInfoClickTime:J
    invoke-static {v2}, Lcom/cnlaunch/x431pro/module/rtu/BaseSelectFragment;->access$0(Lcom/cnlaunch/x431pro/module/rtu/BaseSelectFragment;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x5dc

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 126
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/rtu/BaseSelectFragment$1;->this$0:Lcom/cnlaunch/x431pro/module/rtu/BaseSelectFragment;

    #setter for: Lcom/cnlaunch/x431pro/module/rtu/BaseSelectFragment;->mInfoClickTime:J
    invoke-static {v0, v4, v5}, Lcom/cnlaunch/x431pro/module/rtu/BaseSelectFragment;->access$1(Lcom/cnlaunch/x431pro/module/rtu/BaseSelectFragment;J)V

    .line 127
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/rtu/BaseSelectFragment$1;->this$0:Lcom/cnlaunch/x431pro/module/rtu/BaseSelectFragment;

    #setter for: Lcom/cnlaunch/x431pro/module/rtu/BaseSelectFragment;->mInfoClickCount:I
    invoke-static {v0, v6}, Lcom/cnlaunch/x431pro/module/rtu/BaseSelectFragment;->access$3(Lcom/cnlaunch/x431pro/module/rtu/BaseSelectFragment;I)V

    goto :goto_0

    .line 130
    :cond_2
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/rtu/BaseSelectFragment$1;->this$0:Lcom/cnlaunch/x431pro/module/rtu/BaseSelectFragment;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    #setter for: Lcom/cnlaunch/x431pro/module/rtu/BaseSelectFragment;->mInfoClickTime:J
    invoke-static {v0, v1, v2}, Lcom/cnlaunch/x431pro/module/rtu/BaseSelectFragment;->access$1(Lcom/cnlaunch/x431pro/module/rtu/BaseSelectFragment;J)V

    .line 131
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/rtu/BaseSelectFragment$1;->this$0:Lcom/cnlaunch/x431pro/module/rtu/BaseSelectFragment;

    #getter for: Lcom/cnlaunch/x431pro/module/rtu/BaseSelectFragment;->mInfoClickCount:I
    invoke-static {v0}, Lcom/cnlaunch/x431pro/module/rtu/BaseSelectFragment;->access$2(Lcom/cnlaunch/x431pro/module/rtu/BaseSelectFragment;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    #setter for: Lcom/cnlaunch/x431pro/module/rtu/BaseSelectFragment;->mInfoClickCount:I
    invoke-static {v0, v1}, Lcom/cnlaunch/x431pro/module/rtu/BaseSelectFragment;->access$3(Lcom/cnlaunch/x431pro/module/rtu/BaseSelectFragment;I)V

    .line 132
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/rtu/BaseSelectFragment$1;->this$0:Lcom/cnlaunch/x431pro/module/rtu/BaseSelectFragment;

    #getter for: Lcom/cnlaunch/x431pro/module/rtu/BaseSelectFragment;->mInfoClickCount:I
    invoke-static {v0}, Lcom/cnlaunch/x431pro/module/rtu/BaseSelectFragment;->access$2(Lcom/cnlaunch/x431pro/module/rtu/BaseSelectFragment;)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 133
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/rtu/BaseSelectFragment$1;->this$0:Lcom/cnlaunch/x431pro/module/rtu/BaseSelectFragment;

    iget-object v0, v0, Lcom/cnlaunch/x431pro/module/rtu/BaseSelectFragment;->mListener:Lcom/cnlaunch/x431pro/module/rtu/BaseSelectFragment$OnBaseSelectFragmentInteractionListener;

    const/4 v1, 0x7

    invoke-interface {v0, v1}, Lcom/cnlaunch/x431pro/module/rtu/BaseSelectFragment$OnBaseSelectFragmentInteractionListener;->OnBaseSelectFragmentInteractiond(I)V

    .line 134
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/rtu/BaseSelectFragment$1;->this$0:Lcom/cnlaunch/x431pro/module/rtu/BaseSelectFragment;

    #setter for: Lcom/cnlaunch/x431pro/module/rtu/BaseSelectFragment;->mInfoClickTime:J
    invoke-static {v0, v4, v5}, Lcom/cnlaunch/x431pro/module/rtu/BaseSelectFragment;->access$1(Lcom/cnlaunch/x431pro/module/rtu/BaseSelectFragment;J)V

    .line 135
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/rtu/BaseSelectFragment$1;->this$0:Lcom/cnlaunch/x431pro/module/rtu/BaseSelectFragment;

    #setter for: Lcom/cnlaunch/x431pro/module/rtu/BaseSelectFragment;->mInfoClickCount:I
    invoke-static {v0, v6}, Lcom/cnlaunch/x431pro/module/rtu/BaseSelectFragment;->access$3(Lcom/cnlaunch/x431pro/module/rtu/BaseSelectFragment;I)V

    goto :goto_0
.end method
