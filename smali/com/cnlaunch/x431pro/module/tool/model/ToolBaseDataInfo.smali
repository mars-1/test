.class public Lcom/cnlaunch/x431pro/module/tool/model/ToolBaseDataInfo;
.super Lcom/cnlaunch/x431pro/module/base/BaseModel;
.source "ToolBaseDataInfo.java"


# static fields
.field private static final serialVersionUID:J = 0x2d2c28a830d1ab05L


# instance fields
.field private clsName:Ljava/lang/String;

.field private imageResid:I

.field private pkgeName:Ljava/lang/String;

.field private titleResid:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/module/base/BaseModel;-><init>()V

    return-void
.end method


# virtual methods
.method public getClsName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/tool/model/ToolBaseDataInfo;->clsName:Ljava/lang/String;

    return-object v0
.end method

.method public getImageResid()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/cnlaunch/x431pro/module/tool/model/ToolBaseDataInfo;->imageResid:I

    return v0
.end method

.method public getPkgeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/tool/model/ToolBaseDataInfo;->pkgeName:Ljava/lang/String;

    return-object v0
.end method

.method public getTitleResid()I
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lcom/cnlaunch/x431pro/module/tool/model/ToolBaseDataInfo;->titleResid:I

    return v0
.end method

.method public setClsName(Ljava/lang/String;)V
    .locals 0
    .parameter "clsName"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/tool/model/ToolBaseDataInfo;->clsName:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setImageResid(I)V
    .locals 0
    .parameter "imageResid"

    .prologue
    .line 31
    iput p1, p0, Lcom/cnlaunch/x431pro/module/tool/model/ToolBaseDataInfo;->imageResid:I

    .line 32
    return-void
.end method

.method public setPkgeName(Ljava/lang/String;)V
    .locals 0
    .parameter "pkgeName"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/tool/model/ToolBaseDataInfo;->pkgeName:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setTitleResid(I)V
    .locals 0
    .parameter "titleResid"

    .prologue
    .line 23
    iput p1, p0, Lcom/cnlaunch/x431pro/module/tool/model/ToolBaseDataInfo;->titleResid:I

    .line 24
    return-void
.end method
