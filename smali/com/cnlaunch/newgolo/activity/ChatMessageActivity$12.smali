.class Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$12;
.super Ljava/lang/Object;
.source "ChatMessageActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final SPAN_MAX:I = 0xa


# instance fields
.field private pressDown:Z

.field private startY:F

.field final synthetic this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;


# direct methods
.method constructor <init>(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$12;->this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;

    .line 528
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 535
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 552
    :pswitch_0
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$12;->this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;

    #setter for: Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->isTouched:Z
    invoke-static {v0, v1}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->access$32(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;Z)V

    .line 555
    :goto_0
    return v2

    .line 537
    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$12;->startY:F

    .line 538
    iput-boolean v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$12;->pressDown:Z

    goto :goto_0

    .line 542
    :pswitch_2
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$12;->this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;

    #setter for: Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->isTouched:Z
    invoke-static {v0, v2}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->access$32(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;Z)V

    .line 543
    iget-boolean v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$12;->pressDown:Z

    if-eqz v0, :cond_0

    .line 544
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$12;->startY:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x4120

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 545
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$12;->this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;

    invoke-virtual {v0}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->hidenMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 546
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$12;->this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;

    #getter for: Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->mChatMessageAdapter:Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;
    invoke-static {v0}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->access$4(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->notifyDataSetChanged()V

    .line 549
    :cond_0
    iput-boolean v2, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$12;->pressDown:Z

    goto :goto_0

    .line 535
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
