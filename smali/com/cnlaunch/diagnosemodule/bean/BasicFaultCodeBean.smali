.class public Lcom/cnlaunch/diagnosemodule/bean/BasicFaultCodeBean;
.super Lcom/cnlaunch/diagnosemodule/bean/BasicBean;
.source "BasicFaultCodeBean.java"


# static fields
.field private static final serialVersionUID:J = 0x692ad1e05e5b15c7L


# instance fields
.field context:Ljava/lang/String;

.field help:Ljava/lang/String;

.field id:Ljava/lang/String;

.field isFaultCode:Z

.field status:Ljava/lang/String;

.field title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3
    invoke-direct {p0}, Lcom/cnlaunch/diagnosemodule/bean/BasicBean;-><init>()V

    .line 11
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cnlaunch/diagnosemodule/bean/BasicFaultCodeBean;->isFaultCode:Z

    .line 3
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v3, 0x0

    .line 64
    :try_start_0
    instance-of v2, p1, Lcom/cnlaunch/diagnosemodule/bean/BasicFaultCodeBean;

    if-eqz v2, :cond_5

    .line 65
    move-object v0, p1

    check-cast v0, Lcom/cnlaunch/diagnosemodule/bean/BasicFaultCodeBean;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/cnlaunch/diagnosemodule/bean/BasicFaultCodeBean;->getId()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/cnlaunch/diagnosemodule/bean/BasicFaultCodeBean;->id:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v3

    .line 86
    .end local p1
    :goto_0
    return v2

    .line 68
    .restart local p1
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/cnlaunch/diagnosemodule/bean/BasicFaultCodeBean;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/cnlaunch/diagnosemodule/bean/BasicFaultCodeBean;->getTitle()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/cnlaunch/diagnosemodule/bean/BasicFaultCodeBean;->title:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    move v2, v3

    .line 69
    goto :goto_0

    .line 71
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/cnlaunch/diagnosemodule/bean/BasicFaultCodeBean;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/cnlaunch/diagnosemodule/bean/BasicFaultCodeBean;->getContext()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/cnlaunch/diagnosemodule/bean/BasicFaultCodeBean;->context:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    move v2, v3

    .line 72
    goto :goto_0

    .line 74
    :cond_2
    move-object v0, p1

    check-cast v0, Lcom/cnlaunch/diagnosemodule/bean/BasicFaultCodeBean;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/cnlaunch/diagnosemodule/bean/BasicFaultCodeBean;->getStatus()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/cnlaunch/diagnosemodule/bean/BasicFaultCodeBean;->status:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    move v2, v3

    .line 75
    goto :goto_0

    .line 77
    :cond_3
    check-cast p1, Lcom/cnlaunch/diagnosemodule/bean/BasicFaultCodeBean;

    .end local p1
    invoke-virtual {p1}, Lcom/cnlaunch/diagnosemodule/bean/BasicFaultCodeBean;->getHelp()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/cnlaunch/diagnosemodule/bean/BasicFaultCodeBean;->help:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_4

    move v2, v3

    .line 78
    goto :goto_0

    .line 80
    :cond_4
    const/4 v2, 0x1

    goto :goto_0

    .restart local p1
    :cond_5
    move v2, v3

    .line 82
    goto :goto_0

    .line 84
    .end local p1
    :catch_0
    move-exception v1

    .line 85
    .local v1, e:Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    move v2, v3

    .line 86
    goto :goto_0
.end method

.method public getContext()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/cnlaunch/diagnosemodule/bean/BasicFaultCodeBean;->context:Ljava/lang/String;

    return-object v0
.end method

.method public getHelp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/cnlaunch/diagnosemodule/bean/BasicFaultCodeBean;->help:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/cnlaunch/diagnosemodule/bean/BasicFaultCodeBean;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/cnlaunch/diagnosemodule/bean/BasicFaultCodeBean;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/cnlaunch/diagnosemodule/bean/BasicFaultCodeBean;->title:Ljava/lang/String;

    return-object v0
.end method

.method public isFaultCode()Z
    .locals 1

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/cnlaunch/diagnosemodule/bean/BasicFaultCodeBean;->isFaultCode:Z

    return v0
.end method

.method public setContext(Ljava/lang/String;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 34
    iput-object p1, p0, Lcom/cnlaunch/diagnosemodule/bean/BasicFaultCodeBean;->context:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setFaultCode(Z)V
    .locals 0
    .parameter "isFaultCode"

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/cnlaunch/diagnosemodule/bean/BasicFaultCodeBean;->isFaultCode:Z

    .line 51
    return-void
.end method

.method public setHelp(Ljava/lang/String;)V
    .locals 0
    .parameter "help"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/cnlaunch/diagnosemodule/bean/BasicFaultCodeBean;->help:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 18
    iput-object p1, p0, Lcom/cnlaunch/diagnosemodule/bean/BasicFaultCodeBean;->id:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0
    .parameter "status"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/cnlaunch/diagnosemodule/bean/BasicFaultCodeBean;->status:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 26
    iput-object p1, p0, Lcom/cnlaunch/diagnosemodule/bean/BasicFaultCodeBean;->title:Ljava/lang/String;

    .line 27
    return-void
.end method
