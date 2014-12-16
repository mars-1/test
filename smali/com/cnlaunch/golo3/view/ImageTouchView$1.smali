.class Lcom/cnlaunch/golo3/view/ImageTouchView$1;
.super Ljava/lang/Object;
.source "ImageTouchView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/golo3/view/ImageTouchView;->constructData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/golo3/view/ImageTouchView;


# direct methods
.method constructor <init>(Lcom/cnlaunch/golo3/view/ImageTouchView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/golo3/view/ImageTouchView$1;->this$0:Lcom/cnlaunch/golo3/view/ImageTouchView;

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/cnlaunch/golo3/view/ImageTouchView$1;->this$0:Lcom/cnlaunch/golo3/view/ImageTouchView;

    #getter for: Lcom/cnlaunch/golo3/view/ImageTouchView;->mListener:Lcom/cnlaunch/golo3/view/ImageTouchView$ImageTouchListener;
    invoke-static {v0}, Lcom/cnlaunch/golo3/view/ImageTouchView;->access$6(Lcom/cnlaunch/golo3/view/ImageTouchView;)Lcom/cnlaunch/golo3/view/ImageTouchView$ImageTouchListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/cnlaunch/golo3/view/ImageTouchView$1;->this$0:Lcom/cnlaunch/golo3/view/ImageTouchView;

    #getter for: Lcom/cnlaunch/golo3/view/ImageTouchView;->mListener:Lcom/cnlaunch/golo3/view/ImageTouchView$ImageTouchListener;
    invoke-static {v0}, Lcom/cnlaunch/golo3/view/ImageTouchView;->access$6(Lcom/cnlaunch/golo3/view/ImageTouchView;)Lcom/cnlaunch/golo3/view/ImageTouchView$ImageTouchListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/cnlaunch/golo3/view/ImageTouchView$ImageTouchListener;->onLongClick()V

    .line 89
    :cond_0
    return-void
.end method
