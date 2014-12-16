.class Lcom/cnlaunch/framework/network/http/RequestParams$StreamWrapper;
.super Ljava/lang/Object;
.source "RequestParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/framework/network/http/RequestParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StreamWrapper"
.end annotation


# instance fields
.field public contentType:Ljava/lang/String;

.field public inputStream:Ljava/io/InputStream;

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "inputStream"
    .parameter "name"
    .parameter "contentType"

    .prologue
    .line 486
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 487
    iput-object p1, p0, Lcom/cnlaunch/framework/network/http/RequestParams$StreamWrapper;->inputStream:Ljava/io/InputStream;

    .line 488
    iput-object p2, p0, Lcom/cnlaunch/framework/network/http/RequestParams$StreamWrapper;->name:Ljava/lang/String;

    .line 489
    iput-object p3, p0, Lcom/cnlaunch/framework/network/http/RequestParams$StreamWrapper;->contentType:Ljava/lang/String;

    .line 490
    return-void
.end method
