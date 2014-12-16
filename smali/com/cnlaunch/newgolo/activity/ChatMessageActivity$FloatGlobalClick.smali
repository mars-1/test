.class Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$FloatGlobalClick;
.super Ljava/lang/Object;
.source "ChatMessageActivity.java"

# interfaces
.implements Lcom/cnlaunch/newgolo/adapter/GlobalAdapter$OnGlobalItemClick;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FloatGlobalClick"
.end annotation


# static fields
.field private static final INDEX_FILE:I = 0x2

.field private static final INDEX_PICTURE:I = 0x1

.field private static final INDEX_REMOTE:I


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;


# direct methods
.method constructor <init>(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 629
    iput-object p1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$FloatGlobalClick;->this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;IJ)V
    .locals 4
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    const/4 v3, 0x0

    .line 636
    const-string/jumbo v0, "MessageActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "postion:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    packed-switch p2, :pswitch_data_0

    .line 656
    :goto_0
    return-void

    .line 639
    :pswitch_0
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$FloatGlobalClick;->this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;

    #getter for: Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->access$0(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/cnlaunch/golo3/message/R$string;->remote_diagnosing:I

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 640
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 644
    :pswitch_1
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$FloatGlobalClick;->this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;

    #getter for: Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->access$0(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/cnlaunch/golo3/message/R$string;->remote_diagnosing:I

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 645
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 649
    :pswitch_2
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$FloatGlobalClick;->this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;

    #getter for: Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->access$0(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/cnlaunch/golo3/message/R$string;->remote_diagnosing:I

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 650
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 637
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
