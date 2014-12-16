.class public Lcom/cnlaunch/framework/utils/location/LocationResponse;
.super Ljava/lang/Object;
.source "LocationResponse.java"


# instance fields
.field private results:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/framework/utils/location/LocationResults;",
            ">;"
        }
    .end annotation
.end field

.field private status:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getResults()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/framework/utils/location/LocationResults;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    iget-object v0, p0, Lcom/cnlaunch/framework/utils/location/LocationResponse;->results:Ljava/util/List;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/cnlaunch/framework/utils/location/LocationResponse;->status:Ljava/lang/String;

    return-object v0
.end method

.method public setResults(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/framework/utils/location/LocationResults;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p1, results:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/framework/utils/location/LocationResults;>;"
    iput-object p1, p0, Lcom/cnlaunch/framework/utils/location/LocationResponse;->results:Ljava/util/List;

    .line 39
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0
    .parameter "status"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/cnlaunch/framework/utils/location/LocationResponse;->status:Ljava/lang/String;

    .line 31
    return-void
.end method
