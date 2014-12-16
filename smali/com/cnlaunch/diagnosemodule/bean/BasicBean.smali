.class public Lcom/cnlaunch/diagnosemodule/bean/BasicBean;
.super Ljava/lang/Object;
.source "BasicBean.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x35e8c753a03ada0cL

.field public static type:Ljava/lang/String;

.field public static version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/cnlaunch/diagnosemodule/bean/BasicBean;->type:Ljava/lang/String;

    return-object v0
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/cnlaunch/diagnosemodule/bean/BasicBean;->version:Ljava/lang/String;

    return-object v0
.end method

.method public static setType(Ljava/lang/String;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 25
    sput-object p0, Lcom/cnlaunch/diagnosemodule/bean/BasicBean;->type:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public static setVersion(Ljava/lang/String;)V
    .locals 0
    .parameter "version"

    .prologue
    .line 17
    sput-object p0, Lcom/cnlaunch/diagnosemodule/bean/BasicBean;->version:Ljava/lang/String;

    .line 18
    return-void
.end method
