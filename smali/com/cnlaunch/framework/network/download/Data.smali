.class public Lcom/cnlaunch/framework/network/download/Data;
.super Ljava/lang/Object;
.source "Data.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x20db1ee16bb271e6L


# instance fields
.field private downUrl:Ljava/lang/String;

.field private md5SignStr:Ljava/lang/String;

.field private softLength:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDownUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/cnlaunch/framework/network/download/Data;->downUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getMd5SignStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/cnlaunch/framework/network/download/Data;->md5SignStr:Ljava/lang/String;

    return-object v0
.end method

.method public getSoftLength()J
    .locals 2

    .prologue
    .line 27
    iget-wide v0, p0, Lcom/cnlaunch/framework/network/download/Data;->softLength:J

    return-wide v0
.end method

.method public setDownUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "downUrl"

    .prologue
    .line 16
    iput-object p1, p0, Lcom/cnlaunch/framework/network/download/Data;->downUrl:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public setMd5SignStr(Ljava/lang/String;)V
    .locals 0
    .parameter "md5SignStr"

    .prologue
    .line 23
    iput-object p1, p0, Lcom/cnlaunch/framework/network/download/Data;->md5SignStr:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public setSoftLength(J)V
    .locals 0
    .parameter "softLength"

    .prologue
    .line 30
    iput-wide p1, p0, Lcom/cnlaunch/framework/network/download/Data;->softLength:J

    .line 31
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Data [downUrl="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    iget-object v1, p0, Lcom/cnlaunch/framework/network/download/Data;->downUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", md5SignStr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/framework/network/download/Data;->md5SignStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", softLength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/cnlaunch/framework/network/download/Data;->softLength:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
