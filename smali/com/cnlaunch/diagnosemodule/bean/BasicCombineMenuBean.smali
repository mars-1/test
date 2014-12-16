.class public Lcom/cnlaunch/diagnosemodule/bean/BasicCombineMenuBean;
.super Lcom/cnlaunch/diagnosemodule/bean/BasicBean;
.source "BasicCombineMenuBean.java"


# instance fields
.field id:Ljava/lang/String;

.field title:Ljava/lang/String;

.field value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/cnlaunch/diagnosemodule/bean/BasicBean;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/cnlaunch/diagnosemodule/bean/BasicCombineMenuBean;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/cnlaunch/diagnosemodule/bean/BasicCombineMenuBean;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/cnlaunch/diagnosemodule/bean/BasicCombineMenuBean;->value:Ljava/lang/String;

    return-object v0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 22
    iput-object p1, p0, Lcom/cnlaunch/diagnosemodule/bean/BasicCombineMenuBean;->id:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/cnlaunch/diagnosemodule/bean/BasicCombineMenuBean;->title:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/cnlaunch/diagnosemodule/bean/BasicCombineMenuBean;->value:Ljava/lang/String;

    .line 39
    return-void
.end method
