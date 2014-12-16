.class public Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$FileSizeOverflowException;
.super Ljava/io/IOException;
.source "DiagnoseLogUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FileSizeOverflowException"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x5f132648cd3ac278L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 1086
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 1087
    return-void
.end method
