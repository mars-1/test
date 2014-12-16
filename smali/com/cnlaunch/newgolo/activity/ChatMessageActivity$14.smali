.class Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$14;
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
    iput-object p1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$14;->this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;

    .line 1347
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "event"

    .prologue
    .line 1351
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$14;->this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;

    invoke-virtual {v0, p2}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->moveFloatWindow(Landroid/view/MotionEvent;)V

    .line 1352
    const/4 v0, 0x1

    return v0
.end method
