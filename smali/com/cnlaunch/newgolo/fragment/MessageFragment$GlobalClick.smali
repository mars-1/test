.class Lcom/cnlaunch/newgolo/fragment/MessageFragment$GlobalClick;
.super Ljava/lang/Object;
.source "MessageFragment.java"

# interfaces
.implements Lcom/cnlaunch/newgolo/adapter/GlobalAdapter$OnGlobalItemClick;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/newgolo/fragment/MessageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GlobalClick"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/newgolo/fragment/MessageFragment;


# direct methods
.method constructor <init>(Lcom/cnlaunch/newgolo/fragment/MessageFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 643
    iput-object p1, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment$GlobalClick;->this$0:Lcom/cnlaunch/newgolo/fragment/MessageFragment;

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
    .line 650
    const-string/jumbo v0, "MessageFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "postion:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    sget v0, Lcom/cnlaunch/golo3/message/R$drawable;->helper_02:I

    int-to-long v0, v0

    cmp-long v0, p3, v0

    if-nez v0, :cond_1

    .line 652
    iget-object v0, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment$GlobalClick;->this$0:Lcom/cnlaunch/newgolo/fragment/MessageFragment;

    invoke-virtual {v0}, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->beginDialog()V

    .line 659
    :cond_0
    :goto_0
    return-void

    .line 653
    :cond_1
    sget v0, Lcom/cnlaunch/golo3/message/R$drawable;->mode_picture:I

    int-to-long v0, v0

    cmp-long v0, p3, v0

    if-nez v0, :cond_2

    .line 654
    iget-object v0, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment$GlobalClick;->this$0:Lcom/cnlaunch/newgolo/fragment/MessageFragment;

    invoke-virtual {v0}, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->showPictureDialog()V

    goto :goto_0

    .line 655
    :cond_2
    sget v0, Lcom/cnlaunch/golo3/message/R$drawable;->mode_file:I

    int-to-long v0, v0

    cmp-long v0, p3, v0

    if-nez v0, :cond_0

    .line 656
    iget-object v0, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment$GlobalClick;->this$0:Lcom/cnlaunch/newgolo/fragment/MessageFragment;

    invoke-virtual {v0}, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->showFileDialog()V

    goto :goto_0
.end method
