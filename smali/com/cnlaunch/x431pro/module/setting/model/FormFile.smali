.class public Lcom/cnlaunch/x431pro/module/setting/model/FormFile;
.super Ljava/lang/Object;
.source "FormFile.java"


# instance fields
.field private contentType:Ljava/lang/String;

.field private data:[B

.field private file:Ljava/io/File;

.field private filname:Ljava/lang/String;

.field private inStream:Ljava/io/InputStream;

.field private parameterName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "filname"
    .parameter "file"
    .parameter "parameterName"
    .parameter "contentType"

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-string/jumbo v1, "application/octet-stream"

    iput-object v1, p0, Lcom/cnlaunch/x431pro/module/setting/model/FormFile;->contentType:Ljava/lang/String;

    .line 33
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/setting/model/FormFile;->filname:Ljava/lang/String;

    .line 34
    iput-object p3, p0, Lcom/cnlaunch/x431pro/module/setting/model/FormFile;->parameterName:Ljava/lang/String;

    .line 35
    iput-object p2, p0, Lcom/cnlaunch/x431pro/module/setting/model/FormFile;->file:Ljava/io/File;

    .line 37
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iput-object v1, p0, Lcom/cnlaunch/x431pro/module/setting/model/FormFile;->inStream:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    :goto_0
    if-eqz p4, :cond_0

    .line 42
    iput-object p4, p0, Lcom/cnlaunch/x431pro/module/setting/model/FormFile;->contentType:Ljava/lang/String;

    .line 43
    :cond_0
    return-void

    .line 38
    :catch_0
    move-exception v0

    .line 39
    .local v0, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "filname"
    .parameter "data"
    .parameter "parameterName"
    .parameter "contentType"

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-string/jumbo v0, "application/octet-stream"

    iput-object v0, p0, Lcom/cnlaunch/x431pro/module/setting/model/FormFile;->contentType:Ljava/lang/String;

    .line 25
    iput-object p2, p0, Lcom/cnlaunch/x431pro/module/setting/model/FormFile;->data:[B

    .line 26
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/setting/model/FormFile;->filname:Ljava/lang/String;

    .line 27
    iput-object p3, p0, Lcom/cnlaunch/x431pro/module/setting/model/FormFile;->parameterName:Ljava/lang/String;

    .line 28
    if-eqz p4, :cond_0

    .line 29
    iput-object p4, p0, Lcom/cnlaunch/x431pro/module/setting/model/FormFile;->contentType:Ljava/lang/String;

    .line 30
    :cond_0
    return-void
.end method


# virtual methods
.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/setting/model/FormFile;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public getData()[B
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/setting/model/FormFile;->data:[B

    return-object v0
.end method

.method public getFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/setting/model/FormFile;->file:Ljava/io/File;

    return-object v0
.end method

.method public getFilname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/setting/model/FormFile;->filname:Ljava/lang/String;

    return-object v0
.end method

.method public getInStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/setting/model/FormFile;->inStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public getParameterName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/setting/model/FormFile;->parameterName:Ljava/lang/String;

    return-object v0
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 0
    .parameter "contentType"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/setting/model/FormFile;->contentType:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public setFilname(Ljava/lang/String;)V
    .locals 0
    .parameter "filname"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/setting/model/FormFile;->filname:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setParameterName(Ljava/lang/String;)V
    .locals 0
    .parameter "parameterName"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/setting/model/FormFile;->parameterName:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "FormFile [data="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/setting/model/FormFile;->data:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", inStream="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/setting/model/FormFile;->inStream:Ljava/io/InputStream;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", file="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/setting/model/FormFile;->file:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", filname="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/setting/model/FormFile;->filname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", parameterName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 84
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/setting/model/FormFile;->parameterName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", contentType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/setting/model/FormFile;->contentType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 83
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
