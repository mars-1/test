.class Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment$2;
.super Ljava/lang/Object;
.source "PersonDetailFragment.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 2
    .parameter "group"
    .parameter "checkedId"

    .prologue
    .line 111
    packed-switch p2, :pswitch_data_0

    .line 122
    :goto_0
    return-void

    .line 113
    :pswitch_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;

    const/4 v1, 0x1

    #setter for: Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->sexFlag:I
    invoke-static {v0, v1}, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->access$12(Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;I)V

    goto :goto_0

    .line 116
    :pswitch_1
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;

    const/4 v1, 0x0

    #setter for: Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->sexFlag:I
    invoke-static {v0, v1}, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->access$12(Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;I)V

    goto :goto_0

    .line 119
    :pswitch_2
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;

    const/4 v1, 0x2

    #setter for: Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->sexFlag:I
    invoke-static {v0, v1}, Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;->access$12(Lcom/cnlaunch/x431pro/activity/mine/PersonDetailFragment;I)V

    goto :goto_0

    .line 111
    nop

    :pswitch_data_0
    .packed-switch 0x7f0c0195
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
