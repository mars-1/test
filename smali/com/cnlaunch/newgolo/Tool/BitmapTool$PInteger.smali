.class public Lcom/cnlaunch/newgolo/Tool/BitmapTool$PInteger;
.super Ljava/lang/Object;
.source "BitmapTool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/newgolo/Tool/BitmapTool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PInteger"
.end annotation


# instance fields
.field public length:Ljava/lang/Integer;

.field public progress:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 673
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 674
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/newgolo/Tool/BitmapTool$PInteger;->length:Ljava/lang/Integer;

    .line 675
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/newgolo/Tool/BitmapTool$PInteger;->progress:Ljava/lang/Integer;

    .line 673
    return-void
.end method
