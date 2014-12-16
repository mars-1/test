.class Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$13;
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
    iput-object p1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$13;->this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;

    .line 1316
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "event"

    .prologue
    const/16 v2, 0x28

    .line 1320
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 1321
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$13;->this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;

    #getter for: Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->wmParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v0}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->access$21(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    if-eq v0, v2, :cond_0

    .line 1324
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$13;->this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;

    #getter for: Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->wmParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v0}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->access$21(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1327
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$13;->this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;

    #getter for: Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->mWindowManager:Landroid/view/WindowManager;
    invoke-static {v0}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->access$23(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$13;->this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;

    #getter for: Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->vFloatingWindow:Landroid/view/View;
    invoke-static {v1}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->access$14(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)Landroid/view/View;

    move-result-object v1

    .line 1328
    iget-object v2, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$13;->this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;

    #getter for: Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->wmParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v2}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->access$21(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 1327
    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1331
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
