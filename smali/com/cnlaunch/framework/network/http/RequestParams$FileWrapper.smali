.class Lcom/cnlaunch/framework/network/http/RequestParams$FileWrapper;
.super Ljava/lang/Object;
.source "RequestParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/framework/network/http/RequestParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FileWrapper"
.end annotation


# instance fields
.field public contentType:Ljava/lang/String;

.field public file:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 0
    .parameter "file"
    .parameter "contentType"

    .prologue
    .line 475
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 476
    iput-object p1, p0, Lcom/cnlaunch/framework/network/http/RequestParams$FileWrapper;->file:Ljava/io/File;

    .line 477
    iput-object p2, p0, Lcom/cnlaunch/framework/network/http/RequestParams$FileWrapper;->contentType:Ljava/lang/String;

    .line 478
    return-void
.end method
