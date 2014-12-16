.class public Lcom/cnlaunch/framework/utils/location/LocationResults;
.super Ljava/lang/Object;
.source "LocationResults.java"


# instance fields
.field private formatted_address:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFormatted_address()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/cnlaunch/framework/utils/location/LocationResults;->formatted_address:Ljava/lang/String;

    return-object v0
.end method

.method public setFormatted_address(Ljava/lang/String;)V
    .locals 0
    .parameter "formatted_address"

    .prologue
    .line 26
    iput-object p1, p0, Lcom/cnlaunch/framework/utils/location/LocationResults;->formatted_address:Ljava/lang/String;

    .line 27
    return-void
.end method
