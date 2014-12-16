.class Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$FloatonClick;
.super Ljava/lang/Object;
.source "ChatMessageActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FloatonClick"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;


# direct methods
.method private constructor <init>(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1506
    iput-object p1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$FloatonClick;->this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$FloatonClick;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1506
    invoke-direct {p0, p1}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$FloatonClick;-><init>(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .parameter "v"

    .prologue
    const/16 v4, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1510
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v7

    .line 1511
    .local v7, id:I
    sget v0, Lcom/cnlaunch/golo3/message/R$id;->msg_floating_half_full:I

    if-ne v7, v0, :cond_2

    .line 1512
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$FloatonClick;->this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;

    #calls: Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->getScreenHeight()I
    invoke-static {v0}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->access$20(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)I

    move-result v8

    .line 1513
    .local v8, screenHeight:I
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$FloatonClick;->this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;

    #getter for: Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->wmParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v0}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->access$21(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    if-ge v0, v8, :cond_1

    .line 1514
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$FloatonClick;->this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;

    #getter for: Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->wmParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v0}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->access$21(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput v8, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1515
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$FloatonClick;->this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;

    #getter for: Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->halfFull:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->access$22(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1516
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$FloatonClick;->this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;

    #getter for: Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->halfFull:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->access$22(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)Landroid/widget/ImageView;

    move-result-object v0

    sget v2, Lcom/cnlaunch/golo3/message/R$drawable;->msg_floating_half:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1522
    :goto_0
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$FloatonClick;->this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;

    #getter for: Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->mWindowManager:Landroid/view/WindowManager;
    invoke-static {v0}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->access$23(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v2, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$FloatonClick;->this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;

    #getter for: Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->vFloatingWindow:Landroid/view/View;
    invoke-static {v2}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->access$14(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$FloatonClick;->this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;

    #getter for: Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->wmParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v3}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->access$21(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1564
    .end local v8           #screenHeight:I
    :cond_0
    :goto_1
    return-void

    .line 1518
    .restart local v8       #screenHeight:I
    :cond_1
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$FloatonClick;->this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;

    #getter for: Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->wmParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v0}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->access$21(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    div-int/lit8 v2, v8, 0x2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1519
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$FloatonClick;->this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;

    #getter for: Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->halfFull:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->access$22(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1520
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$FloatonClick;->this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;

    #getter for: Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->halfFull:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->access$22(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)Landroid/widget/ImageView;

    move-result-object v0

    sget v2, Lcom/cnlaunch/golo3/message/R$drawable;->msg_floating_full:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 1523
    .end local v8           #screenHeight:I
    :cond_2
    sget v0, Lcom/cnlaunch/golo3/message/R$id;->msg_floating_zoom:I

    if-ne v7, v0, :cond_5

    .line 1524
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$FloatonClick;->this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;

    #getter for: Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->body:Landroid/view/View;
    invoke-static {v0}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->access$24(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1525
    sput-boolean v2, Lcom/cnlaunch/newgolo/task/ReceiveTask;->isAutoPlay:Z

    .line 1526
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$FloatonClick;->this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;

    #getter for: Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->wmParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v0}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->access$21(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v2, -0x2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1527
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$FloatonClick;->this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;

    #getter for: Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->voice:Landroid/widget/Button;
    invoke-static {v0}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->access$25(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 1528
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$FloatonClick;->this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;

    #getter for: Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->body:Landroid/view/View;
    invoke-static {v0}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->access$24(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1529
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$FloatonClick;->this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;

    #getter for: Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->halfFull:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->access$22(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1530
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$FloatonClick;->this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;

    #getter for: Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->zoom:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->access$26(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)Landroid/widget/ImageView;

    move-result-object v0

    sget v2, Lcom/cnlaunch/golo3/message/R$drawable;->msg_floating_room_out:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1544
    :goto_2
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$FloatonClick;->this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;

    #getter for: Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->mWindowManager:Landroid/view/WindowManager;
    invoke-static {v0}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->access$23(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v2, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$FloatonClick;->this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;

    #getter for: Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->vFloatingWindow:Landroid/view/View;
    invoke-static {v2}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->access$14(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$FloatonClick;->this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;

    #getter for: Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->wmParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v3}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->access$21(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 1532
    :cond_3
    sput-boolean v3, Lcom/cnlaunch/newgolo/task/ReceiveTask;->isAutoPlay:Z

    .line 1533
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$FloatonClick;->this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;

    #getter for: Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->voice:Landroid/widget/Button;
    invoke-static {v0}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->access$25(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 1534
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$FloatonClick;->this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;

    #getter for: Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->halfFull:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->access$22(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1535
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$FloatonClick;->this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;

    #getter for: Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->wmParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v0}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->access$21(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget-object v2, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$FloatonClick;->this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;

    #calls: Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->getScreenHeight()I
    invoke-static {v2}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->access$20(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)I

    move-result v2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1539
    :goto_3
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$FloatonClick;->this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;

    #getter for: Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->body:Landroid/view/View;
    invoke-static {v0}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->access$24(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1540
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$FloatonClick;->this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;

    #getter for: Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->halfFull:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->access$22(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1541
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$FloatonClick;->this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;

    #getter for: Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->zoom:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->access$26(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)Landroid/widget/ImageView;

    move-result-object v0

    sget v2, Lcom/cnlaunch/golo3/message/R$drawable;->msg_floating_room_in:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1542
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$FloatonClick;->this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;

    #getter for: Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->wmParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v0}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->access$21(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/16 v2, 0x53

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto :goto_2

    .line 1537
    :cond_4
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$FloatonClick;->this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;

    #getter for: Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->wmParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v0}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->access$21(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget-object v2, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$FloatonClick;->this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;

    #calls: Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->getScreenHeight()I
    invoke-static {v2}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->access$20(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_3

    .line 1545
    :cond_5
    sget v0, Lcom/cnlaunch/golo3/message/R$id;->msg_add:I

    if-ne v7, v0, :cond_6

    .line 1546
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$FloatonClick;->this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;

    #calls: Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->fdisplayOrHidenSubView()V
    invoke-static {v0}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->access$27(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)V

    goto/16 :goto_1

    .line 1547
    :cond_6
    sget v0, Lcom/cnlaunch/golo3/message/R$id;->msg_voice:I

    if-ne v7, v0, :cond_7

    .line 1548
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$FloatonClick;->this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;

    #calls: Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->fshowVoiceBar()V
    invoke-static {v0}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->access$28(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)V

    goto/16 :goto_1

    .line 1549
    :cond_7
    sget v0, Lcom/cnlaunch/golo3/message/R$id;->msg_show_text_btn:I

    if-ne v7, v0, :cond_8

    .line 1550
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$FloatonClick;->this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;

    #calls: Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->fshowSendBar()V
    invoke-static {v0}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->access$29(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)V

    goto/16 :goto_1

    .line 1551
    :cond_8
    sget v0, Lcom/cnlaunch/golo3/message/R$id;->msg_send:I

    if-ne v7, v0, :cond_9

    .line 1552
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$FloatonClick;->this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;

    #getter for: Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->fContentTxt:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->access$30(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1553
    .local v1, content:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1554
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$FloatonClick;->this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;

    #getter for: Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->mLaunchIMManager:Lcom/cnlaunch/newgolo/manager/LaunchIMManager;
    invoke-static {v0}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->access$9(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)Lcom/cnlaunch/newgolo/manager/LaunchIMManager;

    move-result-object v0

    .line 1555
    iget-object v2, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$FloatonClick;->this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;

    #getter for: Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->currentChatRoom:Lcom/cnlaunch/newgolo/model/ChatRoom;
    invoke-static {v2}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->access$10(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)Lcom/cnlaunch/newgolo/model/ChatRoom;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cnlaunch/newgolo/model/ChatRoom;->getId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$FloatonClick;->this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;

    #getter for: Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->currentChatRoom:Lcom/cnlaunch/newgolo/model/ChatRoom;
    invoke-static {v3}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->access$10(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)Lcom/cnlaunch/newgolo/model/ChatRoom;

    move-result-object v3

    iget-wide v3, v3, Lcom/cnlaunch/newgolo/model/ChatRoom;->publicGroupId:J

    .line 1556
    iget-object v5, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$FloatonClick;->this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;

    #getter for: Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->currentChatRoom:Lcom/cnlaunch/newgolo/model/ChatRoom;
    invoke-static {v5}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->access$10(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)Lcom/cnlaunch/newgolo/model/ChatRoom;

    move-result-object v5

    iget-object v5, v5, Lcom/cnlaunch/newgolo/model/ChatRoom;->publicGroupName:Ljava/lang/String;

    const/4 v6, 0x0

    .line 1554
    invoke-virtual/range {v0 .. v6}, Lcom/cnlaunch/newgolo/manager/LaunchIMManager;->sendTxtMessage(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Lcom/cnlaunch/newgolo/model/ICallback;)Z

    .line 1557
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$FloatonClick;->this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;

    #getter for: Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->fContentTxt:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->access$30(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)Landroid/widget/EditText;

    move-result-object v0

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 1559
    .end local v1           #content:Ljava/lang/String;
    :cond_9
    sget v0, Lcom/cnlaunch/golo3/message/R$id;->msg_floating_exit:I

    if-ne v7, v0, :cond_0

    .line 1560
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$FloatonClick;->this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;

    invoke-virtual {v0}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->exitFloating()V

    goto/16 :goto_1
.end method
