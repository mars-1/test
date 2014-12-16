.class public Lcom/cnlaunch/framework/network/http/SyncHttpTransportSE;
.super Lorg/ksoap2/transport/HttpTransportSE;
.source "SyncHttpTransportSE.java"


# static fields
.field public static timeout:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/16 v0, 0x7530

    sput v0, Lcom/cnlaunch/framework/network/http/SyncHttpTransportSE;->timeout:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lorg/ksoap2/transport/HttpTransportSE;-><init>(Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .parameter "url"
    .parameter "timeout"

    .prologue
    const/16 v0, 0x7530

    .line 34
    invoke-direct {p0, p1}, Lorg/ksoap2/transport/HttpTransportSE;-><init>(Ljava/lang/String;)V

    .line 35
    if-gt p2, v0, :cond_0

    .line 36
    sput v0, Lcom/cnlaunch/framework/network/http/SyncHttpTransportSE;->timeout:I

    .line 40
    :goto_0
    return-void

    .line 38
    :cond_0
    sput p2, Lcom/cnlaunch/framework/network/http/SyncHttpTransportSE;->timeout:I

    goto :goto_0
.end method


# virtual methods
.method public getServiceConnection()Lorg/ksoap2/transport/ServiceConnection;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44
    new-instance v0, Lorg/ksoap2/transport/ServiceConnectionSE;

    iget-object v1, p0, Lcom/cnlaunch/framework/network/http/SyncHttpTransportSE;->url:Ljava/lang/String;

    sget v2, Lcom/cnlaunch/framework/network/http/SyncHttpTransportSE;->timeout:I

    invoke-direct {v0, v1, v2}, Lorg/ksoap2/transport/ServiceConnectionSE;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method
