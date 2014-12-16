.class Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$16;
.super Ljava/lang/Object;
.source "ChatMessageActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->initFloatView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;


# direct methods
.method constructor <init>(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$16;->this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;

    .line 1385
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "v"
    .parameter "event"

    .prologue
    const v1, 0x40020

    const/4 v3, 0x0

    .line 1388
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$16;->this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;

    #getter for: Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->wmParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v0}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->access$21(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    if-eq v0, v1, :cond_0

    .line 1390
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$16;->this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;

    #getter for: Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->wmParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v0}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->access$21(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1392
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$16;->this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;

    #getter for: Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->mWindowManager:Landroid/view/WindowManager;
    invoke-static {v0}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->access$23(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$16;->this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;

    #getter for: Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->vFloatingWindow:Landroid/view/View;
    invoke-static {v1}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->access$14(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$16;->this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;

    #getter for: Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->wmParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v2}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->access$21(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1394
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 1395
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$16;->this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;

    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$16;->this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;

    #getter for: Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->fContentTxt:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->access$30(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->showKeyboard(Landroid/view/View;)V

    .line 1398
    :cond_1
    return v3
.end method
