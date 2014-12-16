.class public Lcom/cnlaunch/diagnosemodule/bean/BasicSelectMenuBean;
.super Lcom/cnlaunch/diagnosemodule/bean/BasicBean;
.source "BasicSelectMenuBean.java"


# static fields
.field private static final serialVersionUID:J = 0x34750bfce6f1454eL


# instance fields
.field check:Z

.field id:Ljava/lang/String;

.field num:I

.field title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 3
    invoke-direct {p0}, Lcom/cnlaunch/diagnosemodule/bean/BasicBean;-><init>()V

    .line 6
    iput v0, p0, Lcom/cnlaunch/diagnosemodule/bean/BasicSelectMenuBean;->num:I

    .line 17
    iput-boolean v0, p0, Lcom/cnlaunch/diagnosemodule/bean/BasicSelectMenuBean;->check:Z

    .line 3
    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/cnlaunch/diagnosemodule/bean/BasicSelectMenuBean;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getNum()I
    .locals 1

    .prologue
    .line 8
    iget v0, p0, Lcom/cnlaunch/diagnosemodule/bean/BasicSelectMenuBean;->num:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/cnlaunch/diagnosemodule/bean/BasicSelectMenuBean;->title:Ljava/lang/String;

    return-object v0
.end method

.method public isCheck()Z
    .locals 1

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/cnlaunch/diagnosemodule/bean/BasicSelectMenuBean;->check:Z

    return v0
.end method

.method public setCheck(Z)V
    .locals 0
    .parameter "check"

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/cnlaunch/diagnosemodule/bean/BasicSelectMenuBean;->check:Z

    .line 41
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 24
    iput-object p1, p0, Lcom/cnlaunch/diagnosemodule/bean/BasicSelectMenuBean;->id:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public setNum(I)V
    .locals 0
    .parameter "num"

    .prologue
    .line 12
    iput p1, p0, Lcom/cnlaunch/diagnosemodule/bean/BasicSelectMenuBean;->num:I

    .line 13
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/cnlaunch/diagnosemodule/bean/BasicSelectMenuBean;->title:Ljava/lang/String;

    .line 33
    return-void
.end method
