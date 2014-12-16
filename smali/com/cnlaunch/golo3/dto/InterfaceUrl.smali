.class public Lcom/cnlaunch/golo3/dto/InterfaceUrl;
.super Ljava/lang/Object;
.source "InterfaceUrl.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x2b0a917efb3e6689L


# instance fields
.field private key:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/cnlaunch/golo3/dto/InterfaceUrl;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/cnlaunch/golo3/dto/InterfaceUrl;->value:Ljava/lang/String;

    return-object v0
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0
    .parameter "key"

    .prologue
    .line 17
    iput-object p1, p0, Lcom/cnlaunch/golo3/dto/InterfaceUrl;->key:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 23
    iput-object p1, p0, Lcom/cnlaunch/golo3/dto/InterfaceUrl;->value:Ljava/lang/String;

    .line 24
    return-void
.end method
