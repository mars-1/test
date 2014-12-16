.class public Lcom/cnlaunch/diagnosemodule/bean/PageInteractiveData;
.super Ljava/lang/Object;
.source "PageInteractiveData.java"


# instance fields
.field private data:[B

.field private packageId:B

.field private packageType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/cnlaunch/diagnosemodule/bean/PageInteractiveData;->data:[B

    return-object v0
.end method

.method public getPackageId()B
    .locals 1

    .prologue
    .line 13
    iget-byte v0, p0, Lcom/cnlaunch/diagnosemodule/bean/PageInteractiveData;->packageId:B

    return v0
.end method

.method public getPackageType()I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcom/cnlaunch/diagnosemodule/bean/PageInteractiveData;->packageType:I

    return v0
.end method

.method public setData([B)V
    .locals 0
    .parameter "data"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/cnlaunch/diagnosemodule/bean/PageInteractiveData;->data:[B

    .line 34
    return-void
.end method

.method public setPackageId(B)V
    .locals 0
    .parameter "packageId"

    .prologue
    .line 17
    iput-byte p1, p0, Lcom/cnlaunch/diagnosemodule/bean/PageInteractiveData;->packageId:B

    .line 18
    return-void
.end method

.method public setPackageType(I)V
    .locals 0
    .parameter "packageType"

    .prologue
    .line 25
    iput p1, p0, Lcom/cnlaunch/diagnosemodule/bean/PageInteractiveData;->packageType:I

    .line 26
    return-void
.end method
