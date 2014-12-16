.class Lcom/cnlaunch/achartengineslim/DataStreamGraphicalView$2;
.super Ljava/lang/Object;
.source "DataStreamGraphicalView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/achartengineslim/DataStreamGraphicalView;->repaint(IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/achartengineslim/DataStreamGraphicalView;

.field private final synthetic val$bottom:I

.field private final synthetic val$left:I

.field private final synthetic val$right:I

.field private final synthetic val$top:I


# direct methods
.method constructor <init>(Lcom/cnlaunch/achartengineslim/DataStreamGraphicalView;IIII)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/achartengineslim/DataStreamGraphicalView$2;->this$0:Lcom/cnlaunch/achartengineslim/DataStreamGraphicalView;

    iput p2, p0, Lcom/cnlaunch/achartengineslim/DataStreamGraphicalView$2;->val$left:I

    iput p3, p0, Lcom/cnlaunch/achartengineslim/DataStreamGraphicalView$2;->val$top:I

    iput p4, p0, Lcom/cnlaunch/achartengineslim/DataStreamGraphicalView$2;->val$right:I

    iput p5, p0, Lcom/cnlaunch/achartengineslim/DataStreamGraphicalView$2;->val$bottom:I

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 92
    iget-object v0, p0, Lcom/cnlaunch/achartengineslim/DataStreamGraphicalView$2;->this$0:Lcom/cnlaunch/achartengineslim/DataStreamGraphicalView;

    iget v1, p0, Lcom/cnlaunch/achartengineslim/DataStreamGraphicalView$2;->val$left:I

    iget v2, p0, Lcom/cnlaunch/achartengineslim/DataStreamGraphicalView$2;->val$top:I

    iget v3, p0, Lcom/cnlaunch/achartengineslim/DataStreamGraphicalView$2;->val$right:I

    iget v4, p0, Lcom/cnlaunch/achartengineslim/DataStreamGraphicalView$2;->val$bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/cnlaunch/achartengineslim/DataStreamGraphicalView;->invalidate(IIII)V

    .line 93
    return-void
.end method
