.class Lorg/vudroid/core/PageTreeNode$1;
.super Ljava/lang/Object;
.source "PageTreeNode.java"

# interfaces
.implements Lorg/vudroid/core/DecodeService$DecodeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/vudroid/core/PageTreeNode;->decodePageTreeNode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/vudroid/core/PageTreeNode;


# direct methods
.method constructor <init>(Lorg/vudroid/core/PageTreeNode;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/vudroid/core/PageTreeNode$1;->this$0:Lorg/vudroid/core/PageTreeNode;

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lorg/vudroid/core/PageTreeNode$1;)Lorg/vudroid/core/PageTreeNode;
    .locals 1
    .parameter

    .prologue
    .line 138
    iget-object v0, p0, Lorg/vudroid/core/PageTreeNode$1;->this$0:Lorg/vudroid/core/PageTreeNode;

    return-object v0
.end method


# virtual methods
.method public decodeComplete(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "bitmap"

    .prologue
    .line 140
    iget-object v0, p0, Lorg/vudroid/core/PageTreeNode$1;->this$0:Lorg/vudroid/core/PageTreeNode;

    #getter for: Lorg/vudroid/core/PageTreeNode;->documentView:Lorg/vudroid/core/DocumentView;
    invoke-static {v0}, Lorg/vudroid/core/PageTreeNode;->access$0(Lorg/vudroid/core/PageTreeNode;)Lorg/vudroid/core/DocumentView;

    move-result-object v0

    new-instance v1, Lorg/vudroid/core/PageTreeNode$1$1;

    invoke-direct {v1, p0, p1}, Lorg/vudroid/core/PageTreeNode$1$1;-><init>(Lorg/vudroid/core/PageTreeNode$1;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Lorg/vudroid/core/DocumentView;->post(Ljava/lang/Runnable;)Z

    .line 149
    return-void
.end method
