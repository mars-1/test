.class public Lcom/cnlaunch/physics/entity/DPUSoftInfo;
.super Ljava/lang/Object;
.source "DPUSoftInfo.java"


# static fields
.field public static BOOT_VERSION:Ljava/lang/String;

.field public static DIAFNOSE_SOFT_VERSION:Ljava/lang/String;

.field public static DOWNLOAD_VERSION:Ljava/lang/String;

.field public static PRODUCT_FUNCTION_VERSION:Ljava/lang/String;


# instance fields
.field private bootVersion:Ljava/lang/String;

.field private diagnoseSoftVersion:Ljava/lang/String;

.field private downloadSersion:Ljava/lang/String;

.field private productFunctionVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-string/jumbo v0, "bootVersion"

    sput-object v0, Lcom/cnlaunch/physics/entity/DPUSoftInfo;->BOOT_VERSION:Ljava/lang/String;

    .line 10
    const-string/jumbo v0, "downloadSersion"

    sput-object v0, Lcom/cnlaunch/physics/entity/DPUSoftInfo;->DOWNLOAD_VERSION:Ljava/lang/String;

    .line 11
    const-string/jumbo v0, "diagnoseSoftVersion"

    sput-object v0, Lcom/cnlaunch/physics/entity/DPUSoftInfo;->DIAFNOSE_SOFT_VERSION:Ljava/lang/String;

    .line 12
    const-string/jumbo v0, "productFunctionVersion"

    sput-object v0, Lcom/cnlaunch/physics/entity/DPUSoftInfo;->PRODUCT_FUNCTION_VERSION:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    .local p1, info:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    .line 26
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/cnlaunch/physics/entity/DPUSoftInfo;->bootVersion:Ljava/lang/String;

    .line 27
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/cnlaunch/physics/entity/DPUSoftInfo;->downloadSersion:Ljava/lang/String;

    .line 28
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/cnlaunch/physics/entity/DPUSoftInfo;->diagnoseSoftVersion:Ljava/lang/String;

    .line 29
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/cnlaunch/physics/entity/DPUSoftInfo;->productFunctionVersion:Ljava/lang/String;

    .line 31
    :cond_0
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 2
    .parameter "info"

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    if-eqz p1, :cond_0

    array-length v0, p1

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    .line 34
    const/4 v0, 0x0

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/cnlaunch/physics/entity/DPUSoftInfo;->bootVersion:Ljava/lang/String;

    .line 35
    const/4 v0, 0x1

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/cnlaunch/physics/entity/DPUSoftInfo;->downloadSersion:Ljava/lang/String;

    .line 36
    const/4 v0, 0x2

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/cnlaunch/physics/entity/DPUSoftInfo;->diagnoseSoftVersion:Ljava/lang/String;

    .line 37
    const/4 v0, 0x3

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/cnlaunch/physics/entity/DPUSoftInfo;->productFunctionVersion:Ljava/lang/String;

    .line 39
    :cond_0
    return-void
.end method


# virtual methods
.method public getBootVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/cnlaunch/physics/entity/DPUSoftInfo;->bootVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getDiagnoseSoftVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/cnlaunch/physics/entity/DPUSoftInfo;->diagnoseSoftVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadSersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/cnlaunch/physics/entity/DPUSoftInfo;->downloadSersion:Ljava/lang/String;

    return-object v0
.end method

.method public getProductFunctionVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/cnlaunch/physics/entity/DPUSoftInfo;->productFunctionVersion:Ljava/lang/String;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/cnlaunch/physics/entity/DPUSoftInfo;->bootVersion:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cnlaunch/physics/entity/DPUSoftInfo;->downloadSersion:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cnlaunch/physics/entity/DPUSoftInfo;->diagnoseSoftVersion:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cnlaunch/physics/entity/DPUSoftInfo;->productFunctionVersion:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    const/4 v0, 0x1

    .line 70
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setBootVersion(Ljava/lang/String;)V
    .locals 0
    .parameter "bootVersion"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/cnlaunch/physics/entity/DPUSoftInfo;->bootVersion:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setDiagnoseSoftVersion(Ljava/lang/String;)V
    .locals 0
    .parameter "diagnoseSoftVersion"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/cnlaunch/physics/entity/DPUSoftInfo;->diagnoseSoftVersion:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setDownloadSersion(Ljava/lang/String;)V
    .locals 0
    .parameter "downloadSersion"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/cnlaunch/physics/entity/DPUSoftInfo;->downloadSersion:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public setProductFunctionVersion(Ljava/lang/String;)V
    .locals 0
    .parameter "productFunctionVersion"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/cnlaunch/physics/entity/DPUSoftInfo;->productFunctionVersion:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "DPUSoftInfo [bootVersion="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cnlaunch/physics/entity/DPUSoftInfo;->bootVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", downloadSersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 75
    iget-object v1, p0, Lcom/cnlaunch/physics/entity/DPUSoftInfo;->downloadSersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", diagnoseSoftVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 76
    iget-object v1, p0, Lcom/cnlaunch/physics/entity/DPUSoftInfo;->diagnoseSoftVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", productFunctionVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 77
    iget-object v1, p0, Lcom/cnlaunch/physics/entity/DPUSoftInfo;->productFunctionVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 74
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
