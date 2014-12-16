.class Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$GlobalClick;
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
    name = "GlobalClick"
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
    .line 598
    iput-object p1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$GlobalClick;->this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;IJ)V
    .locals 3
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 605
    const-string/jumbo v0, "MessageActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "postion:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    packed-switch p2, :pswitch_data_0

    .line 620
    :goto_0
    return-void

    .line 608
    :pswitch_0
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$GlobalClick;->this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;

    invoke-virtual {v0}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->beginDialog()V

    goto :goto_0

    .line 611
    :pswitch_1
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$GlobalClick;->this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;

    invoke-virtual {v0}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->showPictureDialog()V

    goto :goto_0

    .line 614
    :pswitch_2
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$GlobalClick;->this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;

    invoke-virtual {v0}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->showFileDialog()V

    goto :goto_0

    .line 606
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
