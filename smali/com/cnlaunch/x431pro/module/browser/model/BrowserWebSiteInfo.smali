.class public Lcom/cnlaunch/x431pro/module/browser/model/BrowserWebSiteInfo;
.super Lcom/cnlaunch/x431pro/module/base/BaseModel;
.source "BrowserWebSiteInfo.java"


# static fields
.field private static final serialVersionUID:J = 0x7357229e5672c446L


# instance fields
.field private imageResid:I

.field private webSite:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/module/base/BaseModel;-><init>()V

    return-void
.end method


# virtual methods
.method public getImageResid()I
    .locals 1

    .prologue
    .line 15
    iget v0, p0, Lcom/cnlaunch/x431pro/module/browser/model/BrowserWebSiteInfo;->imageResid:I

    return v0
.end method

.method public getWebSite()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/browser/model/BrowserWebSiteInfo;->webSite:Ljava/lang/String;

    return-object v0
.end method

.method public setImageResid(I)V
    .locals 0
    .parameter "imageResid"

    .prologue
    .line 19
    iput p1, p0, Lcom/cnlaunch/x431pro/module/browser/model/BrowserWebSiteInfo;->imageResid:I

    .line 20
    return-void
.end method

.method public setWebSite(Ljava/lang/String;)V
    .locals 0
    .parameter "webSite"

    .prologue
    .line 27
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/browser/model/BrowserWebSiteInfo;->webSite:Ljava/lang/String;

    .line 28
    return-void
.end method
