.class Lorg/vudroid/core/DocumentView$1;
.super Ljava/lang/Object;
.source "DocumentView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/vudroid/core/DocumentView;->onScrollChanged(IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/vudroid/core/DocumentView;


# direct methods
.method constructor <init>(Lorg/vudroid/core/DocumentView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/vudroid/core/DocumentView$1;->this$0:Lorg/vudroid/core/DocumentView;

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lorg/vudroid/core/DocumentView$1;->this$0:Lorg/vudroid/core/DocumentView;

    #getter for: Lorg/vudroid/core/DocumentView;->currentPageModel:Lorg/vudroid/core/models/CurrentPageModel;
    invoke-static {v0}, Lorg/vudroid/core/DocumentView;->access$0(Lorg/vudroid/core/DocumentView;)Lorg/vudroid/core/models/CurrentPageModel;

    move-result-object v0

    iget-object v1, p0, Lorg/vudroid/core/DocumentView$1;->this$0:Lorg/vudroid/core/DocumentView;

    invoke-virtual {v1}, Lorg/vudroid/core/DocumentView;->getCurrentPage()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/vudroid/core/models/CurrentPageModel;->setCurrentPageIndex(I)V

    .line 96
    return-void
.end method
