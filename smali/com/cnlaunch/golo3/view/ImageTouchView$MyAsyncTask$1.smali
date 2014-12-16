.class Lcom/cnlaunch/golo3/view/ImageTouchView$MyAsyncTask$1;
.super Ljava/lang/Object;
.source "ImageTouchView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/golo3/view/ImageTouchView$MyAsyncTask;->onProgressUpdate([Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cnlaunch/golo3/view/ImageTouchView$MyAsyncTask;

.field private final synthetic val$values:[Ljava/lang/Integer;


# direct methods
.method constructor <init>(Lcom/cnlaunch/golo3/view/ImageTouchView$MyAsyncTask;[Ljava/lang/Integer;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/golo3/view/ImageTouchView$MyAsyncTask$1;->this$1:Lcom/cnlaunch/golo3/view/ImageTouchView$MyAsyncTask;

    iput-object p2, p0, Lcom/cnlaunch/golo3/view/ImageTouchView$MyAsyncTask$1;->val$values:[Ljava/lang/Integer;

    .line 448
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 451
    iget-object v0, p0, Lcom/cnlaunch/golo3/view/ImageTouchView$MyAsyncTask$1;->this$1:Lcom/cnlaunch/golo3/view/ImageTouchView$MyAsyncTask;

    #getter for: Lcom/cnlaunch/golo3/view/ImageTouchView$MyAsyncTask;->this$0:Lcom/cnlaunch/golo3/view/ImageTouchView;
    invoke-static {v0}, Lcom/cnlaunch/golo3/view/ImageTouchView$MyAsyncTask;->access$2(Lcom/cnlaunch/golo3/view/ImageTouchView$MyAsyncTask;)Lcom/cnlaunch/golo3/view/ImageTouchView;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/golo3/view/ImageTouchView$MyAsyncTask$1;->val$values:[Ljava/lang/Integer;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/cnlaunch/golo3/view/ImageTouchView$MyAsyncTask$1;->val$values:[Ljava/lang/Integer;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/cnlaunch/golo3/view/ImageTouchView$MyAsyncTask$1;->val$values:[Ljava/lang/Integer;

    const/4 v4, 0x2

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/cnlaunch/golo3/view/ImageTouchView$MyAsyncTask$1;->val$values:[Ljava/lang/Integer;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    #calls: Lcom/cnlaunch/golo3/view/ImageTouchView;->setFrame(IIII)Z
    invoke-static {v0, v1, v2, v3, v4}, Lcom/cnlaunch/golo3/view/ImageTouchView;->access$5(Lcom/cnlaunch/golo3/view/ImageTouchView;IIII)Z

    .line 452
    return-void
.end method
