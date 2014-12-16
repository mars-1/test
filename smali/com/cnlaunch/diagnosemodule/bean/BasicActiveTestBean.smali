.class public Lcom/cnlaunch/diagnosemodule/bean/BasicActiveTestBean;
.super Lcom/cnlaunch/diagnosemodule/bean/BasicBean;
.source "BasicActiveTestBean.java"


# instance fields
.field id:Ljava/lang/String;

.field title:Ljava/lang/String;

.field unit:Ljava/lang/String;

.field value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/cnlaunch/diagnosemodule/bean/BasicBean;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/cnlaunch/diagnosemodule/bean/BasicActiveTestBean;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/cnlaunch/diagnosemodule/bean/BasicActiveTestBean;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUnit()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/cnlaunch/diagnosemodule/bean/BasicActiveTestBean;->unit:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/cnlaunch/diagnosemodule/bean/BasicActiveTestBean;->value:Ljava/lang/String;

    return-object v0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 23
    iput-object p1, p0, Lcom/cnlaunch/diagnosemodule/bean/BasicActiveTestBean;->id:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 2
    .parameter "title"

    .prologue
    .line 29
    const-string/jumbo v0, "\n"

    const-string/jumbo v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/diagnosemodule/bean/BasicActiveTestBean;->title:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public setUnit(Ljava/lang/String;)V
    .locals 0
    .parameter "unit"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/cnlaunch/diagnosemodule/bean/BasicActiveTestBean;->unit:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 35
    const-string/jumbo v0, "\n"

    const-string/jumbo v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/diagnosemodule/bean/BasicActiveTestBean;->value:Ljava/lang/String;

    .line 36
    return-void
.end method
